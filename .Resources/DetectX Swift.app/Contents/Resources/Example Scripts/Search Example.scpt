FasdUAS 1.101.10   ��   ��    k             l     ��  ��     ######################     � 	 	 , # # # # # # # # # # # # # # # # # # # # # #   
  
 l     ��  ��     >> ABOUT     �    > >   A B O U T      l     ��  ��     ######################     �   , # # # # # # # # # # # # # # # # # # # # # #      l      ��  ��    ? 9
 Phil Stokes -- 2018
 applehelpwriter.com 
 sqwarq.com 
     �   r 
   P h i l   S t o k e s   - -   2 0 1 8 
   a p p l e h e l p w r i t e r . c o m   
   s q w a r q . c o m   
      l     ��  ��     ######################     �   , # # # # # # # # # # # # # # # # # # # # # #      l     ��   !��      >> DESCRIPTION    ! � " "  > >   D E S C R I P T I O N   # $ # l     �� % &��   %  ######################    & � ' ' , # # # # # # # # # # # # # # # # # # # # # # $  ( ) ( l      �� * +��   * � �
Example AppleScript.
This AppleScript checks to see if DetectX Swift's last run
was more than n days ago; if so, do a search and 
write any results to file on the Desktop.
DEPENDENCY: Requires DetectX Swift v1.02 or later
    + � , ,� 
 E x a m p l e   A p p l e S c r i p t . 
 T h i s   A p p l e S c r i p t   c h e c k s   t o   s e e   i f   D e t e c t X   S w i f t ' s   l a s t   r u n 
 w a s   m o r e   t h a n   n   d a y s   a g o ;   i f   s o ,   d o   a   s e a r c h   a n d   
 w r i t e   a n y   r e s u l t s   t o   f i l e   o n   t h e   D e s k t o p . 
 D E P E N D E N C Y :   R e q u i r e s   D e t e c t X   S w i f t   v 1 . 0 2   o r   l a t e r 
 )  - . - l     �� / 0��   /  ######################    0 � 1 1 , # # # # # # # # # # # # # # # # # # # # # # .  2 3 2 l     �� 4 5��   4  >> USAGE    5 � 6 6  > >   U S A G E 3  7 8 7 l     �� 9 :��   9  ######################    : � ; ; , # # # # # # # # # # # # # # # # # # # # # # 8  < = < l      �� > ?��   > � �
Run the script manually, but ideally this
would be scheduled by any one of the many
ways for scheduling tasks on a mac.
-- launch agent
-- periodic script
-- cronjob
-- at job
-- Calendar event
    ? � @ @� 
 R u n   t h e   s c r i p t   m a n u a l l y ,   b u t   i d e a l l y   t h i s 
 w o u l d   b e   s c h e d u l e d   b y   a n y   o n e   o f   t h e   m a n y 
 w a y s   f o r   s c h e d u l i n g   t a s k s   o n   a   m a c . 
 - -   l a u n c h   a g e n t 
 - -   p e r i o d i c   s c r i p t 
 - -   c r o n j o b 
 - -   a t   j o b 
 - -   C a l e n d a r   e v e n t 
 =  A B A l     �� C D��   C  ######################    D � E E , # # # # # # # # # # # # # # # # # # # # # # B  F G F l     �� H I��   H  >> IMPORT STATEMENTS    I � J J ( > >   I M P O R T   S T A T E M E N T S G  K L K l     �� M N��   M  ######################    N � O O , # # # # # # # # # # # # # # # # # # # # # # L  P Q P x     �� R S��   R 1      ��
