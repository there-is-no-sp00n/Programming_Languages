cube n = n * n * n
square n = n * n

sq list = [square x | x <- list]
cb list = [cube x | x <- list]

squareFirst b = concat[[square x, cube x]| x <-b]
cubeFirst b = concat[[cube x, square x]| x <- b]

occilatingNumber xs = if odd (head xs) then cubeFirst xs
			else squareFirst xs
