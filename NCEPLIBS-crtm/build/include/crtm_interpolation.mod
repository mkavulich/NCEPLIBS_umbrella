  VC     k820309    s          18.0        Ë*p]                                                                                                          
       /scratch1/NCEPDEV/da/Mark.Potts/NCEPLIBS/NCEPLIBS-crtm/CRTM_Interpolation.f90 CRTM_INTERPOLATION              ORDER NPTS LPOLY_TYPE CLEAR_LPOLY LPOLY_INIT LPOLY_INSPECT INTERP_1D INTERP_2D INTERP_3D INTERP_4D INTERP_1D_TL INTERP_2D_TL INTERP_3D_TL INTERP_4D_TL INTERP_1D_AD INTERP_2D_AD INTERP_3D_AD INTERP_4D_AD LPOLY LPOLY_TL LPOLY_AD gen@FIND_INDEX                      @                              
       FP                                                        u #FIND_REGULAR_INDEX    #FIND_RANDOM_INDEX 	   #         @     @X                                                 #X    #DX    #X_INT    #I1    #I2    #OUT_OF_BOUNDS              
 @                                                 
 *             &                                                     
                                      
                
D                                     
                 
D @                                                     
D                                                       
D                                             #         @     @X                             	                    #X 
   #X_INT    #I1    #I2    #OUT_OF_BOUNDS              
 @                              
                   
 +             &                                                     
D                                     
                 
