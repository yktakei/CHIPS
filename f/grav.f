      subroutine grav(n,encm)

      include 'inclm1.f'

      real*8 encm(*)
      common / neutrn / tmns

      do 10 j = 3, n-1
!         rn = sqrt(((rad(j))**2.d0+(rad(j+1))**2.d0+rad(j)*rad(j+1))
!     &   /3.d0)
         rn = rad(j)
         grv(j) = -6.67259d-8*(encm(j)+tmns)/(rn*rn)
 10   continue

      write(*,*)"tmns encm(3) in grav =",tmns, encm(3)

      grv(n) = grv(n-1)
      grv(1) = -grv(4)
      grv(2) = -grv(3)
      return
      end