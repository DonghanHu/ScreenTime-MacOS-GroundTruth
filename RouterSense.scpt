FasdUAS 1.101.10   ��   ��    k             l     ��  ��    : 4 Define the desired directory inside the home folder     � 	 	 h   D e f i n e   t h e   d e s i r e d   d i r e c t o r y   i n s i d e   t h e   h o m e   f o l d e r   
  
 l    	 ����  r     	    l     ����  I    ��  
�� .earsffdralis        afdr  m     ��
�� afdrcusr  �� ��
�� 
rtyp  m    ��
�� 
ctxt��  ��  ��    o      ���� 0 homedir homeDir��  ��        l  
  ����  r   
     b   
     o   
 ���� 0 homedir homeDir  m       �    R o u t e r S e n s e  o      ���� 0 targetfolder targetFolder��  ��        l    ����  r         b     ! " ! o    ���� 0 targetfolder targetFolder " m     # # � $ $ $ : p a r t i c i p a n t i d . t x t   o      ���� "0 participantfile participantFile��  ��     % & % l    '���� ' r     ( ) ( b     * + * o    ���� 0 targetfolder targetFolder + m     , , � - -  : s e t u p . b a s h ) o      ����  0 bashscriptfile bashScriptFile��  ��   &  . / . l    0 1 2 0 r     3 4 3 m     5 5 � 6 6 J h t t p s : / / g i t h u b . c o m / e x a m p l e / s e t u p . b a s h 4 o      ���� 0 	githuburl 	githubURL 1   Replace with actual URL    2 � 7 7 0   R e p l a c e   w i t h   a c t u a l   U R L /  8 9 8 l    % :���� : r     % ; < ; b     # = > = o     !���� 0 targetfolder targetFolder > m   ! " ? ? � @ @  : s e t u p . l o g < o      ���� 0 logfile logFile��  ��   9  A B A l     ��������  ��  ��   B  C D C l     �� E F��   E A ; Step 1: Create the RouterSense folder if it does not exist    F � G G v   S t e p   1 :   C r e a t e   t h e   R o u t e r S e n s e   f o l d e r   i f   i t   d o e s   n o t   e x i s t D  H I H l  & Y J���� J O   & Y K L K Z   * X M N���� M H   * 5 O O l  * 4 P���� P I  * 4�� Q��
�� .coredoexnull���     obj  Q 4   * 0�� R
�� 
cfol R o   . /���� 0 targetfolder targetFolder��  ��  ��   N I  8 T���� S
�� .corecrel****      � null��   S �� T U
�� 
kocl T m   < ?��
�� 
cfol U �� V W
�� 
insh V o   B C���� 0 homedir homeDir W �� X��
�� 
prdt X K   F N Y Y �� Z��
�� 
pnam Z m   I L [ [ � \ \  R o u t e r S e n s e��  ��  ��  ��   L m   & ' ] ]�                                                                                  MACS  alis    @  Macintosh HD               �_JBD ����
Finder.app                                                     �����_J        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   I  ^ _ ^ l     ��������  ��  ��   _  ` a ` l     �� b c��   b ? 9 Step 2: Check for participantid.txt, prompt if necessary    c � d d r   S t e p   2 :   C h e c k   f o r   p a r t i c i p a n t i d . t x t ,   p r o m p t   i f   n e c e s s a r y a  e f e l  Z a g���� g r   Z a h i h m   Z ] j j � k k   i o      ���� 0 participantid participantID��  ��   f  l m l l  b � n���� n O   b � o p o Z   f � q r�� s q H   f q t t l  f p u���� u I  f p�� v��
�� .coredoexnull���     obj  v 4   f l�� w
�� 
file w o   j k���� "0 participantfile participantFile��  ��  ��   r k   t � x x  y z y r   t � { | { n   t � } ~ } 1   � ���
�� 
ttxt ~ l  t � ����  I  t ��� � �
�� .sysodlogaskr        TEXT � m   t w � � � � � * E n t e r   P a r t i c i p a n t   I D : � �� ���
�� 
dtxt � m   z } � � � � �  ��  ��  ��   | o      ���� 0 participantid participantID z  ��� � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � � 
 e c h o   � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 participantid participantID � m   � � � � � � �    >   � n   � � � � � 1   � ���
�� 
strq � n   � � � � � 1   � ���
�� 
psxp � o   � ����� "0 participantfile participantFile��  ��  ��   s r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � m   � � � � � � �  c a t   � n   � � � � � 1   � ���
�� 
strq � n   � � � � � 1   � ���
�� 
psxp � o   � ����� "0 participantfile participantFile��   � o      ���� 0 participantid participantID p m   b c � ��                                                                                  MACS  alis    @  Macintosh HD               �_JBD ����
Finder.app                                                     �����_J        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   m  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � 6 0 Step 3: Download setup.bash if it doesn't exist    � � � � `   S t e p   3 :   D o w n l o a d   s e t u p . b a s h   i f   i t   d o e s n ' t   e x i s t �  � � � l  �$ ����� � O   �$ � � � Z   �# � ����� � H   � � � � l  � � ����� � I  � ��� ���
�� .coredoexnull���     obj  � 4   � ��� �
�� 
file � o   � �����  0 bashscriptfile bashScriptFile��  ��  ��   � k   � � �  � � � r   � � � � � I  � ��� ���
�� .sysoexecTEXT���     TEXT � b   � � � � � b   � � � � � b   � � � � � b   � � � � � m   � � � � � � �  c u r l   - f   - o   � n   � � � � � 1   � ���
�� 
strq � n   � � � � � 1   � ���
�� 
psxp � o   � �����  0 bashscriptfile bashScriptFile � m   � � � � � � �    � n   � � � � � 1   � ���
�� 
strq � o   � ����� 0 	githuburl 	githubURL � m   � � � � � � � *   2 > & 1   | |   e c h o   ' E R R O R '��   � o      ����  0 downloadresult downloadResult �  ��� � Z   � � ����� � =  � � � � � o   � �����  0 downloadresult downloadResult � m   � � � � � � � 
 E R R O R � k   � �  � � � I �� � �
�� .sysodlogaskr        TEXT � m   � � � � � � G i t H u b   U R L   i s   u n a v a i l a b l e .   P l e a s e   d o u b l e - c h e c k   t h e   l i n k   a n d   t r y   a g a i n . � �� � �
�� 
btns � J   � �  ��� � m  
 � � � � �  O K��   � �� ���
�� 
dflt � m   � � � � �  O K��   �  ��� � l  � � � � L  ����   � $  Exit script if download fails    � � � � <   E x i t   s c r i p t   i f   d o w n l o a d   f a i l s��  ��  ��  ��  ��  ��   � m   � � � ��                                                                                  MACS  alis    @  Macintosh HD               �_JBD ����
Finder.app                                                     �����_J        ����  
 cu             CoreServices  )/:System:Library:CoreServices:Finder.app/    
 F i n d e r . a p p    M a c i n t o s h   H D  &System/Library/CoreServices/Finder.app  / ��  ��  ��   �  � � � l     ��������  ��  ��   �  � � � l     �� � ���   � ) # Step 4: Make setup.bash executable    � � � � F   S t e p   4 :   M a k e   s e t u p . b a s h   e x e c u t a b l e �  � � � l %6 ���� � I %6�~ ��}
