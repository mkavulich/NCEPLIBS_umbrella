  :j  �   k820309    s          18.0        �*p]                                                                                                          
       /scratch1/NCEPDEV/da/Mark.Potts/NCEPLIBS/NCEPLIBS-crtm/CRTM_Atmosphere.f90 CRTM_ATMOSPHERE              CRTM_ATMOSPHERE_COVERAGE CRTM_ATMOSPHERE_ISCLEAR CRTM_ATMOSPHERE_ISFRACTIONAL CRTM_ATMOSPHERE_ISOVERCAST CRTM_ATMOSPHERE_ADDLAYERS CRTM_ATMOSPHERE_ADDLAYERS_TL CRTM_ATMOSPHERE_ADDLAYERS_AD CRTM_ATMOSPHERE_CLEARSKYCOPY CRTM_ATMOSPHERE_CLEARSKYCOPY_TL CRTM_ATMOSPHERE_CLEARSKYCOPY_AD IATM_TYPE IATM_ASSOCIATED IATM_CREATE IATM_DESTROY                      @                              
       FP                      @                              
       SUCCESS FAILURE WARNING DISPLAY_MESSAGE                      @                              
       ZERO ONE POINT_5 SET TOA_PRESSURE MINIMUM_ABSORBER_AMOUNT WATER_CONTENT_THRESHOLD                      @                              
      CRTM_ATMOSPHERE_TYPE CRTM_ATMOSPHERE_ASSOCIATED CRTM_ATMOSPHERE_CREATE CRTM_ATMOSPHERE_ADDLAYERCOPY CRTM_ATMOSPHERE_ZERO i@ i@                      @                              
       MODEL_LEVEL_PRESSURE CRTM_GET_MODEL_PROFILE                      @                              
       IATM_TYPE IATM_ASSOCIATED IATM_CREATE IATM_DESTROY                                                            #CRTM_CLOUD_EQUAL    #CRTM_ATMOSPHERE_EQUAL    #CRTM_AEROSOL_EQUAL    %         H    @                                                     #X    #Y 
             
                                       �              #CRTM_CLOUD_TYPE 	             
                                  
     �              #CRTM_CLOUD_TYPE 	   %         H    @                                                     #X    #Y              
                                       �             #CRTM_ATMOSPHERE_TYPE              
                                       �             #CRTM_ATMOSPHERE_TYPE    %         H    @                                                     #X    #Y              
                                       �              #CRTM_AEROSOL_TYPE              
                                       �              #CRTM_AEROSOL_TYPE                                                               #CRTM_CLOUD_ADD    #CRTM_ATMOSPHERE_ADD    #CRTM_AEROSOL_ADD    &         H    @                               �                      #CLD1    #CLD2    #CRTM_CLOUD_TYPE 	             
                                       �              #CRTM_CLOUD_TYPE 	             
                                       �              #CRTM_CLOUD_TYPE 	   &         H    @                              �                      #AER1    #AER2    #CRTM_AEROSOL_TYPE              
                                       �              #CRTM_AEROSOL_TYPE              
                                       �              #CRTM_AEROSOL_TYPE                      @               �                '�                   #IS_ALLOCATED    #MAX_LAYERS    #N_LAYERS    #N_ABSORBERS    #MAX_CLOUDS    #N_CLOUDS    #MAX_AEROSOLS     #N_AEROSOLS !   #N_ADDED_LAYERS "   #CLIMATOLOGY #   #ABSORBER_ID $   #ABSORBER_UNITS %   #LEVEL_PRESSURE &   #PRESSURE '   #TEMPERATURE (   #ABSORBER )   #CLOUD_FRACTION *   #CLOUD +   #AEROSOL 4               � $                                                                        @                                                                         � $                                                                       @                                                      0               � $                                                                       @                                                      0                � $                                                                       @                                                      0                � $                                                                       @                                                      0                � $                                                                       @                                                      0                � $                                                                        @                                                      0                � $                              !                                         @                                                      0                � $                              "             	                             @                                                      0                � $                              #     $       
                             @                                                      6               � $                              $            (                             &                                                      � $                              %            p                             &                                                      � $                             &            �                 
            &                                                      � $                             '                             
            &                                                      � $                             (            H                
            &                                                      � $                             )            �                
            &                   &                                                      � $                             *            �                
            &                                                      � $                              +            8      �             #CRTM_CLOUD_TYPE 	             &                                                            @              E           	     '�                    #IS_ALLOCATED ,   #MAX_LAYERS -   #N_LAYERS .   #N_ADDED_LAYERS /   #TYPE 0   #EFFECTIVE_RADIUS 1   #EFFECTIVE_VARIANCE 2   #WATER_CONTENT 3               � $                              ,                                          @                                                                         � $                              -                                         @                                                      0                � $                              .                                         @                                                      0                � $                              /                                         @                                                      0                � $                              0                                         @                                                       0               � $                             1                             
            &                                                      � $                             2            `                 
            &                                                      � $                             3            �                 
            &                                                      � $                              4            �      �             #CRTM_AEROSOL_TYPE              &                                                            @              E                '�                    #IS_ALLOCATED 5   #MAX_LAYERS 6   #N_LAYERS 7   #N_ADDED_LAYERS 8   #TYPE 9   #EFFECTIVE_RADIUS :   #CONCENTRATION ;               � $                              5                                          @                                                                         � $                              6                                         @                                                      0                � $                              7                                         @                                                      0                � $                              8                                         @                                                      0                � $                              9                                         @                                                       0               � $                             :                             
            &                                                      � $                             ;            `                 
            &                                                             @               A           <     '                   #IS_ALLOCATED =   #N_LAYERS >   #N_ABSORBERS ?   #PL @   #TL A   #AL B   #P C   #T D   #A E   #PLN_SAVE F   #TLN_SAVE G   #ALN_SAVE H   #PLINT_SAVE I   #TLINT_SAVE J   #ALINT_SAVE K   #A_SAVE L   #ILPOLY M   #ELPOLY N               � $                              =                                          @                                                                         � $                              >                                         @                                                      0                � $                              ?                                         @                                                      0               � $                             @                             
            &                                                      � $                             A            X                 
            &                                                      � $                             B            �                 
            &                   &                                                      � $                             C                             
            &                                                      � $                             D            H                
            &                                                      � $                             E            �             	   
            &                   &                                                       � $                             F     �      
  
                           @                      
                                 0.0                � $                             G     �        
                           @                      
                                 0.0               � $                             H                             
            &                                                       � $                             I     H        
                           @                      
                                 0.0                � $                             J     P        
                           @                      
                                 0.0               � $                             K            X                
            &                                                      � $                             L            �                
            &                   &                                                       � $                             M              
                           @                      
                                 0.0                � $                             N             
                           @                      
                                 0.0                                                 O                                                                                                      P                                                       0                                             Q                                                      3                                             R                                                      2#         @ �                                S                    #ROUTINE_NAME T   #MESSAGE U   #ERROR_STATE V   #MESSAGE_LOG W             
                                T                    1           
                                U                    1           
                                  V                     
                               W                    1                                             X     
                
                                 0.0                                            Y     
                
                       �?        1.0                                            Z     
                
                       �?        0.5                                             [                                                      1                                            \     
                
                 {�G�zt?        0.005                                            ]     
                
                 �q�('0        1.0E-076                                            ^     
                
                 �����ư>        0.000001%         H                               _                           #ATM `             
                                  `     �             #CRTM_ATMOSPHERE_TYPE    #         H                                 a                    #ATM b   #N_LAYERS c   #N_ABSORBERS d   #N_CLOUDS e   #N_AEROSOLS f                                              b     �              #CRTM_ATMOSPHERE_TYPE              
                                  c                     
                                  d                     
                                  e                     
                                  f           &         H                               g     �                     #ATM h   #N_ADDED_LAYERS i   #CRTM_ATMOSPHERE_TYPE              
                                  h     �             #CRTM_ATMOSPHERE_TYPE              
                                  i           #         H                                 j                    #ATMOSPHERE k             
                                 k     �              #CRTM_ATMOSPHERE_TYPE                @   �                           l     e              
                                                     T
W
p          n
      
          
       {�G�zt?        0.00500000  n
        
          
       ��p�Ws�?        0.01606500  n
        
          
       8�q�念?        0.03838300  n
        
          
       �ʿ�W��?        0.07687900  n
        
          
       �7�k���?        0.13695400  n
        
          
       �;jL���?        0.22441200  n
        
          
       ��`�?        0.34540400  n
        
          
       7n1?74�?        0.50637400  n
        
          
       �2�F��?        0.71402300  n
        
          
       �s��q5�?        0.97527400  n
        
          
       6�~��?        1.29724000  n
        
          
       ��\m���?        1.68720000  n
        
          
       Wj1x8@        2.15257300  n
        
          
       ����o�@        2.70089700  n
        
          
       �N�Z�
@        3.33981200  n
        
          
       n2��N@        4.07703800  n
        
          
       ��I`s�@        4.92036200  n
        
          
       �ތ���@        5.87762300  n
        
          
       ���ڧ�@        6.95669500  n
        
          
       �Hh˹T @        8.16548000  n
        
          
       B]�P#@        9.51188900  n
        
                 )?��&@        11.00383500  n
       
                 <��fL)@        12.64922300  n
       
                 [#�qp�,@        14.45593600  n
       
                 eU���n0@        16.43183300  n
       
                 �����2@        18.58473200  n
       
                 ��A�"�4@        20.92240800  n
       
                 ���z�s7@        23.45258300  n
       
                 ��˶�.:@        26.18291800  n
       
                 ��!r�=@        29.12100900  n
       
                 �^|�#@@        32.27437800  n
       
                 I��B�A@        35.65046700  n
       
                 �	�Y٠C@        39.25663300  n
       
                  rьE@        43.10014400  n
       
                 ����G@        47.18817100  n
       
                 ���}��I@        51.52778600  n
       
                 ��W:L@        56.12595300  n
       
                 �4F�~N@        60.98953000  n
       
                 �!S>�P@        66.12525900  n
       
                 Y����Q@        71.53976800  n
       
                 �[w�TOS@        77.23956000  n
       
                 �6U���T@        83.23101600  n
       
                 ���NaV@        89.52039000  n
       
                 ��`�HX@        96.11380300  n
       
                 X���Y@        103.01724400  n
      
                 5���#�[@        110.23656500  n
      
                 ��?�q]@        117.77748100  n
      
                 �bG�Pi_@        125.64556200  n
      
                 %��e�`@        133.84624000  n
      
                 6t�?P�a@        142.38479600  n
      
                 �X���b@        151.26636600  n
      
                 �9w��d@        160.49593900  n
      
                 �6�ӁBe@        170.07834800  n
      
                 �f׽��f@        180.01827900  n
      
                 �F�?�g@        190.32026000  n
      
                 e6�$�i@        200.98866500  n
      
                 ��F�j@        212.02771200  n
      
                 ���r �k@        223.44146100  n
      
                 kg{gm@        235.23381400  n
      
                 ����n@        247.40851400  n
      
                 �
��?p@        259.96914200  n
      
                 �Q,��q@        272.91912000  n
      
                 �r��/�q@        286.26170600  n
      
                      �r@        300.00000000  n
      
                 R���0�s@        314.13693600  n
      
                 &W��͊t@        328.67528600  n
      
                 HQg��yu@        343.61765900  n
      
                 Ƈ��vov@        358.96650300  n
      
                 ����kw@        374.72409800  n
      
                 X8I�Gnx@        390.89256600  n
      
                 ��E�wy@        407.47386100  n
      
                 "��3��z@        424.46977600  n
      
                 �*n�{@        441.88194100  n
      
                 ��j�c�|@        459.71182100  n
      
                 �(_�}@        477.96072200  n
      
                 /�o�
@        496.62978500  n
      
                 �×���@        515.71998900  n
      
                 Y5s۹�@        535.23215300  n
      
                 vl�UY�@        555.16693500  n
      
                 '��2��@        575.52483200  n
      
                 �d�s��@        596.30618200  n
      
                 g��L�@        617.51116300  n
      
                 ���M��@        639.13979700  n
      
                 �����@        661.19194600  n
      
                 �`ũV]�@        683.66731600  n
      
                 �y���@        706.56546000  n
      
                 �]�φ@        729.88577200  n
      
                 }���@        753.62749400  n
      
                 I�VQN�@        777.78971600  n
      
                 (�����@        802.37137600  n
      
                 �z�V�ډ@        827.37125900  n
      
                 3Q��M��@        852.78800300  n
      
                 C���t�@        878.62009600  n
      
                 R~R�F�@        904.86588000  n
      
                 �Fu:0�@        931.52354900  n
      
                 2���@        958.59115400  n
      
                 �f�Ў@        986.06660100  n
      
                 !%̔��@        1013.94765500  n
     
                 �ꭁ�H�@        1042.23194000  n
     
                 ��Q򪻐@        1070.91694000  n
     
                      0�@        1100.00000000  h  p e         p           & p         p d           p e                                                                                                                                                                                                                                                                                                                                                                                               #         @                                  m                    #ABSORBER_ID n   #P o   #T p   #A q   #MODEL r             
                                 n                                 &                                                         �                           o                   
               & p                                                          �                           p                   
               & p                                                          �                           q                   
               & p                   &                                                     
                                 r           %         H                               s                           #SELF t             
                                  t                  #IATM_TYPE <   #         H                                 u                    #SELF v   #N_LAYERS w   #N_ABSORBERS x                                              v                   #IATM_TYPE <             
                                  w                     
                                  x           #         H                                 y                    #SELF z                                              z                   #IATM_TYPE <   &         H                                   �                     #ATM1 {   #ATM2 |   #CRTM_ATMOSPHERE_TYPE              
                                  {     �             #CRTM_ATMOSPHERE_TYPE              
                                  |     �             #CRTM_ATMOSPHERE_TYPE    %         @                                 }                           #ATM ~            
                                  ~     �             #CRTM_ATMOSPHERE_TYPE    %         @                                                            #COVERAGE_FLAG �             
                                  �           %         @                                 �                           #COVERAGE_FLAG �             
                                  �           %         @                                 �                           #COVERAGE_FLAG �             
                                  �           %         @                                 �                           #ATM_IN �   #ATM_OUT �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
D @                               �     �              #CRTM_ATMOSPHERE_TYPE    %         @                                 �                           #ATM_IN �   #ATM_IN_TL �   #ATM_OUT_TL �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
D @                               �     �              #CRTM_ATMOSPHERE_TYPE    %         @                                 �                           #ATM_IN �   #ATM_OUT_AD �   #ATM_IN_AD �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
D @                               �     �              #CRTM_ATMOSPHERE_TYPE              
D                                 �     �              #CRTM_ATMOSPHERE_TYPE    %         @                                 �                           #ATM �   #ATM_CLEAR �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              D @                               �     �              #CRTM_ATMOSPHERE_TYPE    %         @                                 �                           #ATM �   #ATM_TL �   #ATM_CLEAR_TL �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              D @                               �     �              #CRTM_ATMOSPHERE_TYPE    %         @                                 �                           #ATM �   #ATM_CLEAR_AD �   #ATM_AD �             
  @                               �     �             #CRTM_ATMOSPHERE_TYPE              
D @                               �     �              #CRTM_ATMOSPHERE_TYPE              
D @                               �     �              #CRTM_ATMOSPHERE_TYPE       �   c      fn#fn %     ]  b   uapp(CRTM_ATMOSPHERE    `  C   J  TYPE_KINDS     �  h   J  MESSAGE_HANDLER       �   J  CRTM_PARAMETERS '   �  �   J  CRTM_ATMOSPHERE_DEFINE $   `  l   J  CRTM_MODEL_PROFILES    �  s   J  IATM_DEFINE ,   ?  �      i@+CRTM_ATMOSPHERE_DEFINE 3   �  ^      CRTM_CLOUD_EQUAL+CRTM_CLOUD_DEFINE 5   &  ]   a   CRTM_CLOUD_EQUAL%X+CRTM_CLOUD_DEFINE 5   �  ]   a   CRTM_CLOUD_EQUAL%Y+CRTM_CLOUD_DEFINE =   �  ^      CRTM_ATMOSPHERE_EQUAL+CRTM_ATMOSPHERE_DEFINE ?   >  b   a   CRTM_ATMOSPHERE_EQUAL%X+CRTM_ATMOSPHERE_DEFINE ?   �  b   a   CRTM_ATMOSPHERE_EQUAL%Y+CRTM_ATMOSPHERE_DEFINE 7     ^      CRTM_AEROSOL_EQUAL+CRTM_AEROSOL_DEFINE 9   `  _   a   CRTM_AEROSOL_EQUAL%X+CRTM_AEROSOL_DEFINE 9   �  _   a   CRTM_AEROSOL_EQUAL%Y+CRTM_AEROSOL_DEFINE ,   	  �      i@+CRTM_ATMOSPHERE_DEFINE 1   �	  y      CRTM_CLOUD_ADD+CRTM_CLOUD_DEFINE 6   
  ]   a   CRTM_CLOUD_ADD%CLD1+CRTM_CLOUD_DEFINE 6   w
  ]   a   CRTM_CLOUD_ADD%CLD2+CRTM_CLOUD_DEFINE 5   �
  {      CRTM_AEROSOL_ADD+CRTM_AEROSOL_DEFINE :   O  _   a   CRTM_AEROSOL_ADD%AER1+CRTM_AEROSOL_DEFINE :   �  _   a   CRTM_AEROSOL_ADD%AER2+CRTM_AEROSOL_DEFINE <     �      CRTM_ATMOSPHERE_TYPE+CRTM_ATMOSPHERE_DEFINE I   �  �   a   CRTM_ATMOSPHERE_TYPE%IS_ALLOCATED+CRTM_ATMOSPHERE_DEFINE G   9  �   a   CRTM_ATMOSPHERE_TYPE%MAX_LAYERS+CRTM_ATMOSPHERE_DEFINE E   �  �   a   CRTM_ATMOSPHERE_TYPE%N_LAYERS+CRTM_ATMOSPHERE_DEFINE H   �  �   a   CRTM_ATMOSPHERE_TYPE%N_ABSORBERS+CRTM_ATMOSPHERE_DEFINE G   (  �   a   CRTM_ATMOSPHERE_TYPE%MAX_CLOUDS+CRTM_ATMOSPHERE_DEFINE E   �  �   a   CRTM_ATMOSPHERE_TYPE%N_CLOUDS+CRTM_ATMOSPHERE_DEFINE I   r  �   a   CRTM_ATMOSPHERE_TYPE%MAX_AEROSOLS+CRTM_ATMOSPHERE_DEFINE G     �   a   CRTM_ATMOSPHERE_TYPE%N_AEROSOLS+CRTM_ATMOSPHERE_DEFINE K   �  �   a   CRTM_ATMOSPHERE_TYPE%N_ADDED_LAYERS+CRTM_ATMOSPHERE_DEFINE H   a  �   a   CRTM_ATMOSPHERE_TYPE%CLIMATOLOGY+CRTM_ATMOSPHERE_DEFINE H     �   a   CRTM_ATMOSPHERE_TYPE%ABSORBER_ID+CRTM_ATMOSPHERE_DEFINE K   �  �   a   CRTM_ATMOSPHERE_TYPE%ABSORBER_UNITS+CRTM_ATMOSPHERE_DEFINE K   .  �   a   CRTM_ATMOSPHERE_TYPE%LEVEL_PRESSURE+CRTM_ATMOSPHERE_DEFINE E   �  �   a   CRTM_ATMOSPHERE_TYPE%PRESSURE+CRTM_ATMOSPHERE_DEFINE H   V  �   a   CRTM_ATMOSPHERE_TYPE%TEMPERATURE+CRTM_ATMOSPHERE_DEFINE E   �  �   a   CRTM_ATMOSPHERE_TYPE%ABSORBER+CRTM_ATMOSPHERE_DEFINE K   �  �   a   CRTM_ATMOSPHERE_TYPE%CLOUD_FRACTION+CRTM_ATMOSPHERE_DEFINE B   *  �   a   CRTM_ATMOSPHERE_TYPE%CLOUD+CRTM_ATMOSPHERE_DEFINE 2   �  �       CRTM_CLOUD_TYPE+CRTM_CLOUD_DEFINE ?   �  �   a   CRTM_CLOUD_TYPE%IS_ALLOCATED+CRTM_CLOUD_DEFINE =   V  �   a   CRTM_CLOUD_TYPE%MAX_LAYERS+CRTM_CLOUD_DEFINE ;   �  �   a   CRTM_CLOUD_TYPE%N_LAYERS+CRTM_CLOUD_DEFINE A   �  �   a   CRTM_CLOUD_TYPE%N_ADDED_LAYERS+CRTM_CLOUD_DEFINE 7   E  �   a   CRTM_CLOUD_TYPE%TYPE+CRTM_CLOUD_DEFINE C   �  �   a   CRTM_CLOUD_TYPE%EFFECTIVE_RADIUS+CRTM_CLOUD_DEFINE E   ~  �   a   CRTM_CLOUD_TYPE%EFFECTIVE_VARIANCE+CRTM_CLOUD_DEFINE @     �   a   CRTM_CLOUD_TYPE%WATER_CONTENT+CRTM_CLOUD_DEFINE D   �  �   a   CRTM_ATMOSPHERE_TYPE%AEROSOL+CRTM_ATMOSPHERE_DEFINE 6   Q  �       CRTM_AEROSOL_TYPE+CRTM_AEROSOL_DEFINE C      �   a   CRTM_AEROSOL_TYPE%IS_ALLOCATED+CRTM_AEROSOL_DEFINE A   �   �   a   CRTM_AEROSOL_TYPE%MAX_LAYERS+CRTM_AEROSOL_DEFINE ?   a!  �   a   CRTM_AEROSOL_TYPE%N_LAYERS+CRTM_AEROSOL_DEFINE E   "  �   a   CRTM_AEROSOL_TYPE%N_ADDED_LAYERS+CRTM_AEROSOL_DEFINE ;   �"  �   a   CRTM_AEROSOL_TYPE%TYPE+CRTM_AEROSOL_DEFINE G   P#  �   a   CRTM_AEROSOL_TYPE%EFFECTIVE_RADIUS+CRTM_AEROSOL_DEFINE D   �#  �   a   CRTM_AEROSOL_TYPE%CONCENTRATION+CRTM_AEROSOL_DEFINE &   x$  ,      IATM_TYPE+IATM_DEFINE 3   �%  �   a   IATM_TYPE%IS_ALLOCATED+IATM_DEFINE /   H&  �   a   IATM_TYPE%N_LAYERS+IATM_DEFINE 2   �&  �   a   IATM_TYPE%N_ABSORBERS+IATM_DEFINE )   �'  �   a   IATM_TYPE%PL+IATM_DEFINE )   &(  �   a   IATM_TYPE%TL+IATM_DEFINE )   �(  �   a   IATM_TYPE%AL+IATM_DEFINE (   f)  �   a   IATM_TYPE%P+IATM_DEFINE (   �)  �   a   IATM_TYPE%T+IATM_DEFINE (   �*  �   a   IATM_TYPE%A+IATM_DEFINE /   :+  �   a   IATM_TYPE%PLN_SAVE+IATM_DEFINE /   �+  �   a   IATM_TYPE%TLN_SAVE+IATM_DEFINE /   �,  �   a   IATM_TYPE%ALN_SAVE+IATM_DEFINE 1   -  �   a   IATM_TYPE%PLINT_SAVE+IATM_DEFINE 1   �-  �   a   IATM_TYPE%TLINT_SAVE+IATM_DEFINE 1   j.  �   a   IATM_TYPE%ALINT_SAVE+IATM_DEFINE -   �.  �   a   IATM_TYPE%A_SAVE+IATM_DEFINE -   �/  �   a   IATM_TYPE%ILPOLY+IATM_DEFINE -   Q0  �   a   IATM_TYPE%ELPOLY+IATM_DEFINE    �0  p       FP+TYPE_KINDS (   h1  q       SUCCESS+MESSAGE_HANDLER (   �1  q       FAILURE+MESSAGE_HANDLER (   J2  q       WARNING+MESSAGE_HANDLER 0   �2  �       DISPLAY_MESSAGE+MESSAGE_HANDLER =   D3  L   a   DISPLAY_MESSAGE%ROUTINE_NAME+MESSAGE_HANDLER 8   �3  L   a   DISPLAY_MESSAGE%MESSAGE+MESSAGE_HANDLER <   �3  @   a   DISPLAY_MESSAGE%ERROR_STATE+MESSAGE_HANDLER <   4  L   a   DISPLAY_MESSAGE%MESSAGE_LOG+MESSAGE_HANDLER %   h4  s       ZERO+CRTM_PARAMETERS $   �4  s       ONE+CRTM_PARAMETERS (   N5  s       POINT_5+CRTM_PARAMETERS $   �5  q       SET+CRTM_PARAMETERS -   26  u       TOA_PRESSURE+CRTM_PARAMETERS 8   �6  x       MINIMUM_ABSORBER_AMOUNT+CRTM_PARAMETERS 8   7  x       WATER_CONTENT_THRESHOLD+CRTM_PARAMETERS B   �7  Y       CRTM_ATMOSPHERE_ASSOCIATED+CRTM_ATMOSPHERE_DEFINE F   �7  b   a   CRTM_ATMOSPHERE_ASSOCIATED%ATM+CRTM_ATMOSPHERE_DEFINE >   R8  �       CRTM_ATMOSPHERE_CREATE+CRTM_ATMOSPHERE_DEFINE B   �8  b   a   CRTM_ATMOSPHERE_CREATE%ATM+CRTM_ATMOSPHERE_DEFINE G   B9  @   a   CRTM_ATMOSPHERE_CREATE%N_LAYERS+CRTM_ATMOSPHERE_DEFINE J   �9  @   a   CRTM_ATMOSPHERE_CREATE%N_ABSORBERS+CRTM_ATMOSPHERE_DEFINE G   �9  @   a   CRTM_ATMOSPHERE_CREATE%N_CLOUDS+CRTM_ATMOSPHERE_DEFINE I   :  @   a   CRTM_ATMOSPHERE_CREATE%N_AEROSOLS+CRTM_ATMOSPHERE_DEFINE D   B:  �       CRTM_ATMOSPHERE_ADDLAYERCOPY+CRTM_ATMOSPHERE_DEFINE H   �:  b   a   CRTM_ATMOSPHERE_ADDLAYERCOPY%ATM+CRTM_ATMOSPHERE_DEFINE S   +;  @   a   CRTM_ATMOSPHERE_ADDLAYERCOPY%N_ADDED_LAYERS+CRTM_ATMOSPHERE_DEFINE <   k;  X       CRTM_ATMOSPHERE_ZERO+CRTM_ATMOSPHERE_DEFINE G   �;  b   a   CRTM_ATMOSPHERE_ZERO%ATMOSPHERE+CRTM_ATMOSPHERE_DEFINE 9   %<  �      MODEL_LEVEL_PRESSURE+CRTM_MODEL_PROFILES ;   �W  y       CRTM_GET_MODEL_PROFILE+CRTM_MODEL_PROFILES G   IX  �   a   CRTM_GET_MODEL_PROFILE%ABSORBER_ID+CRTM_MODEL_PROFILES =   �X  �   a   CRTM_GET_MODEL_PROFILE%P+CRTM_MODEL_PROFILES =   eY  �   a   CRTM_GET_MODEL_PROFILE%T+CRTM_MODEL_PROFILES =   �Y  �   a   CRTM_GET_MODEL_PROFILE%A+CRTM_MODEL_PROFILES A   �Z  @   a   CRTM_GET_MODEL_PROFILE%MODEL+CRTM_MODEL_PROFILES ,   �Z  Z       IATM_ASSOCIATED+IATM_DEFINE 1   7[  W   a   IATM_ASSOCIATED%SELF+IATM_DEFINE (   �[  q       IATM_CREATE+IATM_DEFINE -   �[  W   a   IATM_CREATE%SELF+IATM_DEFINE 1   V\  @   a   IATM_CREATE%N_LAYERS+IATM_DEFINE 4   �\  @   a   IATM_CREATE%N_ABSORBERS+IATM_DEFINE )   �\  R       IATM_DESTROY+IATM_DEFINE .   (]  W   a   IATM_DESTROY%SELF+IATM_DEFINE ;   ]  ~       CRTM_ATMOSPHERE_ADD+CRTM_ATMOSPHERE_DEFINE @   �]  b   a   CRTM_ATMOSPHERE_ADD%ATM1+CRTM_ATMOSPHERE_DEFINE @   _^  b   a   CRTM_ATMOSPHERE_ADD%ATM2+CRTM_ATMOSPHERE_DEFINE )   �^  Y       CRTM_ATMOSPHERE_COVERAGE -   _  b   a   CRTM_ATMOSPHERE_COVERAGE%ATM (   |_  c       CRTM_ATMOSPHERE_ISCLEAR 6   �_  @   a   CRTM_ATMOSPHERE_ISCLEAR%COVERAGE_FLAG -   `  c       CRTM_ATMOSPHERE_ISFRACTIONAL ;   �`  @   a   CRTM_ATMOSPHERE_ISFRACTIONAL%COVERAGE_FLAG +   �`  c       CRTM_ATMOSPHERE_ISOVERCAST 9   %a  @   a   CRTM_ATMOSPHERE_ISOVERCAST%COVERAGE_FLAG *   ea  i       CRTM_ATMOSPHERE_ADDLAYERS 1   �a  b   a   CRTM_ATMOSPHERE_ADDLAYERS%ATM_IN 2   0b  b   a   CRTM_ATMOSPHERE_ADDLAYERS%ATM_OUT -   �b  {       CRTM_ATMOSPHERE_ADDLAYERS_TL 4   c  b   a   CRTM_ATMOSPHERE_ADDLAYERS_TL%ATM_IN 7   oc  b   a   CRTM_ATMOSPHERE_ADDLAYERS_TL%ATM_IN_TL 8   �c  b   a   CRTM_ATMOSPHERE_ADDLAYERS_TL%ATM_OUT_TL -   3d  {       CRTM_ATMOSPHERE_ADDLAYERS_AD 4   �d  b   a   CRTM_ATMOSPHERE_ADDLAYERS_AD%ATM_IN 8   e  b   a   CRTM_ATMOSPHERE_ADDLAYERS_AD%ATM_OUT_AD 7   re  b   a   CRTM_ATMOSPHERE_ADDLAYERS_AD%ATM_IN_AD -   �e  h       CRTM_ATMOSPHERE_CLEARSKYCOPY 1   <f  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY%ATM 7   �f  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY%ATM_CLEAR 0    g  w       CRTM_ATMOSPHERE_CLEARSKYCOPY_TL 4   wg  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_TL%ATM 7   �g  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_TL%ATM_TL =   ;h  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_TL%ATM_CLEAR_TL 0   �h  w       CRTM_ATMOSPHERE_CLEARSKYCOPY_AD 4   i  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_AD%ATM =   vi  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_AD%ATM_CLEAR_AD 7   �i  b   a   CRTM_ATMOSPHERE_CLEARSKYCOPY_AD%ATM_AD 