with open("sample.log") as file:
    for line in file:
        if "Failed password" in line:
            print(line)

count=0
with open("sample.log") as file:
    for line in file:
        if "Failed password" in line:
            print(line.strip())
            count=count+1
print("Total failed attempts:",count)        