D                                                       
D                                                       
D                                                                                                                                                                                                                                                      2                                                                                                                        @                               '¨              
      #ORDER    #NPTS    #LP_LEFT    #LP_RIGHT    #W_LEFT    #W_RIGHT    #DXI_LEFT    #DXI_RIGHT    #DX_LEFT    #DX_RIGHT                 $                                                                                                                              2                 $                                                                                                                                                $                                                         
  p          p            p                                                                            
                                 0.0             $                                                          
  p          p            p                                                                            
                                 0.0             $                                  8         
                                                 
                                 0.0                 $                                  @         
                                                 
                                 0.0                 $                                         H                
  p          p            p                                                                            
                                 0.0             $                                         `                
  p          p            p                                                                            
                                 0.0             $                                         x              	  
  p          p            p                                                                            
                                 0.0             $                                                       
  
  p          p            p                                                                            
                                 0.0#         @                                                       #P              
D                                      ¨               #LPOLY_TYPE    #         @                                                       #SELF               D                                       ¨               #LPOLY_TYPE    #         @                                   !                    #SELF "             
                                  "     ¨              #LPOLY_TYPE    #         @                                  #                    #Z $   #ULP %   #Z_INT &             
                                 $                   
              &                                                     
                                  %     ¨              #LPOLY_TYPE              
D                                &     
       #         @                                  '                    #Z (   #ULP )   #VLP *   #Z_INT +             
                                 (                   
              &                   &                                                     
  @                               )     ¨              #LPOLY_TYPE              
  @                               *     ¨              #LPOLY_TYPE              
D @                              +     
       #         @                                  ,                    #Z -   #ULP .   #VLP /   #WLP 0   #Z_INT 1             
                                 -                   
 
             &                   &                   &                                                     
  @                               .     ¨              #LPOLY_TYPE              
  @                               /     ¨              #LPOLY_TYPE              
  @                               0     ¨              #LPOLY_TYPE              
D @                              1     
       #         @                                   2                    #Z 3   #ULP 4   #VLP 5   #WLP 6   #XLP 7   #Z_INT 8             
                                 3                   
              &                   &                   &                   &                                                     
  @                               4     ¨              #LPOLY_TYPE              
  @                               5     ¨              #LPOLY_TYPE              
  @                               6     ¨              #LPOLY_TYPE              
  @                               7     ¨              #LPOLY_TYPE              
D @                              8     
       #         @                                  9                    #Z :   #ULP ;   #Z_TL <   #ULP_TL =   #Z_INT_TL >             
                                 :                   
              &                                                     
                                  ;     ¨              #LPOLY_TYPE              
                                 <                   
              &                                                     
                                  =     ¨              #LPOLY_TYPE              
D                                >     
       #         @                                  ?                    #Z @   #ULP A   #VLP B   #Z_TL C   #ULP_TL D   #VLP_TL E   #Z_INT_TL F             
                                 @                   
              &                   &                                                     
  @                               A     ¨              #LPOLY_TYPE              
  @                               B     ¨              #LPOLY_TYPE              
                                 C                   
              &                   &                                                     
  @                               D     ¨              #LPOLY_TYPE              
  @                               E     ¨              #LPOLY_TYPE              
D @                              F     
       #         @                                  G                 	   #Z H   #ULP I   #VLP J   #WLP K   #Z_TL L   #ULP_TL M   #VLP_TL N   #WLP_TL O   #Z_INT_TL P             
                                 H                   
              &                   &                   &                                                     
  @                               I     ¨              #LPOLY_TYPE              
  @                               J     ¨              #LPOLY_TYPE              
  @                               K     ¨              #LPOLY_TYPE              
                                 L                   
              &                   &                   &                                                     
  @                               M     ¨              #LPOLY_TYPE              
  @                               N     ¨              #LPOLY_TYPE              
  @                               O     ¨              #LPOLY_TYPE              
D @                              P     
       #         @                                   Q                    #Z R   #ULP S   #VLP T   #WLP U   #XLP V   #Z_TL W   #ULP_TL X   #VLP_TL Y   #WLP_TL Z   #XLP_TL [   #Z_INT_TL \             
                                 R                   
              &                   &                   &                   &                                                     
  @                               S     ¨              #LPOLY_TYPE              
  @                               T     ¨              #LPOLY_TYPE              
  @                               U     ¨              #LPOLY_TYPE              
  @                               V     ¨              #LPOLY_TYPE              
                                 W                   
              &                   &                   &                   &                                                     
  @                               X     ¨              #LPOLY_TYPE              
  @                               Y     ¨              #LPOLY_TYPE              
  @                               Z     ¨              #LPOLY_TYPE              
  @                               [     ¨              #LPOLY_TYPE              
D @                              \     
       #         @                                  ]                    #Z ^   #ULP _   #Z_INT_AD `   #Z_AD a   #ULP_AD b             
                                 ^                   
              &                                                     
                                  _     ¨              #LPOLY_TYPE              
                                `     
                 
D                                a                   
               &                                                     
D                                 b     ¨               #LPOLY_TYPE    #         @                                  c                    #Z d   #ULP e   #VLP f   #Z_INT_AD g   #Z_AD h   #ULP_AD i   #VLP_AD j             
                                 d                   
              &                   &                                                     
  @                               e     ¨              #LPOLY_TYPE              
  @                               f     ¨              #LPOLY_TYPE              
D @                              g     
                 
D @                              h                   
               &                   &                                                     
D @                               i     ¨               #LPOLY_TYPE              
D @                               j     ¨               #LPOLY_TYPE    #         @                                  k                 	   #Z l   #ULP m   #VLP n   #WLP o   #Z_INT_AD p   #Z_AD q   #ULP_AD r   #VLP_AD s   #WLP_AD t             
                                 l                   
 "             &                   &                   &                                                     
  @                               m     ¨              #LPOLY_TYPE              
  @                               n     ¨              #LPOLY_TYPE              
  @                               o     ¨              #LPOLY_TYPE              
D @                              p     
                 
D @                              q                   
 #              &                   &                   &                                                     
D @                               r     ¨               #LPOLY_TYPE              
D @                               s     ¨               #LPOLY_TYPE              
D @                               t     ¨               #LPOLY_TYPE    #         @                                   u                    #Z v   #ULP w   #VLP x   #WLP y   #XLP z   #Z_INT_AD {   #Z_AD |   #ULP_AD }   #VLP_AD ~   #WLP_AD    #XLP_AD              
                                 v                   
 &             &                   &                   &                   &                                                     
  @                               w     ¨              #LPOLY_TYPE              
  @                               x     ¨              #LPOLY_TYPE              
  @                               y     ¨              #LPOLY_TYPE              
  @                               z     ¨              #LPOLY_TYPE              
D @                              {     
                 
D @                              |                   
 '              &                   &                   &                   &                                                     
D @                               }     ¨               #LPOLY_TYPE              
D @                               ~     ¨               #LPOLY_TYPE              
D @                                    ¨               #LPOLY_TYPE              
D @                                    ¨               #LPOLY_TYPE    #         @                                                       #X    #X_INT    #P              
                                                    
 ,             &                                                     
  @                                   
                
D @                                    ¨               #LPOLY_TYPE    #         @                                                       #X    #X_INT    #P    #X_TL    #X_INT_TL    #P_TL              
                                                    
 -             &                                                     
                                      
                
                                       ¨              #LPOLY_TYPE              
                                                    
 .             &                                                     
  @                                   
                
D @                                    ¨               #LPOLY_TYPE    #         @                                                       #X    #X_INT    #P    #P_AD    #X_AD    #X_INT_AD              
                                                    
 /             &                                                     
                                      
                
                                       ¨              #LPOLY_TYPE              
D @                                    ¨               #LPOLY_TYPE              
D @                                                 
 0              &                                                     
D @                                   
              i      fn#fn (   	    b   uapp(CRTM_INTERPOLATION      C   J  TYPE_KINDS    N  o       gen@FIND_INDEX #   ½        FIND_REGULAR_INDEX %   B     a   FIND_REGULAR_INDEX%X &   Î  @   a   FIND_REGULAR_INDEX%DX )     @   a   FIND_REGULAR_INDEX%X_INT &   N  @   a   FIND_REGULAR_INDEX%I1 &     @   a   FIND_REGULAR_INDEX%I2 1   Î  @   a   FIND_REGULAR_INDEX%OUT_OF_BOUNDS "     }      FIND_RANDOM_INDEX $        a   FIND_RANDOM_INDEX%X (     @   a   FIND_RANDOM_INDEX%X_INT %   W  @   a   FIND_RANDOM_INDEX%I1 %     @   a   FIND_RANDOM_INDEX%I2 0   ×  @   a   FIND_RANDOM_INDEX%OUT_OF_BOUNDS      p       FP+TYPE_KINDS      q       ORDER    ø  p       NPTS    h  Ñ       LPOLY_TYPE !   9	  ¥   a   LPOLY_TYPE%ORDER     Þ	  ¤   a   LPOLY_TYPE%NPTS #   
  û   a   LPOLY_TYPE%LP_LEFT $   }  û   a   LPOLY_TYPE%LP_RIGHT "   x  §   a   LPOLY_TYPE%W_LEFT #     §   a   LPOLY_TYPE%W_RIGHT $   Æ  û   a   LPOLY_TYPE%DXI_LEFT %   Á  û   a   LPOLY_TYPE%DXI_RIGHT #   ¼  û   a   LPOLY_TYPE%DX_LEFT $   ·  û   a   LPOLY_TYPE%DX_RIGHT    ²  O       CLEAR_LPOLY      X   a   CLEAR_LPOLY%P    Y  R       LPOLY_INIT     «  X   a   LPOLY_INIT%SELF      R       LPOLY_INSPECT #   U  X   a   LPOLY_INSPECT%SELF    ­  c       INTERP_1D         a   INTERP_1D%Z      X   a   INTERP_1D%ULP     ô  @   a   INTERP_1D%Z_INT    4  l       INTERP_2D       ¤   a   INTERP_2D%Z    D  X   a   INTERP_2D%ULP      X   a   INTERP_2D%VLP     ô  @   a   INTERP_2D%Z_INT    4  u       INTERP_3D    ©  ¼   a   INTERP_3D%Z    e  X   a   INTERP_3D%ULP    ½  X   a   INTERP_3D%VLP      X   a   INTERP_3D%WLP     m  @   a   INTERP_3D%Z_INT    ­  ~       INTERP_4D    +  Ô   a   INTERP_4D%Z    ÿ  X   a   INTERP_4D%ULP    W  X   a   INTERP_4D%VLP    ¯  X   a   INTERP_4D%WLP      X   a   INTERP_4D%XLP     _  @   a   INTERP_4D%Z_INT      |       INTERP_1D_TL         a   INTERP_1D_TL%Z !   §  X   a   INTERP_1D_TL%ULP "   ÿ     a   INTERP_1D_TL%Z_TL $     X   a   INTERP_1D_TL%ULP_TL &   ã  @   a   INTERP_1D_TL%Z_INT_TL    #         INTERP_2D_TL    ´  ¤   a   INTERP_2D_TL%Z !   X   X   a   INTERP_2D_TL%ULP !   °   X   a   INTERP_2D_TL%VLP "   !  ¤   a   INTERP_2D_TL%Z_TL $   ¬!  X   a   INTERP_2D_TL%ULP_TL $   "  X   a   INTERP_2D_TL%VLP_TL &   \"  @   a   INTERP_2D_TL%Z_INT_TL    "  ¦       INTERP_3D_TL    B#  ¼   a   INTERP_3D_TL%Z !   þ#  X   a   INTERP_3D_TL%ULP !   V$  X   a   INTERP_3D_TL%VLP !   ®$  X   a   INTERP_3D_TL%WLP "   %  ¼   a   INTERP_3D_TL%Z_TL $   Â%  X   a   INTERP_3D_TL%ULP_TL $   &  X   a   INTERP_3D_TL%VLP_TL $   r&  X   a   INTERP_3D_TL%WLP_TL &   Ê&  @   a   INTERP_3D_TL%Z_INT_TL    
'  »       INTERP_4D_TL    Å'  Ô   a   INTERP_4D_TL%Z !   (  X   a   INTERP_4D_TL%ULP !   ñ(  X   a   INTERP_4D_TL%VLP !   I)  X   a   INTERP_4D_TL%WLP !   ¡)  X   a   INTERP_4D_TL%XLP "   ù)  Ô   a   INTERP_4D_TL%Z_TL $   Í*  X   a   INTERP_4D_TL%ULP_TL $   %+  X   a   INTERP_4D_TL%VLP_TL $   }+  X   a   INTERP_4D_TL%WLP_TL $   Õ+  X   a   INTERP_4D_TL%XLP_TL &   -,  @   a   INTERP_4D_TL%Z_INT_TL    m,  |       INTERP_1D_AD    é,     a   INTERP_1D_AD%Z !   u-  X   a   INTERP_1D_AD%ULP &   Í-  @   a   INTERP_1D_AD%Z_INT_AD "   .     a   INTERP_1D_AD%Z_AD $   .  X   a   INTERP_1D_AD%ULP_AD    ñ.         INTERP_2D_AD    /  ¤   a   INTERP_2D_AD%Z !   &0  X   a   INTERP_2D_AD%ULP !   ~0  X   a   INTERP_2D_AD%VLP &   Ö0  @   a   INTERP_2D_AD%Z_INT_AD "   1  ¤   a   INTERP_2D_AD%Z_AD $   º1  X   a   INTERP_2D_AD%ULP_AD $   2  X   a   INTERP_2D_AD%VLP_AD    j2  ¦       INTERP_3D_AD    3  ¼   a   INTERP_3D_AD%Z !   Ì3  X   a   INTERP_3D_AD%ULP !   $4  X   a   INTERP_3D_AD%VLP !   |4  X   a   INTERP_3D_AD%WLP &   Ô4  @   a   INTERP_3D_AD%Z_INT_AD "   5  ¼   a   INTERP_3D_AD%Z_AD $   Ð5  X   a   INTERP_3D_AD%ULP_AD $   (6  X   a   INTERP_3D_AD%VLP_AD $   6  X   a   INTERP_3D_AD%WLP_AD    Ø6  »       INTERP_4D_AD    7  Ô   a   INTERP_4D_AD%Z !   g8  X   a   INTERP_4D_AD%ULP !   ¿8  X   a   INTERP_4D_AD%VLP !   9  X   a   INTERP_4D_AD%WLP !   o9  X   a   INTERP_4D_AD%XLP &   Ç9  @   a   INTERP_4D_AD%Z_INT_AD "   :  Ô   a   INTERP_4D_AD%Z_AD $   Û:  X   a   INTERP_4D_AD%ULP_AD $   3;  X   a   INTERP_4D_AD%VLP_AD $   ;  X   a   INTERP_4D_AD%WLP_AD $   ã;  X   a   INTERP_4D_AD%XLP_AD    ;<  a       LPOLY    <     a   LPOLY%X    (=  @   a   LPOLY%X_INT    h=  X   a   LPOLY%P    À=         LPOLY_TL    C>     a   LPOLY_TL%X    Ï>  @   a   LPOLY_TL%X_INT    ?  X   a   LPOLY_TL%P    g?     a   LPOLY_TL%X_TL "   ó?  @   a   LPOLY_TL%X_INT_TL    3@  X   a   LPOLY_TL%P_TL    @         LPOLY_AD    A     a   LPOLY_AD%X    A  @   a   LPOLY_AD%X_INT    ÚA  X   a   LPOLY_AD%P    2B  X   a   LPOLY_AD%P_AD    B     a   LPOLY_AD%X_AD "   C  @   a   LPOLY_AD%X_INT_AD 