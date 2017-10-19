program calculatePrime
	integer::i, found, input
	real::j = 0
	integer, dimension(:), allocatable::array !create array of undefined size
	
	print*,"How many primes would you like to calculate?"
	read(*,*)input
	allocate(array(input)) !set size of array to be the number of primes wanted
	outer: do while (found < input) !continue while not all primes found
		j = j+1
		if ((j/2) < 2 .and. (j/2) >= 1) then !adds 2 and 3 since they otherwise fail this test
			found = found + 1
			array(found) = j;
			cycle
		end if
		inner: do i = 1, found
			if (modulo(nint(j),array(i)) == 0) then !if value testing is divisible by a prime, quit checking and continue to next value
				exit inner
			else if (array(i) > sqrt(j)) then !once you have checked past the square root of the value store it as a new prime
				found = found + 1
				array(found) = j
				exit inner
			end if
		end do inner
	end do outer

	do i = 1, input
		write (*,*) array(i)
	end do
end program calculatePrime
