  kg  Ú   k820309    s          18.0        Ñ*p]                                                                                                          
       /scratch1/NCEPDEV/da/Mark.Potts/NCEPLIBS/NCEPLIBS-crtm/CRTM_LowFrequency_MWSSEM.f90 CRTM_LOWFREQUENCY_MWSSEM              IVAR_TYPE LOWFREQUENCY_MWSSEM LOWFREQUENCY_MWSSEM_TL LOWFREQUENCY_MWSSEM_AD                      @                              
       FP                      @                              
       PI DEGREES_TO_RADIANS ZERO ONE TWO POINT_5                      @                              
  
     NPTS LPOLY_TYPE CLEAR_LPOLY FIND_INDEX LPOLY LPOLY_TL LPOLY_AD INTERP_2D INTERP_2D_TL INTERP_2D_AD                      @                              
      FVAR_TYPE IVAR_TYPE FRESNEL_REFLECTIVITY FRESNEL_REFLECTIVITY_TL FRESNEL_REFLECTIVITY_AD                      @                              
      GPVAR_TYPE IVAR_TYPE GUILLOU_OCEAN_PERMITTIVITY GUILLOU_OCEAN_PERMITTIVITY_TL GUILLOU_OCEAN_PERMITTIVITY_AD                      @                              
      EPVAR_TYPE IVAR_TYPE ELLISON_OCEAN_PERMITTIVITY ELLISON_OCEAN_PERMITTIVITY_TL ELLISON_OCEAN_PERMITTIVITY_AD                                                      u #FIND_REGULAR_INDEX    #FIND_RANDOM_INDEX    #         @     @                                               #X    #DX 	   #X_INT 
   #I1    #I2    #OUT_OF_BOUNDS              
                                                   
 *             &                                                     
                                 	     
                
                                
     
                 
                                                       
                                                       
                                             #         @     @                                                #X    #X_INT    #I1    #I2    #OUT_OF_BOUNDS              
                                                   
 +             &                                                     
                                     
                 
                                                       
                                                       
                                                               @                               '@                    #Z1    #Z2    #RZRV    #IZRV    #RZRH    #IZRH                  D                                                              D                                                             D                                             
                 D                                  (          
                 D                                  0          
                 D                                  8          
                     @                              'p                    #T    #S    #F    #F2    #F0     #F2PO !   #A1 "   #A2 #   #ES $   #EINF %   #C1 &   #C2 '   #D1 (   #D2 )                D                                            
                                                 
                                 0.0                 D                                           
                                                 
                                 0.0                 D                                           
                                                 
                                 0.0                 D                                           
                                                 
                                 0.0                 D                                             
                                                 
                                 0.0                 D                             !     (         
                                                 
                                 0.0                 D                             "     0         
                                                 
                                 0.0                 D                             #     8         
                                                 
                                 0.0                 D                             $     @       	  
                                                 
                                 0.0                 D                             %     H       
  
                                                 
                                 0.0                 D                             &     P         
                                                 
                                 0.0                 D                             '     X         
                                                 
                                 0.0                 D                             (     `         
                                                 
                                 0.0                 D                             )     h         
                                                 
                                 0.0                      @                         *     'P              
      #T +   #F ,   #F2 -   #F0 .   #TAU1 /   #TAU2 0   #DELTA1 1   #DELTA2 2   #D1 3   #D2 4                D                             +               
                                                 
                                 0.0                 D                             ,              
                                                 
                                 0.0                 D                             -              
                                                 
                                 0.0                 D                             .              
                                                 
                                 0.0                 D                             /               
                                                 
                                 0.0                 D                             0     (         
                                                 
                                 0.0                 D                             1     0         
                                                 
                                 0.0                 D                             2     8         
                                                 
                                 0.0                 D                             3     @       	  
                                                 
                                 0.0                 D                             4     H       
  
                                                 
                                 0.0                      @                         5     '¨              
      #ORDER 6   #NPTS 7   #LP_LEFT 8   #LP_RIGHT 9   #W_LEFT :   #W_RIGHT ;   #DXI_LEFT <   #DXI_RIGHT =   #DX_LEFT >   #DX_RIGHT ?                $                              6                                                                                                2                 $                              7                                                                                                                  $                             8                            
  p          p            p                                                                            
                                 0.0             $                             9                             
  p          p            p                                                                            
                                 0.0             $                             :     8         
                                                 
                                 0.0                 $                             ;     @         
                                                 
                                 0.0                 $                             <            H                
  p          p            p                                                                            
                                 0.0             $                             =            `                
  p          p            p                                                                            
                                 0.0             $                             >            x              	  
  p          p            p                                                                            
                                 0.0             $                             ?                          
  
  p          p            p                                                                            
                                 0.0                                             @                                                         #         @                                  A                    #PERMITTIVITY B   #COS_I C   #RV D   #RH E   #IVAR F             
                                 B                     
                                 C     
                                                D     
                                                 E     
                 
                                 F     @               #FVAR_TYPE    #         @                                  G                    #PERMITTIVITY_TL H   #COS_I I   #RV_TL J   #RH_TL K   #IVAR L             
                                 H                     
                                 I     
                                                J     
                                                 K     
                 
                                  L     @              #FVAR_TYPE    #         @                                  M                    #RV_AD N   #RH_AD O   #COS_I P   #PERMITTIVITY_AD Q   #IVAR R             
                                N     
                 
                                O     
                 
                                 P     
                
                                Q                      
                                  R     @              #FVAR_TYPE    #         @                                  S                    #TEMPERATURE T   #SALINITY U   #FREQUENCY V   #PERMITTIVITY W   #IVAR X             
                                 T     
                
                                 U     
                
                                 V     
                                                W                      
                                 X     p               #GPVAR_TYPE    #         @                                  Y                    #TEMPERATURE_TL Z   #SALINITY_TL [   #FREQUENCY \   #PERMITTIVITY_TL ]   #IVAR ^             
                                 Z     
                
                                 [     
                
                                 \     
                                                ]                      
                                  ^     p              #GPVAR_TYPE    #         @                                  _                    #PERMITTIVITY_AD `   #FREQUENCY a   #TEMPERATURE_AD b   #SALINITY_AD c   #IVAR d             
                                `                      
                                 a     
                
                                b     
                 
                                c     
                 
                                  d     p              #GPVAR_TYPE    #         @                                  e                    #TEMPERATURE f   #FREQUENCY g   #PERMITTIVITY h   #IVAR i             
                                 f     
                
                                 g     
                                                h                      
                                 i     P               #EPVAR_TYPE *   #         @                                  j                    #TEMPERATURE_TL k   #PERMITTIVITY_TL l   #IVAR m             
                                 k     
                                                l                      
                                  m     P              #EPVAR_TYPE *   #         @                                  n                    #PERMITTIVITY_AD o   #TEMPERATURE_AD p   #IVAR q             
                                o                      
                                p     
                 
                                  q     P              #EPVAR_TYPE *                                               r     
                
                  -DTû!	@        3.141592653589793238462643383279                                            s     
                   
                  9R¢Fß?                                                    t     
                
                                 0.0                                            u     
                
                       ð?        1.0                                            v     
                
                        @        2.0                                            w     
                
                       à?        0.5                                             x                                                         #         @                                  y                    #P z             
                                 z     ¨               #LPOLY_TYPE 5   #         @                                  {                    #X |   #X_INT }   #P ~             
                                 |                   
 ,             &                                                     
                                 }     
                
                                 ~     ¨               #LPOLY_TYPE 5   #         @                                                      #X    #X_INT    #P    #X_TL    #X_INT_TL    #P_TL              
                                                    
 -             &                                                     
                                      
                
                                       ¨              #LPOLY_TYPE 5             
                                                    
 .             &                                                     
                                      
                
                                      ¨               #LPOLY_TYPE 5   #         @                                                      #X    #X_INT    #P    #P_AD    #X_AD    #X_INT_AD              
                                                    
 /             &                                                     
                                      
                
                                       ¨              #LPOLY_TYPE 5             
                                      ¨               #LPOLY_TYPE 5             
                                                   
 0              &                                                     
                                     
       #         @                                                      #Z    #ULP    #VLP    #Z_INT              
                                                    
              &                   &                                                     
                                       ¨              #LPOLY_TYPE 5             
                                       ¨              #LPOLY_TYPE 5             
                                     
       #         @                                                      #Z    #ULP    #VLP    #Z_TL    #ULP_TL    #VLP_TL    #Z_INT_TL              
                                                    
              &                   &                                                     
                                       ¨              #LPOLY_TYPE 5             
                                       ¨              #LPOLY_TYPE 5             
                                                    
              &                   &                                                     
                                       ¨              #LPOLY_TYPE 5             
                                       ¨              #LPOLY_TYPE 5             
                                     
       #         @                                                      #Z    #ULP    #VLP    #Z_INT_AD    #Z_AD    #ULP_AD     #VLP_AD ¡             
                                                    
              &                   &                                                     
                                       ¨              #LPOLY_TYPE 5             
                                       ¨              #LPOLY_TYPE 5             
                                     
                 
                                                   
               &                   &                                                     
                                       ¨               #LPOLY_TYPE 5             
                                 ¡     ¨               #LPOLY_TYPE 5                     @                          ¢     '(             !      #IS_VALID £   #FREQUENCY ¤   #ZENITH_ANGLE ¥   #TEMPERATURE ¦   #SALINITY §   #WIND_SPEED ¨   #COS_Z ©   #COS2_Z ª   #FLP «   #WLP ¬   #I1 ­   #I2 ®   #J1 ¯   #J2 °   #F_INT ±   #W_INT ²   #SDD_INT ³   #PERMITTIVITY ´   #RV_FRESNEL µ   #RH_FRESNEL ¶   #RV_FOAM ·   #RH_FOAM ¸   #FOAM_COVER ¹   #R_STERM º   #RV_SMALL »   #RH_SMALL ¼   #RV_LTERM ½   #RH_LTERM ¾   #RV ¿   #RH À   #FVAR Á   #EPVAR Â   #GPVAR Ã                D                              £                                                                                                                    D                             ¤              
                                                 
                                 0.0                 D                             ¥              
                                                 
                                 0.0                 D                             ¦              
                                                 
                                 0.0                 D                             §               
                                                 
                                 0.0                 D                             ¨     (         
                                                 
                                 0.0                 D                             ©     0         
                                                 
                                 0.0                 D                             ª     8         
                                                 
                                 0.0                  D                              «     ¨       @       	       #LPOLY_TYPE 5                 D                              ¬     ¨       è       
       #LPOLY_TYPE 5                D                              ­                                                                                 ÿÿÿÿÿÿÿÿ                         D                              ®                                                                                 ÿÿÿÿÿÿÿÿ                         D                              ¯                                                                                 ÿÿÿÿÿÿÿÿ                         D                              °                                                                                 ÿÿÿÿÿÿÿÿ                         D                             ±              
                                                 
                                 0.0                 D                             ²     ¨        
                                                 
                                 0.0                 D                             ³     °        
                                                 
                                 0.0                 D                             ´     ¸                                                                                          0.0                 D                             µ     È        
                                                 
                                 0.0                 D                             ¶     Ð        
                                                 
                                 0.0                 D                             ·     Ø        
                                                 
                                 0.0                 D                             ¸     à        
                                                 
                                 0.0                 D                             ¹     è        
                                                 
                                 0.0                 D                             º     ð        
                                                 
                                 0.0                 D                             »     ø        
                                                 
                                 0.0                 D                             ¼              
                                                 
                                 0.0                 D                             ½             
                                                 
                                 0.0                 D                             ¾             
                                                 
                                 0.0                 D                             ¿             
                                                 
                                 0.0                 D                             À              
                                                 
                                 0.0                  D                              Á     @       (             #FVAR_TYPE                  D                              Â     P       h              #EPVAR_TYPE *                 D                              Ã     p       ¸      !       #GPVAR_TYPE    #         @                                   Ä                    #FREQUENCY Å   #ZENITH_ANGLE Æ   #TEMPERATURE Ç   #SALINITY È   #WIND_SPEED É   #EMISSIVITY Ê   #IVAR Ë             
  @                              Å     
                
  @                              Æ     
                
  @                              Ç     
                
  @                              È     
                
  @                              É     
                D                                Ê                   
               &                                                     
D @                               Ë     (              #IVAR_TYPE ¢   #         @                                   Ì                    #TEMPERATURE_TL Í   #SALINITY_TL Î   #WIND_SPEED_TL Ï   #EMISSIVITY_TL Ð   #IVAR Ñ             
  @                              Í     
                
  @                              Î     
                
  @                              Ï     
                D                                Ð                   
               &                                                     
                                  Ñ     (             #IVAR_TYPE ¢   #         @                                   Ò                    #EMISSIVITY_AD Ó   #TEMPERATURE_AD Ô   #SALINITY_AD Õ   #WIND_SPEED_AD Ö   #IVAR ×             
D                                Ó                   
 	              &                                                     
D @                              Ô     
                 
D @                              Õ     
                 
D @                              Ö     
                 
                                  ×     (             #IVAR_TYPE ¢          u      fn#fn .     \   b   uapp(CRTM_LOWFREQUENCY_MWSSEM    q  C   J  TYPE_KINDS     ´  k   J  CRTM_PARAMETERS #     £   J  CRTM_INTERPOLATION    Â     J  FRESNEL    [  ¬   J  GUILLOU      ¬   J  ELLISON 2   ³  o       gen@FIND_INDEX+CRTM_INTERPOLATION 6   "        FIND_REGULAR_INDEX+CRTM_INTERPOLATION 8   §     a   FIND_REGULAR_INDEX%X+CRTM_INTERPOLATION 9   3  @   a   FIND_REGULAR_INDEX%DX+CRTM_INTERPOLATION <   s  @   a   FIND_REGULAR_INDEX%X_INT+CRTM_INTERPOLATION 9   ³  @   a   FIND_REGULAR_INDEX%I1+CRTM_INTERPOLATION 9   ó  @   a   FIND_REGULAR_INDEX%I2+CRTM_INTERPOLATION D   3  @   a   FIND_REGULAR_INDEX%OUT_OF_BOUNDS+CRTM_INTERPOLATION 5   s  }      FIND_RANDOM_INDEX+CRTM_INTERPOLATION 7   ð     a   FIND_RANDOM_INDEX%X+CRTM_INTERPOLATION ;   |  @   a   FIND_RANDOM_INDEX%X_INT+CRTM_INTERPOLATION 8   ¼  @   a   FIND_RANDOM_INDEX%I1+CRTM_INTERPOLATION 8   ü  @   a   FIND_RANDOM_INDEX%I2+CRTM_INTERPOLATION C   <	  @   a   FIND_RANDOM_INDEX%OUT_OF_BOUNDS+CRTM_INTERPOLATION ,   |	         FVAR_TYPE+FRESNEL=IVAR_TYPE (   
  H   %   FVAR_TYPE%Z1+FRESNEL=Z1 (   L
  H   %   FVAR_TYPE%Z2+FRESNEL=Z2 ,   
  H   %   FVAR_TYPE%RZRV+FRESNEL=RZRV ,   Ü
  H   %   FVAR_TYPE%IZRV+FRESNEL=IZRV ,   $  H   %   FVAR_TYPE%RZRH+FRESNEL=RZRH ,   l  H   %   FVAR_TYPE%IZRH+FRESNEL=IZRH -   ´  Á       GPVAR_TYPE+GUILLOU=IVAR_TYPE '   u  §   %   GPVAR_TYPE%T+GUILLOU=T '     §   %   GPVAR_TYPE%S+GUILLOU=S '   Ã  §   %   GPVAR_TYPE%F+GUILLOU=F )   j  §   %   GPVAR_TYPE%F2+GUILLOU=F2 )     §   %   GPVAR_TYPE%F0+GUILLOU=F0 -   ¸  §   %   GPVAR_TYPE%F2PO+GUILLOU=F2PO )   _  §   %   GPVAR_TYPE%A1+GUILLOU=A1 )     §   %   GPVAR_TYPE%A2+GUILLOU=A2 )   ­  §   %   GPVAR_TYPE%ES+GUILLOU=ES -   T  §   %   GPVAR_TYPE%EINF+GUILLOU=EINF )   û  §   %   GPVAR_TYPE%C1+GUILLOU=C1 )   ¢  §   %   GPVAR_TYPE%C2+GUILLOU=C2 )   I  §   %   GPVAR_TYPE%D1+GUILLOU=D1 )   ð  §   %   GPVAR_TYPE%D2+GUILLOU=D2 -     ª       EPVAR_TYPE+ELLISON=IVAR_TYPE '   A  §   %   EPVAR_TYPE%T+ELLISON=T '   è  §   %   EPVAR_TYPE%F+ELLISON=F )     §   %   EPVAR_TYPE%F2+ELLISON=F2 )   6  §   %   EPVAR_TYPE%F0+ELLISON=F0 -   Ý  §   %   EPVAR_TYPE%TAU1+ELLISON=TAU1 -     §   %   EPVAR_TYPE%TAU2+ELLISON=TAU2 1   +  §   %   EPVAR_TYPE%DELTA1+ELLISON=DELTA1 1   Ò  §   %   EPVAR_TYPE%DELTA2+ELLISON=DELTA2 )   y  §   %   EPVAR_TYPE%D1+ELLISON=D1 )      §   %   EPVAR_TYPE%D2+ELLISON=D2 .   Ç  Ñ       LPOLY_TYPE+CRTM_INTERPOLATION 4     ¥   a   LPOLY_TYPE%ORDER+CRTM_INTERPOLATION 3   =  ¤   a   LPOLY_TYPE%NPTS+CRTM_INTERPOLATION 6   á  û   a   LPOLY_TYPE%LP_LEFT+CRTM_INTERPOLATION 7   Ü  û   a   LPOLY_TYPE%LP_RIGHT+CRTM_INTERPOLATION 5   ×   §   a   LPOLY_TYPE%W_LEFT+CRTM_INTERPOLATION 6   ~!  §   a   LPOLY_TYPE%W_RIGHT+CRTM_INTERPOLATION 7   %"  û   a   LPOLY_TYPE%DXI_LEFT+CRTM_INTERPOLATION 8    #  û   a   LPOLY_TYPE%DXI_RIGHT+CRTM_INTERPOLATION 6   $  û   a   LPOLY_TYPE%DX_LEFT+CRTM_INTERPOLATION 7   %  û   a   LPOLY_TYPE%DX_RIGHT+CRTM_INTERPOLATION    &  p       FP+TYPE_KINDS -   &         FRESNEL_REFLECTIVITY+FRESNEL :    '  @   a   FRESNEL_REFLECTIVITY%PERMITTIVITY+FRESNEL 3   @'  @   a   FRESNEL_REFLECTIVITY%COS_I+FRESNEL 0   '  @   a   FRESNEL_REFLECTIVITY%RV+FRESNEL 0   À'  @   a   FRESNEL_REFLECTIVITY%RH+FRESNEL 2    (  W   a   FRESNEL_REFLECTIVITY%IVAR+FRESNEL 0   W(         FRESNEL_REFLECTIVITY_TL+FRESNEL @   ß(  @   a   FRESNEL_REFLECTIVITY_TL%PERMITTIVITY_TL+FRESNEL 6   )  @   a   FRESNEL_REFLECTIVITY_TL%COS_I+FRESNEL 6   _)  @   a   FRESNEL_REFLECTIVITY_TL%RV_TL+FRESNEL 6   )  @   a   FRESNEL_REFLECTIVITY_TL%RH_TL+FRESNEL 5   ß)  W   a   FRESNEL_REFLECTIVITY_TL%IVAR+FRESNEL 0   6*         FRESNEL_REFLECTIVITY_AD+FRESNEL 6   ¾*  @   a   FRESNEL_REFLECTIVITY_AD%RV_AD+FRESNEL 6   þ*  @   a   FRESNEL_REFLECTIVITY_AD%RH_AD+FRESNEL 6   >+  @   a   FRESNEL_REFLECTIVITY_AD%COS_I+FRESNEL @   ~+  @   a   FRESNEL_REFLECTIVITY_AD%PERMITTIVITY_AD+FRESNEL 5   ¾+  W   a   FRESNEL_REFLECTIVITY_AD%IVAR+FRESNEL 3   ,         GUILLOU_OCEAN_PERMITTIVITY+GUILLOU ?   §,  @   a   GUILLOU_OCEAN_PERMITTIVITY%TEMPERATURE+GUILLOU <   ç,  @   a   GUILLOU_OCEAN_PERMITTIVITY%SALINITY+GUILLOU =   '-  @   a   GUILLOU_OCEAN_PERMITTIVITY%FREQUENCY+GUILLOU @   g-  @   a   GUILLOU_OCEAN_PERMITTIVITY%PERMITTIVITY+GUILLOU 8   §-  X   a   GUILLOU_OCEAN_PERMITTIVITY%IVAR+GUILLOU 6   ÿ-         GUILLOU_OCEAN_PERMITTIVITY_TL+GUILLOU E   .  @   a   GUILLOU_OCEAN_PERMITTIVITY_TL%TEMPERATURE_TL+GUILLOU B   Ú.  @   a   GUILLOU_OCEAN_PERMITTIVITY_TL%SALINITY_TL+GUILLOU @   /  @   a   GUILLOU_OCEAN_PERMITTIVITY_TL%FREQUENCY+GUILLOU F   Z/  @   a   GUILLOU_OCEAN_PERMITTIVITY_TL%PERMITTIVITY_TL+GUILLOU ;   /  X   a   GUILLOU_OCEAN_PERMITTIVITY_TL%IVAR+GUILLOU 6   ò/         GUILLOU_OCEAN_PERMITTIVITY_AD+GUILLOU F   0  @   a   GUILLOU_OCEAN_PERMITTIVITY_AD%PERMITTIVITY_AD+GUILLOU @   Í0  @   a   GUILLOU_OCEAN_PERMITTIVITY_AD%FREQUENCY+GUILLOU E   1  @   a   GUILLOU_OCEAN_PERMITTIVITY_AD%TEMPERATURE_AD+GUILLOU B   M1  @   a   GUILLOU_OCEAN_PERMITTIVITY_AD%SALINITY_AD+GUILLOU ;   1  X   a   GUILLOU_OCEAN_PERMITTIVITY_AD%IVAR+GUILLOU 3   å1         ELLISON_OCEAN_PERMITTIVITY+ELLISON ?   i2  @   a   ELLISON_OCEAN_PERMITTIVITY%TEMPERATURE+ELLISON =   ©2  @   a   ELLISON_OCEAN_PERMITTIVITY%FREQUENCY+ELLISON @   é2  @   a   ELLISON_OCEAN_PERMITTIVITY%PERMITTIVITY+ELLISON 8   )3  X   a   ELLISON_OCEAN_PERMITTIVITY%IVAR+ELLISON 6   3  {       ELLISON_OCEAN_PERMITTIVITY_TL+ELLISON E   ü3  @   a   ELLISON_OCEAN_PERMITTIVITY_TL%TEMPERATURE_TL+ELLISON F   <4  @   a   ELLISON_OCEAN_PERMITTIVITY_TL%PERMITTIVITY_TL+ELLISON ;   |4  X   a   ELLISON_OCEAN_PERMITTIVITY_TL%IVAR+ELLISON 6   Ô4  {       ELLISON_OCEAN_PERMITTIVITY_AD+ELLISON F   O5  @   a   ELLISON_OCEAN_PERMITTIVITY_AD%PERMITTIVITY_AD+ELLISON E   5  @   a   ELLISON_OCEAN_PERMITTIVITY_AD%TEMPERATURE_AD+ELLISON ;   Ï5  X   a   ELLISON_OCEAN_PERMITTIVITY_AD%IVAR+ELLISON #   '6         PI+CRTM_PARAMETERS 3   ·6  p       DEGREES_TO_RADIANS+CRTM_PARAMETERS %   '7  s       ZERO+CRTM_PARAMETERS $   7  s       ONE+CRTM_PARAMETERS $   8  s       TWO+CRTM_PARAMETERS (   8  s       POINT_5+CRTM_PARAMETERS (   ó8  p       NPTS+CRTM_INTERPOLATION /   c9  O       CLEAR_LPOLY+CRTM_INTERPOLATION 1   ²9  X   a   CLEAR_LPOLY%P+CRTM_INTERPOLATION )   
:  a       LPOLY+CRTM_INTERPOLATION +   k:     a   LPOLY%X+CRTM_INTERPOLATION /   ÷:  @   a   LPOLY%X_INT+CRTM_INTERPOLATION +   7;  X   a   LPOLY%P+CRTM_INTERPOLATION ,   ;         LPOLY_TL+CRTM_INTERPOLATION .   <     a   LPOLY_TL%X+CRTM_INTERPOLATION 2   <  @   a   LPOLY_TL%X_INT+CRTM_INTERPOLATION .   Þ<  X   a   LPOLY_TL%P+CRTM_INTERPOLATION 1   6=     a   LPOLY_TL%X_TL+CRTM_INTERPOLATION 5   Â=  @   a   LPOLY_TL%X_INT_TL+CRTM_INTERPOLATION 1   >  X   a   LPOLY_TL%P_TL+CRTM_INTERPOLATION ,   Z>         LPOLY_AD+CRTM_INTERPOLATION .   Ý>     a   LPOLY_AD%X+CRTM_INTERPOLATION 2   i?  @   a   LPOLY_AD%X_INT+CRTM_INTERPOLATION .   ©?  X   a   LPOLY_AD%P+CRTM_INTERPOLATION 1   @  X   a   LPOLY_AD%P_AD+CRTM_INTERPOLATION 1   Y@     a   LPOLY_AD%X_AD+CRTM_INTERPOLATION 5   å@  @   a   LPOLY_AD%X_INT_AD+CRTM_INTERPOLATION -   %A  l       INTERP_2D+CRTM_INTERPOLATION /   A  ¤   a   INTERP_2D%Z+CRTM_INTERPOLATION 1   5B  X   a   INTERP_2D%ULP+CRTM_INTERPOLATION 1   B  X   a   INTERP_2D%VLP+CRTM_INTERPOLATION 3   åB  @   a   INTERP_2D%Z_INT+CRTM_INTERPOLATION 0   %C         INTERP_2D_TL+CRTM_INTERPOLATION 2   ¶C  ¤   a   INTERP_2D_TL%Z+CRTM_INTERPOLATION 4   ZD  X   a   INTERP_2D_TL%ULP+CRTM_INTERPOLATION 4   ²D  X   a   INTERP_2D_TL%VLP+CRTM_INTERPOLATION 5   
E  ¤   a   INTERP_2D_TL%Z_TL+CRTM_INTERPOLATION 7   ®E  X   a   INTERP_2D_TL%ULP_TL+CRTM_INTERPOLATION 7   F  X   a   INTERP_2D_TL%VLP_TL+CRTM_INTERPOLATION 9   ^F  @   a   INTERP_2D_TL%Z_INT_TL+CRTM_INTERPOLATION 0   F         INTERP_2D_AD+CRTM_INTERPOLATION 2   /G  ¤   a   INTERP_2D_AD%Z+CRTM_INTERPOLATION 4   ÓG  X   a   INTERP_2D_AD%ULP+CRTM_INTERPOLATION 4   +H  X   a   INTERP_2D_AD%VLP+CRTM_INTERPOLATION 9   H  @   a   INTERP_2D_AD%Z_INT_AD+CRTM_INTERPOLATION 5   ÃH  ¤   a   INTERP_2D_AD%Z_AD+CRTM_INTERPOLATION 7   gI  X   a   INTERP_2D_AD%ULP_AD+CRTM_INTERPOLATION 7   ¿I  X   a   INTERP_2D_AD%VLP_AD+CRTM_INTERPOLATION    J  ë      IVAR_TYPE #   L  ¤   !   IVAR_TYPE%IS_VALID $   ¦L  §   !   IVAR_TYPE%FREQUENCY '   MM  §   !   IVAR_TYPE%ZENITH_ANGLE &   ôM  §   !   IVAR_TYPE%TEMPERATURE #   N  §   !   IVAR_TYPE%SALINITY %   BO  §   !   IVAR_TYPE%WIND_SPEED     éO  §   !   IVAR_TYPE%COS_Z !   P  §   !   IVAR_TYPE%COS2_Z    7Q  `   !   IVAR_TYPE%FLP    Q  `   !   IVAR_TYPE%WLP    ÷Q  ¤   !   IVAR_TYPE%I1    R  ¤   !   IVAR_TYPE%I2    ?S  ¤   !   IVAR_TYPE%J1    ãS  ¤   !   IVAR_TYPE%J2     T  §   !   IVAR_TYPE%F_INT     .U  §   !   IVAR_TYPE%W_INT "   ÕU  §   !   IVAR_TYPE%SDD_INT '   |V  §   !   IVAR_TYPE%PERMITTIVITY %   #W  §   !   IVAR_TYPE%RV_FRESNEL %   ÊW  §   !   IVAR_TYPE%RH_FRESNEL "   qX  §   !   IVAR_TYPE%RV_FOAM "   Y  §   !   IVAR_TYPE%RH_FOAM %   ¿Y  §   !   IVAR_TYPE%FOAM_COVER "   fZ  §   !   IVAR_TYPE%R_STERM #   [  §   !   IVAR_TYPE%RV_SMALL #   ´[  §   !   IVAR_TYPE%RH_SMALL #   [\  §   !   IVAR_TYPE%RV_LTERM #   ]  §   !   IVAR_TYPE%RH_LTERM    ©]  §   !   IVAR_TYPE%RV    P^  §   !   IVAR_TYPE%RH    ÷^  _   !   IVAR_TYPE%FVAR     V_  `   !   IVAR_TYPE%EPVAR     ¶_  `   !   IVAR_TYPE%GPVAR $   `  ²       LOWFREQUENCY_MWSSEM .   È`  @   a   LOWFREQUENCY_MWSSEM%FREQUENCY 1   a  @   a   LOWFREQUENCY_MWSSEM%ZENITH_ANGLE 0   Ha  @   a   LOWFREQUENCY_MWSSEM%TEMPERATURE -   a  @   a   LOWFREQUENCY_MWSSEM%SALINITY /   Èa  @   a   LOWFREQUENCY_MWSSEM%WIND_SPEED /   b     a   LOWFREQUENCY_MWSSEM%EMISSIVITY )   b  W   a   LOWFREQUENCY_MWSSEM%IVAR '   ëb         LOWFREQUENCY_MWSSEM_TL 6   c  @   a   LOWFREQUENCY_MWSSEM_TL%TEMPERATURE_TL 3   Èc  @   a   LOWFREQUENCY_MWSSEM_TL%SALINITY_TL 5   d  @   a   LOWFREQUENCY_MWSSEM_TL%WIND_SPEED_TL 5   Hd     a   LOWFREQUENCY_MWSSEM_TL%EMISSIVITY_TL ,   Ôd  W   a   LOWFREQUENCY_MWSSEM_TL%IVAR '   +e         LOWFREQUENCY_MWSSEM_AD 5   Èe     a   LOWFREQUENCY_MWSSEM_AD%EMISSIVITY_AD 6   Tf  @   a   LOWFREQUENCY_MWSSEM_AD%TEMPERATURE_AD 3   f  @   a   LOWFREQUENCY_MWSSEM_AD%SALINITY_AD 5   Ôf  @   a   LOWFREQUENCY_MWSSEM_AD%WIND_SPEED_AD ,   g  W   a   LOWFREQUENCY_MWSSEM_AD%IVAR 