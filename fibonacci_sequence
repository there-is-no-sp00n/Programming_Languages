fibo :: Integer -> Integer

fibo n = if n == 0 then 0
	 else 	if n == 1 then 1
	 	else fibo (n-1) + fibo (n-2)



main = do 
	  putStrLn "Enter the number for Fibonacci's sequence"
	  input_4 <- getLine
	  let fib_num = (read(input_4)::Integer)
	  let fib_fin = fibo fib_num
	  putStrLn ("Fibonacci's number in position " ++input_4++ " is " ++show(fib_fin::Integer))
