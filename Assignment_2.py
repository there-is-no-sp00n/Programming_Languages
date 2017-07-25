import matplotlib.pyplot as plt

#open the file
my_file = open('data.csv', 'r')

#put the file in a list
result = my_file.readlines()

#set up the axis value lists
x = []
y = []
x1 = []

#yearly average list with 8 elements
yearly_avg = [0,0,0,0,0,0,0,0]

#splitting by the commas
#appending first item to x-axis list
#appending last item to y-axis list
for line in result:
	sets = line.split(",")
	x.append(sets[0])
	y.append(sets[-1])

#getting rid of the "month" and "sales"
x.pop(0)
y.pop(0)

#getting rid of leading and ending whitespace
for i in range(0, len(x)):
	x[i] = x[i].strip()
	y[i] = y[i].strip()
	#x1 array with numbers 0 to 95
	x1.append(i)
	#type casting sales to int
	y[i] = int(y[i])

#plotting task 1
plt.plot(x1, y)

#giving the months on the x-axis vertical orientation (EXTRA CREDIT)
plt.xticks(range(0, len(x)), x, rotation='vertical')

#here counting up the total sales per year
counter = 0;
for i in range(0, len(x)):
	#only move forward in the yearly_avg list if the (index + 1) % 12 = 0
	if ((i + 1) % 12 == 0):
		#print("in if ", i)
		yearly_avg[counter] += y[i]
		counter += 1
	else:
		#print( "in else ", i)
		yearly_avg[counter] += y[i]

#declare the list to be divided by 12 and then added 12 times
avg_plot = []
		
for i in range(0, len(yearly_avg)):
	yearly_avg[i] /= 12
	for j in range(0,12):
		avg_plot.append(yearly_avg[i])

#give the second plot red color
#add the x & y axis labels and finally the graph title
plt.plot(x1, avg_plot, 'r-')
plt.xlabel('Months')
plt.ylabel('Sales')
plt.title('Months vs Sales')
plt.show()



#tasks 3,4, and 5 here
import re

da_file = open('sample.txt','r')
da_result = da_file.read()

final = re.findall('<i>(.*?)</i>', da_result, flags=re.DOTALL)

to_file = open('axa8368.txt','w')
for i in final:
	to_file.write(i)
to_file.close()

da_file = open('axa8368.txt', 'r')
da_result = da_file.read()

a = re.findall("Avengers", da_result, re.IGNORECASE)

da_result = re.sub("Avengers", "Vengadores", da_result, flags=re.IGNORECASE)

to_file = open('axa8368_ES.txt', 'w')
to_file.write(da_result)
to_file.close()


