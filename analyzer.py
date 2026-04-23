with open("sample.log") as file:
    for line in file:
        if "Failed password" in line:
            print(line)
