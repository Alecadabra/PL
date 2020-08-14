c     Alec Maughan PL Workshop 1
c     Fortran 77 FizzBuzz

      program FizzBuzz
      integer i

      do 10 i = 1, 100
          if ((MOD(i, 3) .EQ. 0) .AND. (MOD(i, 5) .EQ. 0)) then
              write(*,*) 'FizzBuzz'
          elseif (MOD(i, 3) .EQ. 0) then
              write(*,*) 'Fizz'
          elseif (MOD(i, 5) .EQ. 0) then
              write(*,*) 'Buzz'
          else
              write(*,*) i
          endif
10    continue

      stop
      end
