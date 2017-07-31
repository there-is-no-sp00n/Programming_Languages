factorial :: Integer -> Integer

factorial n = if n == 0 then 1 
	      else n * factorial (n-1)

binomial :: Integer -> Integer -> Integer

--binomial n 0 = 1
binomial 0 k = 0
binomial n k =  (factorial n) `div` (factorial k * factorial (n-k))

main = do 
	  putStrLn "Please enter the first number for binomial"
	  input_2 <- getLine
	  let bin_1 = (read(input_2)::Integer)
	  putStrLn ("first b num "++show(bin_1::Integer))
	  putStrLn "Please enter the second number for binomial"
          input_3 <- getLine
	  let bin_2 = (read(input_3)::Integer)
	  putStrLn ("second b num "++show(bin_2::Integer))
	 -- let bin_3 = bin_1 - bin_2
	  let bin_fin = binomial bin_1 bin_2-- bin_3
	  putStrLn ("Binomial of " ++input_2++ " and " ++input_3++ " is " ++show(bin_fin::Integer))
