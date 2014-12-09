      DO i=Istr,Iend

        Bio_bottom(i,iOxyg)=6.0d0/32.0d0*1000.0d0  ! mgO2/l to uMO2
        Bio_bottom(i,iNO3_)=0.02d0/14.0d0*1000.0d0
        Bio_bottom(i,iNH4_)=0.02d0/14.0d0*1000.0d0
        Bio_bottom(i,iPO4_)=0.01d0/31.0d0*1000.0d0
        Bio_bottom(i,iH2S_)=0.0d0
        Bio_bottom(i,iLDeC)=20.0d0
        Bio_bottom(i,iSDeC)=20.0d0

        DO k=1,Nbed
!
!  pore water (mmol m-3 = nmol cm-3)
!
          bpw(i,j,k,iwO2_)=0.0d0
          bpw(i,j,k,iwNH4)=0.0d0
          bpw(i,j,k,iwNO3)=0.0d0
          bpw(i,j,k,iwPO4)=0.0d0
          bpw(i,j,k,iwH2S)=0.0d0
          bpw(i,j,k,iwSO4)=27300.0d0
          bpw(i,j,k,iwMn_)=0.0d0
          bpw(i,j,k,iwFe_)=0.0d0
          bpw(i,j,k,iwCH4)=0.0d0
!
!  sediment mud (nmol g-1)
!
          bsm(i,j,k,iPOMf)=0.0d0
          bsm(i,j,k,iPOMs)=0.0d0
          bsm(i,j,k,iPOMn)=0.0d0
          bsm(i,j,k,iMnOA)=0.0d0
          bsm(i,j,k,iMnOB)=0.0d0
          bsm(i,j,k,iFeOA)=0.0d0
          bsm(i,j,k,iFeOB)=0.0d0
          bsm(i,j,k,iFeOP)=0.0d0
          bsm(i,j,k,iS0__)=0.0d0
          bsm(i,j,k,iFeS_)=0.0d0
          bsm(i,j,k,iFeS2)=0.0d0
        END DO
        
        DO itrc=1,NBGCPW
          bpwflux(i,j,itrc)=0.0d0
        END DO
        DO itrc=1,NBGCSM
          bsmflux(i,j,itrc)=0.0d0
        END DO

      END DO