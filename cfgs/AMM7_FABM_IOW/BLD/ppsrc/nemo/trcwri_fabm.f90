










MODULE trcwri_fabm
   !!======================================================================
   !!                       *** MODULE trcwri_fabm ***
   !!    fabm :   Output of FABM tracers
   !!======================================================================
   !! History :   1.0  !  2009-05 (C. Ethe)  Original code
   !!----------------------------------------------------------------------
   !!----------------------------------------------------------------------
   !!   'key_fabm'                                           FABM model
   !!----------------------------------------------------------------------
   !! trc_wri_fabm   :  outputs of concentration fields
   !!----------------------------------------------------------------------
   USE trc         ! passive tracers common variables 
   USE iom         ! I/O manager
   USE trcsms_fabm, only: trc_sms_fabm_check_mass
   USE par_fabm
   USE st2d_fabm
   USE,INTRINSIC :: iso_fortran_env, only: output_unit

   IMPLICIT NONE
   PRIVATE


   INTERFACE trc_wri_fabm
       MODULE PROCEDURE wri_fabm,wri_fabm_fl
   END INTERFACE trc_wri_fabm

   PUBLIC trc_wri_fabm 

CONTAINS

   SUBROUTINE wri_fabm_fl (kt, fl)
      !!---------------------------------------------------------------------
      !!                     ***  ROUTINE trc_wri_trc  ***
      !!
      !! ** Purpose :   output passive tracers fields 
      !!---------------------------------------------------------------------
      INTEGER, INTENT( in )               :: fl
      INTEGER, INTENT( in )               :: kt

      CONTINUE

   END SUBROUTINE wri_fabm_fl


   SUBROUTINE wri_fabm (kt)
      !!---------------------------------------------------------------------
      !!                     ***  ROUTINE trc_wri_trc  ***
      !!
      !! ** Purpose :   output passive tracers fields 
      !!---------------------------------------------------------------------
      INTEGER, INTENT( in )               :: kt
      INTEGER              :: jn, jk
      REAL(wp), DIMENSION(jpi,jpj)    :: vint
      !!---------------------------------------------------------------------

      DO jn = 1, jp_fabm
         ! Save 3D field
         CALL iom_put(model%interior_state_variables(jn)%name, trn(:,:,:,jp_fabm_m1+jn))

         ! Save depth integral if selected for output in XIOS
         IF (iom_use(TRIM(model%interior_state_variables(jn)%name)//'_VINT')) THEN
            vint = 0._wp
            DO jk = 1, jpkm1
               vint = vint + trn(:,:,jk,jp_fabm_m1+jn) * e3t_n(:,:,jk) * tmask(:,:,jk)
            END DO
            CALL iom_put(TRIM(model%interior_state_variables(jn)%name)//'_VINT', vint)
         END IF
      END DO
      DO jn = 1, jp_fabm_surface
         CALL iom_put( model%surface_state_variables(jn)%name, fabm_st2dn(:,:,jn) )
      END DO
      DO jn = 1, jp_fabm_bottom
         CALL iom_put( model%bottom_state_variables(jn)%name, fabm_st2dn(:,:,jp_fabm_surface+jn) )
      END DO

      ! write 3D diagnostics in the file
      ! ---------------------------------------
!      DO jn = 1, size(model%interior_diagnostic_variables)
!         IF (model%interior_diagnostic_variables(jn)%save) &
!             CALL iom_put( model%interior_diagnostic_variables(jn)%name, model%get_interior_diagnostic_data(jn))
!      END DO

      ! write 2D diagnostics in the file
      ! ---------------------------------------
!      DO jn = 1, size(model%horizontal_diagnostic_variables)
!         IF (model%horizontal_diagnostic_variables(jn)%save) &
!             CALL iom_put( model%horizontal_diagnostic_variables(jn)%name, model%get_horizontal_diagnostic_data(jn))
!      END DO
      !

      CALL trc_sms_fabm_check_mass
   END SUBROUTINE wri_fabm


   !!----------------------------------------------------------------------
   !! NEMO/TOP 4.0 , NEMO Consortium (2018)
   !! $Id: trcwri_fabm.F90 3160 2011-11-20 14:27:18Z cetlod $ 
   !! Software governed by the CeCILL licence (see ./LICENSE)
   !!======================================================================
END MODULE trcwri_fabm
