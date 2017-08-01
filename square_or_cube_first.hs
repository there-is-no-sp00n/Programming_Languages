sq list = [x * x | x <- list]
cb list = [x * x * x | x <- list]

sclist :: [Integer] -> [Integer]

sclist jj = if odd (head jj) then (cb jj) ++ (sq jj)
	   else (sq jj) ++ (cb jj)
