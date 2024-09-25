import { exec } from "child_process";
import { promises as fs } from "fs";
import path from "path";

const LOG_DIR = "/Users/ash/Scripts/mkv-to-mp4/logs/";
const LOG_FILE = path.join(LOG_DIR, "nodejs_conversion.log");
const FFMPEG = "/opt/homebrew/bin/ffmpeg";

async function ensureLogDir() {
  try {
    await fs.mkdir(LOG_DIR, { recursive: true });
  } catch (error) {
    console.error(`Failed to create log directory: ${error.message}`);
  }
}

async function log(message) {
  await ensureLogDir();
  const timestamp = new Date().toISOString();
  await fs.appendFile(LOG_FILE, `${timestamp} - ${message}\n`);
}

async function createDirectoryForFile(inputFile) {
  const filename = path.basename(inputFile, ".mkv");
  const dirName = filename.split(" ")[0]; // Use the date part as directory name
  const newDir = path.join(process.env.HOME, "Movies", dirName);

  await fs.mkdir(newDir, { recursive: true });
  return newDir;
}

async function moveFile(oldPath, newPath) {
  try {
    await fs.rename(oldPath, newPath);
    await log(`Moved ${oldPath} to ${newPath}`);
  } catch (error) {
    await log(`Error moving file: ${error.message}`);
    throw error;
  }
}

async function convertMkvToMp4(inputFile) {
  const filename = path.basename(inputFile);
  const newDir = await createDirectoryForFile(inputFile);
  const outputFile = path.join(newDir, filename.replace(".mkv", ".mp4"));
  const newMkvPath = path.join(newDir, filename);

  await log(`Starting conversion: ${inputFile} to ${outputFile}`);

  return new Promise((resolve, reject) => {
    exec(
      `"${FFMPEG}" -i "${inputFile}" -codec copy "${outputFile}"`,
      async (error, stdout, stderr) => {
        if (error) {
          await log(`Error: Failed to convert ${inputFile}`);
          await log(`Error details: ${stderr}`);
          reject(new Error(`Conversion failed: ${error.message}`));
        } else {
          await log(`Successfully converted ${inputFile} to ${outputFile}`);

          // Move the original MKV file
          await moveFile(inputFile, newMkvPath);

          resolve({ newDir, newMkvPath });
        }
      }
    );
  });
}

async function main() {
  const inputFile = process.argv[2];

  if (!inputFile) {
    console.log("ERROR:No input file provided");
    await log("Error: No input file provided");
    process.exit(1);
  }

  await log(`Script triggered for file: ${inputFile}`);

  if (path.extname(inputFile).toLowerCase() !== ".mkv") {
    await log(`${inputFile} is not an mkv file. Skipping.`);
    console.log(`SKIP:${path.basename(inputFile)}`);
    process.exit(0);
  }

  try {
    const { newDir, newMkvPath } = await convertMkvToMp4(inputFile);
    console.log(`SUCCESS:${path.basename(newDir)}:${newMkvPath}`);
    process.exit(0);
  } catch (error) {
    console.log(`ERROR:${path.basename(inputFile)}`);
    await log(`Error: ${error.message}`);
    process.exit(1);
  }
}

main().catch(async (error) => {
  await log(`Unhandled error: ${error.message}`);
  console.log(`ERROR:Unhandled exception`);
  process.exit(1);
});
