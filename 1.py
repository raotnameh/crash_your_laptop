#To crash it by filling the memory
print(sum([i for i in range(1000000000)]))

#Not to crash 
print(sum(i for i in range(1000000000)))