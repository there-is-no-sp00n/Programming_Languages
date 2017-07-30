import System.IO

factorial :: Integer -> Integer

factorial n = if n == 0 then 1 
	      else n * factorial (n-1)

main = do 
	putStrLn "Please enter an integer"
	input <- getLine
	let x = factorial(read (input)::Integer)
	putStrLn("Factorial of " ++input++ " is " ++show(x::Integer)) 
