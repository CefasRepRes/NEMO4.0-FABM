










MODULE par_fabm

   USE fabm

   IMPLICIT NONE
   
   INTEGER, PUBLIC :: jp_fabm0, jp_fabm1, jp_fabm, &
                      jp_fabm_surface, jp_fabm_bottom, &
                      jp_fabm_m1

   LOGICAL, PUBLIC, ALLOCATABLE, DIMENSION(:) ::   lk_rad_fabm !: FABM negativity correction flag array

   CLASS (type_fabm_model), POINTER :: model !FABM model instance

   !!---------------------------------------------------------------------
   !!   'key_fabm'                     FABM tracers
   !!---------------------------------------------------------------------
   LOGICAL, PUBLIC ::   ln_fabm     = .TRUE.   !: FABM flag 

   !!======================================================================
END MODULE par_fabm
