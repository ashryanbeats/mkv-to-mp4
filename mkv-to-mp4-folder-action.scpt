FasdUAS 1.101.10   ��   ��    k             i         I     �� 	 

�� .facofgetnull���     alis 	 o      ���� 0 this_folder   
 �� ��
�� 
flst  o      ���� 0 added_items  ��    k     �       r         m        �   F / U s e r s / a s h / S c r i p t s / m k v - t o - m p 4 / l o g s /  o      ���� 0 logdir logDir      r    	    b        o    ���� 0 logdir logDir  m       �   : a p p l e s c r i p t _ f o l d e r _ a c t i o n . l o g  o      ���� 0 logfile logFile      l  
 
��������  ��  ��        l  
 
��   ��    "  Ensure log directory exists      � ! ! 8   E n s u r e   l o g   d i r e c t o r y   e x i s t s   " # " I  
 �� $��
�� .sysoexecTEXT���     TEXT $ b   
  % & % m   
  ' ' � ( (  m k d i r   - p   & n     ) * ) 1    ��
�� 
strq * o    ���� 0 logdir logDir��   #  + , + l   ��������  ��  ��   ,  -�� - X    � .�� / . k   $ � 0 0  1 2 1 r   $ ) 3 4 3 n   $ ' 5 6 5 1   % '��
�� 
psxp 6 o   $ %���� 0 	this_item   4 o      ���� 0 	item_path   2  7 8 7 l  * *��������  ��  ��   8  9 : 9 l  * *�� ; <��   ;   Only process MKV files    < � = = .   O n l y   p r o c e s s   M K V   f i l e s :  >�� > Z   * � ? @�� A ? D   * - B C B o   * +���� 0 	item_path   C m   + , D D � E E  . m k v @ k   0 � F F  G H G n  0 9 I J I I   1 9�� K���� 0 	logtofile 	logToFile K  L M L b   1 4 N O N m   1 2 P P � Q Q " P r o c e s s i n g   f i l e :   O o   2 3���� 0 	item_path   M  R�� R o   4 5���� 0 logfile logFile��  ��   J  f   0 1 H  S T S l  : :��������  ��  ��   T  U V U l  : :�� W X��   W C = Use the full path to Node.js and the correct script location    X � Y Y z   U s e   t h e   f u l l   p a t h   t o   N o d e . j s   a n d   t h e   c o r r e c t   s c r i p t   l o c a t i o n V  Z [ Z r   : A \ ] \ b   : ? ^ _ ^ m   : ; ` ` � a a l / U s e r s / a s h / n / b i n / n o d e   ~ / S c r i p t s / m k v - t o - m p 4 / c o n v e r t . j s   _ n   ; > b c b 1   < >��
�� 
strq c o   ; <���� 0 	item_path   ] o      ���� 0 nodecommand nodeCommand [  d e d n  B K f g f I   C K�� h���� 0 	logtofile 	logToFile h  i j i b   C F k l k m   C D m m � n n & E x e c u t i n g   c o m m a n d :   l o   D E���� 0 nodecommand nodeCommand j  o�� o o   F G���� 0 logfile logFile��  ��   g  f   B C e  p q p l  L L��������  ��  ��   q  r s r l  L L�� t u��   t 8 2 Trigger the Node.js script and capture its output    u � v v d   T r i g g e r   t h e   N o d e . j s   s c r i p t   a n d   c a p t u r e   i t s   o u t p u t s  w�� w Q   L � x y z x k   O � { {  | } | r   O V ~  ~ I  O T�� ���
�� .sysoexecTEXT���     TEXT � o   O P���� 0 nodecommand nodeCommand��    o      ���� $0 conversionresult conversionResult }  � � � n  W ` � � � I   X `�� ����� 0 	logtofile 	logToFile �  � � � b   X [ � � � m   X Y � � � � � & C o n v e r s i o n   r e s u l t :   � o   Y Z���� $0 conversionresult conversionResult �  ��� � o   [ \���� 0 logfile logFile��  ��   �  f   W X �  � � � l  a a��������  ��  ��   �  � � � l  a a�� � ���   � - ' Parse the result and send notification    � � � � N   P a r s e   t h e   r e s u l t   a n d   s e n d   n o t i f i c a t i o n �  � � � r   a } � � � n  a g � � � I   b g�� ����� 0 parseresult parseResult �  ��� � o   b c���� $0 conversionresult conversionResult��  ��   �  f   a b � J       � �  � � � o      ���� 
0 status   �  � � � o      ���� 0 dirname dirName �  ��� � o      ���� 0 
newmkvpath 
newMkvPath��   �  � � � n  ~ � � � � I    ��� ����� $0 sendnotification sendNotification �  � � � o    ����� 
0 status   �  ��� � o   � ����� 0 dirname dirName��  ��   �  f   ~  �  � � � l  � ���������  ��  ��   �  � � � l  � ��� � ���   � + % Add tag if conversion was successful    � � � � J   A d d   t a g   i f   c o n v e r s i o n   w a s   s u c c e s s f u l �  ��� � Z   � � � ����� � =  � � � � � o   � ����� 
0 status   � m   � � � � � � �  S U C C E S S � n  � � � � � I   � ��� ����� "0 addconvertedtag addConvertedTag �  � � � o   � ����� 0 
newmkvpath 
newMkvPath �  � � � o   � ����� 0 dirname dirName �  ��� � o   � ����� 0 logfile logFile��  ��   �  f   � ���  ��  ��   y R      �� ���
�� .ascrerr ****      � **** � o      ���� 0 errmsg errMsg��   z k   � � � �  � � � n  � � � � � I   � ��� ����� 0 	logtofile 	logToFile �  � � � b   � � � � � m   � � � � � � � @ E r r o r   e x e c u t i n g   N o d e . j s   s c r i p t :   � o   � ����� 0 errmsg errMsg �  ��� � o   � ����� 0 logfile logFile��  ��   �  f   � � �  ��� � n  � � � � � I   � ��� ����� $0 sendnotification sendNotification �  � � � m   � � � � � � � 
 E R R O R �  ��� � I  � ��� � �
�� .earsffdralis        afdr � 4   � ��� �
�� 
psxf � o   � ����� 0 	item_path   � �� ���
�� 
rtyp � m   � ���
�� 
ctxt��  ��  ��   �  f   � ���  ��  ��   A n  � � � � � I   � ��� ����� 0 	logtofile 	logToFile �  � � � b   � � � � � m   � � � � � � � . S k i p p i n g   n o n - M K V   f i l e :   � o   � ����� 0 	item_path   �  ��� � o   � ����� 0 logfile logFile��  ��   �  f   � ���  �� 0 	this_item   / o    ���� 0 added_items  ��     � � � l     ��������  ��  ��   �  � � � i     � � � I      �� ����� 0 	logtofile 	logToFile �  � � � o      ���� 0 message   �  ��� � o      ���� 0 logfile logFile��  ��   � Q     # � ��� � I   �� ��
�� .sysoexecTEXT���     TEXT � b     � � � b     � � � b     � � � m     � � � � � 
 e c h o   � n     � � � 1    �~
�~ 
strq � l    ��}�| � b     � � � b     �  � l   	�{�z I   	�y�x
�y .sysoexecTEXT���     TEXT m     � 2 d a t e   + ' % Y - % m - % d   % H : % M : % S '�x  �{  �z    m   	 
 �    -   � o    �w�w 0 message  �}  �|   � m     �    > >   � n    	
	 1    �v
�v 
strq
 o    �u�u 0 logfile logFile�   � R      �t�s�r
�t .ascrerr ****      � ****�s  �r  ��   �  l     �q�p�o�q  �p  �o    i     I      �n�m�n 0 parseresult parseResult �l 1      �k
�k 
rslt�l  �m   k     z  n    	 I    	�j�i�j 0 	logtofile 	logToFile  b     m     �   P a r s i n g   r e s u l t :   1    �h
�h 
rslt �g m       �!! � / U s e r s / a s h / S c r i p t s / m k v - t o - m p 4 / l o g s / a p p l e s c r i p t _ f o l d e r _ a c t i o n . l o g�g  �i    f      "�f" Z   
 z#$%&# E   
 '(' 1   
 �e
�e 
rslt( m    )) �**  S U C C E S S :$ k    0++ ,-, r    ./. m    00 �11  :/ n     232 1    �d
�d 
txdl3 1    �c
�c 
ascr- 454 r    676 n    898 2   �b
�b 
citm9 1    �a
�a 
rslt7 o      �`�` 0 resultitems resultItems5 :;: r    "<=< n     >?> 4     �_@
�_ 
cobj@ m    �^�^ ? o    �]�] 0 resultitems resultItems= o      �\�\ 0 dirname dirName; ABA r   # )CDC n   # 'EFE 4   $ '�[G
�[ 
cobjG m   % &�Z�Z F o   # $�Y�Y 0 resultitems resultItemsD o      �X�X 0 
newmkvpath 
newMkvPathB H�WH L   * 0II J   * /JJ KLK m   * +MM �NN  S U C C E S SL OPO o   + ,�V�V 0 dirname dirNameP Q�UQ o   , -�T�T 0 
newmkvpath 
newMkvPath�U  �W  % RSR E   3 6TUT 1   3 4�S
�S 
rsltU m   4 5VV �WW  E R R O R :S XYX k   9 LZZ [\[ r   9 >]^] m   9 :__ �``  E R R O R :^ n     aba 1   ; =�R
�R 
txdlb 1   : ;�Q
�Q 
ascr\ cdc r   ? Eefe n   ? Cghg 4   @ C�Pi
�P 
citmi m   A B�O�O h 1   ? @�N
�N 
rsltf o      �M�M 0 filename fileNamed j�Lj L   F Lkk J   F Kll mnm m   F Goo �pp 
 E R R O Rn qrq o   G H�K�K 0 filename fileNamer s�Js m   H Itt �uu  �J  �L  Y vwv E   O Rxyx 1   O P�I
�I 
rslty m   P Qzz �{{ 
 S K I P :w |�H| k   U l}} ~~ r   U Z��� m   U V�� ��� 
 S K I P :� n     ��� 1   W Y�G
�G 
txdl� 1   V W�F
�F 
ascr ��� r   [ a��� n   [ _��� 4   \ _�E�
�E 
citm� m   ] ^�D�D � 1   [ \�C
�C 
rslt� o      �B�B 0 filename fileName� ��A� L   b l�� J   b k�� ��� m   b e�� ���  S K I P� ��� o   e f�@�@ 0 filename fileName� ��?� m   f i�� ���  �?  �A  �H  & L   o z�� J   o y�� ��� m   o r�� ���  U N K N O W N� ��� 1   r t�>
�> 
rslt� ��=� m   t w�� ���  �=  �f   ��� l     �<�;�:�<  �;  �:  � ��� i    ��� I      �9��8�9 $0 sendnotification sendNotification� ��� o      �7�7 
0 status  � ��6� o      �5�5 0 dirname dirName�6  �8  � k     G�� ��� r     ��� m     �� ���  M K V   C o n v e r s i o n� o      �4�4 &0 notificationtitle notificationTitle� ��� r    	��� b    ��� m    �� ���  C o n v e r s i o n  � o    �3�3 
0 status  � o      �2�2 ,0 notificationsubtitle notificationSubtitle� ��� r   
 ��� m   
 �� ���  � o      �1�1 $0 notificationbody notificationBody� ��� l   �0�/�.�0  �/  �.  � ��� Z    =����� =   ��� o    �-�- 
0 status  � m    �� ���  S U C C E S S� r    ��� b    ��� m    �� ��� P S u c c e s s f u l l y   c o n v e r t e d   a n d   o r g a n i z e d   i n  � o    �,�, 0 dirname dirName� o      �+�+ $0 notificationbody notificationBody� ��� =   ��� o    �*�* 
0 status  � m    �� ��� 
 E R R O R� ��� r   " '��� b   " %��� m   " #�� ��� $ F a i l e d   t o   c o n v e r t  � o   # $�)�) 0 dirname dirName� o      �(�( $0 notificationbody notificationBody� ��� =  * -��� o   * +�'�' 
0 status  � m   + ,�� ���  S K I P� ��&� r   0 5��� b   0 3��� o   0 1�%�% 0 dirname dirName� m   1 2�� ��� &   i s   n o t   a n   m k v   f i l e� o      �$�$ $0 notificationbody notificationBody�&  � r   8 =��� b   8 ;��� m   8 9�� ���   U n k n o w n   s t a t u s :  � o   9 :�#�# 0 dirname dirName� o      �"�" $0 notificationbody notificationBody� ��� l  > >�!� ��!  �   �  � ��� I  > G���
� .sysonotfnull��� ��� TEXT� o   > ?�� $0 notificationbody notificationBody� ���
� 
appr� o   @ A�� &0 notificationtitle notificationTitle� ���
� 
subt� o   B C�� ,0 notificationsubtitle notificationSubtitle�  �  � ��� l     ����  �  �  �  �  i     I      ��� "0 addconvertedtag addConvertedTag  o      �� 0 
newmkvpath 
newMkvPath  o      �� 0 dirname dirName � o      �� 0 logfile logFile�  �   Q     /	
	 k      r    
 b     m     �� x a t t r   - w   c o m . a p p l e . m e t a d a t a : _ k M D I t e m U s e r T a g s   ' < ! D O C T Y P E   p l i s t   P U B L I C   " - / / A p p l e / / D T D   P L I S T   1 . 0 / / E N "   " h t t p : / / w w w . a p p l e . c o m / D T D s / P r o p e r t y L i s t - 1 . 0 . d t d " > < p l i s t   v e r s i o n = " 1 . 0 " > < a r r a y > < s t r i n g > C o n v e r t e d < / s t r i n g > < / a r r a y > < / p l i s t > '   n     1    �
� 
strq o    �� 0 
newmkvpath 
newMkvPath o      �
�
 0 
tagcommand 
tagCommand  I   �	�
�	 .sysoexecTEXT���     TEXT o    �� 0 
tagcommand 
tagCommand�   � n    I    ��� 0 	logtofile 	logToFile  b     !  m    "" �## L S u c c e s s f u l l y   a d d e d   ' C o n v e r t e d '   t a g   t o  ! o    �� 0 
newmkvpath 
newMkvPath $�$ o    �� 0 logfile logFile�  �    f    �  
 R      � %��
�  .ascrerr ****      � ****% o      ���� 0 errmsg errMsg��   n  " /&'& I   # /��(���� 0 	logtofile 	logToFile( )*) b   # *+,+ b   # (-.- b   # &/0/ m   # $11 �22 * F a i l e d   t o   a d d   t a g   t o  0 o   $ %���� 0 
newmkvpath 
newMkvPath. m   & '33 �44  :  , o   ( )���� 0 errmsg errMsg* 5��5 o   * +���� 0 logfile logFile��  ��  '  f   " #�       ��6789:;��  6 ����������
�� .facofgetnull���     alis�� 0 	logtofile 	logToFile�� 0 parseresult parseResult�� $0 sendnotification sendNotification�� "0 addconvertedtag addConvertedTag7 �� ����<=��
�� .facofgetnull���     alis�� 0 this_folder  �� ������
�� 
flst�� 0 added_items  ��  < �������������������������� 0 this_folder  �� 0 added_items  �� 0 logdir logDir�� 0 logfile logFile�� 0 	this_item  �� 0 	item_path  �� 0 nodecommand nodeCommand�� $0 conversionresult conversionResult�� 
0 status  �� 0 dirname dirName�� 0 
newmkvpath 
newMkvPath�� 0 errmsg errMsg=    '������������ D P�� ` m ����� ������� � ��������� �
�� 
strq
�� .sysoexecTEXT���     TEXT
�� 
kocl
�� 
cobj
�� .corecnte****       ****
�� 
psxp�� 0 	logtofile 	logToFile�� 0 parseresult parseResult�� $0 sendnotification sendNotification�� "0 addconvertedtag addConvertedTag�� 0 errmsg errMsg��  
�� 
psxf
�� 
rtyp
�� 
ctxt
�� .earsffdralis        afdr�� ��E�O��%E�O��,%j O ġ[��l kh ��,E�O�� �)�%�l+ O��,%E�O)��%�l+ O P�j E�O)�%�l+ O)�k+ E[�k/E�Z[�l/E�Z[�m/E�ZO)��l+ O�a   )���m+ Y hW +X  )a �%�l+ O)a *a �/a a l l+ Y )a �%�l+ [OY�J8 �� �����>?���� 0 	logtofile 	logToFile�� ��@�� @  ������ 0 message  �� 0 logfile logFile��  > ������ 0 message  �� 0 logfile logFile?  ���������
�� .sysoexecTEXT���     TEXT
�� 
strq��  ��  �� $ ��j �%�%�,%�%��,%j W X  h9 ������AB���� 0 parseresult parseResult�� ��C�� C  ��
�� 
rslt��  A ����������
�� 
rslt�� 0 resultitems resultItems�� 0 dirname dirName�� 0 
newmkvpath 
newMkvPath�� 0 filename fileNameB  ��)0��������MV_otz������� 0 	logtofile 	logToFile
�� 
ascr
�� 
txdl
�� 
citm
�� 
cobj�� {)�%�l+ O�� %���,FO��-E�O��l/E�O��m/E�O颣mvY I�� ���,FO��l/E�O��mvY -�� ���,FO��l/E�Oa �a mvY a �Ea mv: �������DE���� $0 sendnotification sendNotification�� ��F�� F  ������ 
0 status  �� 0 dirname dirName��  D ������������ 
0 status  �� 0 dirname dirName�� &0 notificationtitle notificationTitle�� ,0 notificationsubtitle notificationSubtitle�� $0 notificationbody notificationBodyE ������������������
�� 
appr
�� 
subt�� 
�� .sysonotfnull��� ��� TEXT�� H�E�O�%E�O�E�O��  
�%E�Y #��  
�%E�Y ��  
��%E�Y �%E�O���� ; ������GH���� "0 addconvertedtag addConvertedTag�� ��I�� I  �������� 0 
newmkvpath 
newMkvPath�� 0 dirname dirName�� 0 logfile logFile��  G ������������ 0 
newmkvpath 
newMkvPath�� 0 dirname dirName�� 0 logfile logFile�� 0 
tagcommand 
tagCommand�� 0 errmsg errMsgH 	����"������13
�� 
strq
�� .sysoexecTEXT���     TEXT�� 0 	logtofile 	logToFile�� 0 errmsg errMsg��  �� 0 ��,%E�O�j O)�%�l+ W X  )�%�%�%�l+ ascr  ��ޭ