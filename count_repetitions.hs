--count :: Integer -> [Integer] -> Integer

count n xs = length (filter (== n) xs)
	    -- let y = length x
