-- Aninda Aminuzzaman
-- 1001018367
-- Linux
-- In this programming assignment created functions that do specific tasks



-- this is the factorial function, it takes an integer and returns and integer
factorial :: Integer -> Integer

-- takes n, if n is 0 then 1 is returned.... however if n is anything else n is multiplied by factorial (n-1)
factorial n = if n == 0 then 1 
	      else n * factorial (n-1)


-- this is the declaration of the binomial coefficient function, takes two integers and then returns an integer
binomial :: Integer -> Integer -> Integer

-- check to see if the second input is 0, then return 1
binomial n 0 = 1
-- check to see if the first input is 0, then return 0... for some reason without this checker made my computer lag
binomial 0 k = 0
-- finally if the above two checkers pass then go for the function
-- do factorial of the first input then divide that by the factorial of the second input times the factorial
-- of the difference of the two inputs
binomial n k =  (factorial n) `div` (factorial k * factorial (n-k))


-- this is the declaration of the fibonacci's sequence function, takes integer and then returns an integer
fibo :: Integer -> Integer

-- the user is supposed to enter the position in the sequence he/she wants
-- if the user enters 0, then return 0
-- if the user enters 1, then return 0
-- if the user asks for any other position then the recursive call to itself is called to calculate the value
fibo n = if n == 0 then 0
	 else 	if n == 1 then 1
	 	else fibo (n-1) + fibo (n-2)

-- this function counts the occurrences of a particular value in a list
-- it filters out everything but that value and then takes the length of the filtered list
count n xs = length (filter (== n) xs)

-- this function gets rid of occurences of any value other than the one given by the user
-- if the item is not equal then delete it from the list
delAll n xs = filter (/= n) xs

-- cube function that times the input by itself twice
cube n = n * n * n
-- square function that times the input by itself
square n = n * n

-- square list, this takes a list and then squares each item by calling on the above square function
sq list = [square x | x <- list]
-- cube list, this takes a list and then cubes each item by calling on the above cube function
cb list = [cube x | x <- list]

-- these two functions, squareFirst and cubeFirst helps accomplish the occilatingNumber function
-- both these basically do the same thing, it takes a list
-- then each element is either squared or cubed first and put together as a pair in a list
-- this creates a list of lists
-- finally the list of lists is flattened into one list with concat
squareFirst b = concat[[square x, cube x]| x <-b]
cubeFirst b = concat[[cube x, square x]| x <- b]


-- this function takes a list, if the head is odd we do cubeFirst... if even we do squareFirst
occilatingNumber xs = if odd (head xs) then cubeFirst xs
			else squareFirst xs

-- this function takes a list of integers and returns a list of integers
sclist :: [Integer] -> [Integer]

-- if the head is odd then we cube each number then square each number
-- after that we add the two lists together
-- if its even we square each number first then cube it followed by adding the two created lists together
sclist jj = if odd (head jj) then (cb jj) ++ (sq jj)
	    else (sq jj) ++ (cb jj)

-- this function takes a string and creates initials with the capital letters in that string
-- if the letter is capital then it is taken and a '.' is added to the end 
-- a list of list is created of every uppercase letter
-- then the list of list is flattened into one item
initials string = concat([x : "."| x <-string, x `elem` ['A'..'Z']])

-- this function takes a string that is a sentence and then returns a list of integers
-- each element of the new list represents the number of letters for each word in the old list
-- this function uses the words function to make a list of words from the sentence
-- then the legnth function takes the size of each string of the words list
-- a list of integers with number of letters is returned
wordsLength s = [length x | x <- words s]


--main = do
	  --putStrLn "Please enter an integer for factorial"
	  --input <- getLine
	  --let x = factorial(read (input)::Integer)
	  --putStrLn("Factorial of " ++input++ " is " ++show(x::Integer))
	  --let y = (read (input)::Integer)
	  --let z = factorial y
	  --putStrLn("Factorial of " ++input++ " is " ++show(z::Integer))

	  --putStrLn "Please enter the first number for binomial"
	  --input_2 <- getLine
	  --let bin_1 = (read(input_2)::Integer)
	  --putStrLn ("first b num "++show(bin_1::Integer))
	  --putStrLn "Please enter the second number for binomial"
          --input_3 <- getLine
	  --let bin_2 = (read(input_3)::Integer)
	  --putStrLn ("second b num "++show(bin_2::Integer))
	  --let bin_fin = binomial bin_1 bin_2
	  --putStrLn ("Binomial of " ++input_2++ " and " ++input_3++ " is " ++show(bin_fin::Integer))
	
--	  putStrLn "Enter the number for Fibonacci's sequence"
--	  input_4 <- getLine
--	  let fib_num = (read(input_4)::Integer)
--	  let fib_fin = fibo fib_num
--	  putStrLn ("Fibonacci's number in position " ++input_4++ " is " ++show(fib_fin::Integer))
