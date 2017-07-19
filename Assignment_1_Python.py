my_file = open('data.csv', 'r')
result = my_file.readlines()

#sets is to be used for each line in the file
#countries for every unique country
#country_num is a dictionary to store number to people to countries
sets = []
countries = []
country_num = {}

#adding every country to countries including duplicates
for line in result:
    sets = line.split(",")
    #print(sets)
    countries.append(sets[-1])
    #print(countries)

#removing whitespace in the beginning & end    
for i in range(0, len(countries)):
    countries[i] = countries[i].strip()

#converting to set to make unique and then back to a list
my_set = set(countries)
countries = list(my_set)

#removing "Country" as its irrelevent
countries.remove("Country")

#sorting countries list
countries.sort()

#for i in countries:
#    print(i)
#    print("\n")

#initializing each element in the dictionary to be 0
for i in countries:
    country_num[i] = 0

#PART 1
#here each element of countries is compared to the last element of everyline and then printed out
for i in countries:
    print(i)
    for line in result:
        sets = line.split(",")
        sets[-1] = sets[-1].strip()
        if i == sets[-1]:
            print(sets)
            print("\n")

#PART 2
#same thing as the above loop, but here country_num dictionary is updated
for i in countries:
    for line in result:
        sets = line.split(",")
        temp = sets[-1].strip()
        if i == temp:
            country_num[i] += 1


country_num = sorted(country_num.items())

for i in country_num:
    print(i)
    print("\n")

#PART 3 (EXTRA CREDIT)
#for "H" names
print("Names that start with the letter 'H':\n")
for line in result:
    sets = line.split(",")
    sets[-1] = sets[-1].strip()
    if sets[0][0] == 'H':
        print(sets)
