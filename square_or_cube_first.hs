sq list = [x * x | x <- list]
cb list = [x * x * x | x <- list]

--sclist :: [Integer] -> [Integer]

sclist jj = if odd (head jj) then (sq jj) ++ (cb jj)
	   else (cb jj) ++ (sq jj)