�~ .sysoexecTEXT���     TEXT � b  %2 � � � m  %( � � � � �  c h m o d   + x   � n  (1 � � � 1  -1�|
�| 
strq � n  (- �  � 1  )-�{
�{ 
psxp  o  ()�z�z  0 bashscriptfile bashScriptFile�}  ��  �   �  l     �y�x�w�y  �x  �w    l     �v�v   > 8 Step 5: Run setup.bash in the background and log output    � p   S t e p   5 :   R u n   s e t u p . b a s h   i n   t h e   b a c k g r o u n d   a n d   l o g   o u t p u t 	 l 7V
�u�t
 I 7V�s�r
�s .sysoexecTEXT���     TEXT b  7R b  7N b  7D n  7@ 1  <@�q
�q 
strq n  7< 1  8<�p
�p 
psxp o  78�o�o  0 bashscriptfile bashScriptFile m  @C �    >   n  DM 1  IM�n
�n 
strq n  DI 1  EI�m
�m 
psxp o  DE�l�l 0 logfile logFile m  NQ �    2 > & 1   &�r  �u  �t  	  l     �k�j�i�k  �j  �i    !  l     �h"#�h  " 5 / Step 6: Display a dialog that stays responsive   # �$$ ^   S t e p   6 :   D i s p l a y   a   d i a l o g   t h a t   s t a y s   r e s p o n s i v e! %&% l W�'�g�f' T  W�(( k  \�)) *+* r  \z,-, I \v�e./
�e .sysodlogaskr        TEXT. m  \_00 �11 � S e t u p   i s   r u n n i n g   i n   t h e   b a c k g r o u n d .   D o   y o u   w a n t   t o   q u i t   t h e   s e t u p   p r o c e s s ?/ �d23
�d 
btns2 J  bj44 565 m  be77 �88  Q u i t6 9�c9 m  eh:: �;;  K e e p   R u n n i n g�c  3 �b<�a
�b 
dflt< m  mp== �>>  K e e p   R u n n i n g�a  - o      �`�` 0 userresponse userResponse+ ?@? l {{�_�^�]�_  �^  �]  @ A�\A Z  {�BC�[�ZB = {�DED n  {�FGF 1  ~��Y
�Y 
bhitG o  {~�X�X 0 userresponse userResponseE m  ��HH �II  Q u i tC k  ��JJ KLK I ���WM�V
�W .sysoexecTEXT���     TEXTM b  ��NON m  ��PP �QQ  p k i l l   - f  O n  ��RSR 1  ���U
�U 
strqS n  ��TUT 1  ���T
�T 
psxpU o  ���S�S  0 bashscriptfile bashScriptFile�V  L VWV I ���RXY
�R .sysodlogaskr        TEXTX m  ��ZZ �[[ 2 S e t u p   p r o c e s s   t e r m i n a t e d .Y �Q\]
�Q 
btns\ J  ��^^ _�P_ m  ��`` �aa  O K�P  ] �Ob�N
�O 
dfltb m  ��cc �dd  O K�N  W e�Me  S  ���M  �[  �Z  �\  �g  �f  & f�Lf l     �K�J�I�K  �J  �I  �L       �Hghijkl 5mno�G�F�E�D�C�B�A�H  g �@�?�>�=�<�;�:�9�8�7�6�5�4�3�2�1
�@ .aevtoappnull  �   � ****�? 0 homedir homeDir�> 0 targetfolder targetFolder�= "0 participantfile participantFile�<  0 bashscriptfile bashScriptFile�; 0 	githuburl 	githubURL�: 0 logfile logFile�9 0 participantid participantID�8 0 userresponse userResponse�7  �6  �5  �4  �3  �2  �1  h �0p�/�.qr�-
�0 .aevtoappnull  �   � ****p k    �ss  
tt  uu  vv  %ww  .xx  8yy  Hzz  e{{  l||  �}}  �~~  %�,�,  �/  �.  q  r @�+�*�)�(�' �& #�% ,�$ 5�# ?�" ]�!� ���� [�� j�� �� ��� �� ��� � � � �� � �� �� �� �07:=��HPZ`c
�+ afdrcusr
�* 
rtyp
�) 
ctxt
�( .earsffdralis        afdr�' 0 homedir homeDir�& 0 targetfolder targetFolder�% "0 participantfile participantFile�$  0 bashscriptfile bashScriptFile�# 0 	githuburl 	githubURL�" 0 logfile logFile
�! 
cfol
�  .coredoexnull���     obj 
� 
kocl
� 
insh
� 
prdt
� 
pnam� 
� .corecrel****      � null� 0 participantid participantID
� 
file
� 
dtxt
� .sysodlogaskr        TEXT
� 
ttxt
� 
strq
� 
psxp
� .sysoexecTEXT���     TEXT�  0 downloadresult downloadResult
� 
btns
� 
dflt� � 0 userresponse userResponse
� 
bhit�-����l E�O��%E�O��%E�O��%E�O�E�O��%E�O� 0*a �/j  !*a a a �a a a la  Y hUOa E` O� [*a �/j  8a a a l a  ,E` Oa !_ a ",%a #%�a $,a ",%j %Y a &�a $,a ",%j %E` UO� `*a �/j  Qa '�a $,a ",%a (%�a ",%a )%j %E` *O_ *a +  a ,a -a .kva /a 0a 1 OhY hY hUOa 2�a $,a ",%j %O�a $,a ",a 3%�a $,a ",%a 4%j %O ehZa 5a -a 6a 7lva /a 8a 1 E` 9O_ 9a :,a ;  0a <�a $,a ",%j %Oa =a -a >kva /a ?a 1 OY h[OY��i ��� : M a c i n t o s h   H D : U s e r s : d o n g h a n h u :j ��� P M a c i n t o s h   H D : U s e r s : d o n g h a n h u : R o u t e r S e n s ek ��� t M a c i n t o s h   H D : U s e r s : d o n g h a n h u : R o u t e r S e n s e : p a r t i c i p a n t i d . t x tl ��� f M a c i n t o s h   H D : U s e r s : d o n g h a n h u : R o u t e r S e n s e : s e t u p . b a s hm ��� d M a c i n t o s h   H D : U s e r s : d o n g h a n h u : R o u t e r S e n s e : s e t u p . l o gn ���  t e s t 1 2 3 4o ���

� 
bhit� ���  Q u i t�
  �G  �F  �E  �D  �C  �B  �A   ascr  ��ޭ