�� 
ascr S �� T��
�� 
minv T m       U U � V V  2 . 4��   Q  W X W x    �� Y����   Y 2  	 ��
�� 
osax��   X  Z [ Z x     �� \����   \ 4    �� ]
�� 
frmk ] m     ^ ^ � _ _  F o u n d a t i o n��   [  ` a ` l     �� b c��   b  ######################    c � d d , # # # # # # # # # # # # # # # # # # # # # # a  e f e l     �� g h��   g  >> VARIABLES    h � i i  > >   V A R I A B L E S f  j k j l     �� l m��   l  ######################    m � n n , # # # # # # # # # # # # # # # # # # # # # # k  o p o l     q���� q r      r s r I    ������
�� .misccurdldt    ��� null��  ��   s o      ���� 	0 today  ��  ��   p  t u t l    v���� v r     w x w m    	 y y � z z   x o      ���� 0 datatowrite dataToWrite��  ��   u  { | { l    }���� } r     ~  ~ n    � � � I    �������� 0 
nsusername 
NSUserName��  ��   � m    ��
�� misccura  o      ���� 0 uname uName��  ��   |  � � � l    ����� � r     � � � n    � � � I    �� ����� 00 nshomedirectoryforuser NSHomeDirectoryForUser �  ��� � o    ���� 0 uname uName��  ��   � m    ��
�� misccura � o      ���� 0 auser aUser��  ��   �  � � � l   % ����� � r    % � � � n   # � � � I    #�� ����� 40 stringbyappendingstring_ stringByAppendingString_ �  ��� � m     � � � � � 6 / D e s k t o p / D e t e c t X _ S e a r c h . t x t��  ��   � o    ���� 0 auser aUser � o      ���� 0 apath aPath��  ��   �  � � � l  & 0 ����� � r   & 0 � � � n  & . � � � I   ) .�� ����� &0 stringwithstring_ stringWithString_ �  ��� � o   ) *���� 0 apath aPath��  ��   � n  & ) � � � o   ' )���� 0 nsstring NSString � m   & '��
�� misccura � o      ���� 0 
pathstring 
pathString��  ��   �  � � � l     �� � ���   �  ######################    � � � � , # # # # # # # # # # # # # # # # # # # # # # �  � � � l     �� � ���   �  >> COMMANDS    � � � �  > >   C O M M A N D S �  � � � l     �� � ���   �  ######################    � � � � , # # # # # # # # # # # # # # # # # # # # # # �  � � � l     �� � ���   � : 4 turn on QuietLaunch to disable the search on launch    � � � � h   t u r n   o n   Q u i e t L a u n c h   t o   d i s a b l e   t h e   s e a r c h   o n   l a u n c h �  � � � l  1 6 ����� � I  1 6�� ���
�� .sysoexecTEXT���     TEXT � m   1 2 � � � � � � d e f a u l t s   w r i t e   c o m . s q w a r q . D e t e c t X - S w i f t   Q u i e t L a u n c h   - b o o l e a n   t r u e��  ��  ��   �  � � � l  7u ����� � O   7u � � � k   =t � �  � � � l  = =��������  ��  ��   �  � � � l  = =�� � ���   � < 6 comment out the next line if DTXS is already running     � � � � l   c o m m e n t   o u t   t h e   n e x t   l i n e   i f   D T X S   i s   a l r e a d y   r u n n i n g   �  � � � l  = =�� � ���   �  	 activate    � � � �    a c t i v a t e �  � � � l  = =��������  ��  ��   �  � � � l  = =�� � ���   �   keep DTXS in background     � � � � 2   k e e p   D T X S   i n   b a c k g r o u n d   �  � � � Q   = f � ��� � O  @ ] � � � r   N \ � � � m   N O��
�� boovfals � n       � � � 1   W [��
�� 
pvis � 4   O W�� �
�� 
pcap � m   S V � � � � �  D e t e c t X   S w i f t � 5   @ K�� ���
�� 
capp � m   D G � � � � �  s e v s
�� kfrmID   � R      ������
�� .ascrerr ****      � ****��  ��  ��   �  � � � l  g g��������  ��  ��   �  � � � r   g y � � � n  g u � � � 1   q u��
�� 
dATE � n  g q � � � 4  l q�� �
�� 
cobj � m   o p������ � l  g l ����� � I  g l������
�� .DtXSHisLnull��� ��� null��  ��  ��  ��   � o      ���� 0 lastrundate lastRunDate �  � � � l  z z��������  ��  ��   �  � � � l  z z�� � ���   � d ^ applescript dates are lovely: we can subtract one from another to get interval in seconds        � � � � �   a p p l e s c r i p t   d a t e s   a r e   l o v e l y :   w e   c a n   s u b t r a c t   o n e   f r o m   a n o t h e r   t o   g e t   i n t e r v a l   i n   s e c o n d s         �  � � � l  z � � � � � r   z � � � � ^   z � � � � l  z � ����  ^   z � l  z ����� ^   z � l  z ����� \   z � l  z }	����	 n  z }

 o   { }���� 	0 today    f   z {��  ��   o   } ����� 0 lastrundate lastRunDate��  ��   m   � ����� <��  ��   m   � ����� <��  ��   � m   � �����  � o      ���� *0 dayssincelastsearch daysSinceLastSearch �    convert to number of days    � � 4   c o n v e r t   t o   n u m b e r   o f   d a y s �  l  � �����~��  �  �~    Z   �n�}�| ?   � � o   � ��{�{ *0 dayssincelastsearch daysSinceLastSearch m   � ��z�z  l  �j k   �j  r   � � I  � ��y�x�w
�y .DtXSSrChnull��� ��� null�x  �w   o      �v�v 0 	newsearch 	newSearch  r   � �  n  � �!"! 1   � ��u
�u 
tHRT" o   � ��t�t 0 	newsearch 	newSearch  o      �s�s 0 	newissues 	newIssues #$# r   � �%&% n  � �'(' 1   � ��r
�r 
iNFT( o   � ��q�q 0 	newsearch 	newSearch& o      �p�p 0 newinfections newInfections$ )*) l  � ��o�n�m�o  �n  �m  * +,+ l  � ��l-.�l  - I C   iterating over any found issues and adding each to a text string   . �// �       i t e r a t i n g   o v e r   a n y   f o u n d   i s s u e s   a n d   a d d i n g   e a c h   t o   a   t e x t   s t r i n g, 010 X   � �2�k32 r   � �454 b   � �676 b   � �898 n  � �:;: o   � ��j�j 0 datatowrite dataToWrite;  f   � �9 l  � �<�i�h< c   � �=>= o   � ��g�g 	0 issue  > m   � ��f
�f 
ctxt�i  �h  7 o   � ��e
�e 
ret 5 n     ?@? o   � ��d�d 0 datatowrite dataToWrite@  f   � ��k 	0 issue  3 o   � ��c�c 0 	newissues 	newIssues1 ABA l  � ��b�a�`�b  �a  �`  B CDC l  � ��_EF�_  E M G   iterating over any found infections and adding each to a text string   F �GG �       i t e r a t i n g   o v e r   a n y   f o u n d   i n f e c t i o n s   a n d   a d d i n g   e a c h   t o   a   t e x t   s t r i n gD HIH X   �J�^KJ r   �LML b   �NON b   �PQP n  �RSR o   �]�] 0 datatowrite dataToWriteS  f   � Q l T�\�[T c  UVU o  �Z�Z 
0 infect  V m  �Y
�Y 
ctxt�\  �[  O o  �X
�X 
ret M n     WXW o  �W�W 0 datatowrite dataToWriteX  f  �^ 
0 infect  K o   � ��V�V 0 newinfections newInfectionsI YZY l �U�T�S�U  �T  �S  Z [\[ Z  =]^�R�Q] A  _`_ n aba n cdc 1  �P
�P 
lengd o  �O�O 0 datatowrite dataToWriteb  f  ` m  �N�N ^ r  "9efe b  "5ghg b  "1iji b  "-klk b  ")mnm m  "%oo �pp  S e a r c h   t i m e :  n n %(qrq o  &(�M�M 	0 today  r  f  %&l o  ),�L
�L 
ret j m  -0ss �tt > S e a r c h   c o m p l e t e .   N o t h i n g   f o u n d .h o  14�K
�K 
ret f n     uvu o  68�J�J 0 datatowrite dataToWritev  f  56�R  �Q  \ wxw l >>�I�H�G�I  �H  �G  x y�Fy Z  >jz{�E�Dz ?  >G|}| n >E~~ n ?E��� 1  AE�C
�C 
leng� o  ?A�B�B 0 datatowrite dataToWrite  f  >?} m  EF�A�A { k  Jf�� ��� l JJ�@���@  �   do something   � ���    d o   s o m e t h i n g� ��� l JJ�?���?  � + % in this example, we'll write to file   � ��� J   i n   t h i s   e x a m p l e ,   w e ' l l   w r i t e   t o   f i l e� ��� r  JX��� n JT��� I  MT�>��=�> &0 stringwithstring_ stringWithString_� ��<� l MP��;�:� n MP��� o  NP�9�9 0 datatowrite dataToWrite�  f  MN�;  �:  �<  �=  � n JM��� o  KM�8�8 0 nsstring NSString� m  JK�7
�7 misccura� o      �6�6 0 
datastring 
dataString� ��5� n Yf��� I  \f�4��3�4 20 writetofile_atomically_ writeToFile_atomically_� ��� l \_��2�1� n \_��� o  ]_�0�0 0 
pathstring 
pathString�  f  \]�2  �1  � ��/� m  _b�.
�. savoyes �/  �3  � o  Y\�-�- 0 
datastring 
dataString�5  �E  �D  �F     change to suit    ���    c h a n g e   t o   s u i t�}  �|   ��� l oo�,�+�*�,  �+  �*  � ��� l oo�)���)  � $  quit DTXS now that we're done   � ��� <   q u i t   D T X S   n o w   t h a t   w e ' r e   d o n e� ��(� I ot�'�&�%
�' .aevtquitnull��� ��� null�&  �%  �(   � m   7 :���                                                                                      @ alis    h  Macintosh HD               �ڢ�H+  ���DetectX Swift.app                                              �4���        ����  	                Applications    ��@7      ���D    ���  ,Macintosh HD:Applications: DetectX Swift.app  $  D e t e c t X   S w i f t . a p p    M a c i n t o s h   H D  Applications/DetectX Swift.app  / ��  ��  ��   � ��� l     �$���$  � 9 3 turn QuietLaunch back off if we turned it on above   � ��� f   t u r n   Q u i e t L a u n c h   b a c k   o f f   i f   w e   t u r n e d   i t   o n   a b o v e� ��� l v}��#�"� I v}�!�� 
�! .sysoexecTEXT���     TEXT� m  vy�� ��� � d e f a u l t s   w r i t e   c o m . s q w a r q . D e t e c t X - S w i f t   Q u i e t L a u n c h   - b o o l e a n   f a l s e�   �#  �"  � ��� l     ����  �  ######################   � ��� , # # # # # # # # # # # # # # # # # # # # # #� ��� l     ����  � 	 EOF   � ���  E O F�       �����  � ��
� 
pimr
� .aevtoappnull  �   � ****� ��� �  ���� � U�
� 
vers�  � ���
� 
cobj� �� ��� �  ��  � �����  � �������
� .aevtoappnull  �   � ****� k    }��  o��  t��  {��  ���  ���  ���  ���  ��� ���  �  �  � ��� 	0 issue  � 
0 infect  � 3�
�	 y������ ���� ���� ������ ����� �������������������������������������������os���������
�
 .misccurdldt    ��� null�	 	0 today  � 0 datatowrite dataToWrite
� misccura� 0 
nsusername 
NSUserName� 0 uname uName� 00 nshomedirectoryforuser NSHomeDirectoryForUser� 0 auser aUser� 40 stringbyappendingstring_ stringByAppendingString_� 0 apath aPath�  0 nsstring NSString�� &0 stringwithstring_ stringWithString_�� 0 
pathstring 
pathString
�� .sysoexecTEXT���     TEXT
�� 
capp
�� kfrmID  
�� 
pcap
�� 
pvis��  ��  
�� .DtXSHisLnull��� ��� null
�� 
cobj
�� 
dATE�� 0 lastrundate lastRunDate�� <�� �� *0 dayssincelastsearch daysSinceLastSearch
�� .DtXSSrChnull��� ��� null�� 0 	newsearch 	newSearch
�� 
tHRT�� 0 	newissues 	newIssues
�� 
iNFT�� 0 newinfections newInfections
�� 
kocl
�� .corecnte****       ****
�� 
ctxt
�� 
ret 
�� 
leng�� 0 
datastring 
dataString
�� savoyes �� 20 writetofile_atomically_ writeToFile_atomically_
�� .aevtquitnull��� ��� null�~*j  E�O�E�O�j+ E�O��k+ E�O��k+ 
E�O��,�k+ E�O�j Oa 9 ")a a a 0 f*a a /a ,FUW X  hO*j a i/a ,E` O)�,_ a !a !a !E`  O_  k �*j !E` "O_ "a #,E` $O_ "a %,E` &O +_ $[a 'a l (kh  )�,�a )&%_ *%)�,F[OY��O +_ &[a 'a l (kh )�,�a )&%_ *%)�,F[OY��O)�,a +,l a ,)�,%_ *%a -%_ *%)�,FY hO)�,a +,k !��,)�,k+ E` .O_ .)�,a /l+ 0Y hY hO*j 1UOa 2j 
� 
osax�  � �����
�� 
cobj� �� ��� ^
�� 
frmk��  ascr  ��ޭ