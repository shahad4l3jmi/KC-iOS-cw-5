import UIKit
import Darwin

let family=["Mother","Father","Mohammad","Ahmad","Abdulrahman","Shahad"]

print(family.count)

var evenNumbers=[2,4,6,8,10,12]
evenNumbers.remove(at: 1)
                 evenNumbers += [16,18,20,22]

print(evenNumbers.randomElement())

evenNumbers.removeAll()

var numbers = [1,2,3,4,5]

for i in numbers {
    print(i)
    
}

numbers.append(6)
numbers.append(7)
numbers.append(8)
numbers.append(9)
numbers.append(10)

for i in numbers{
        print(i)
    
}

//ما اعرف شنو صار هني مع البونص 😵‍💫   
for i in numbers{
    if ((1%2) == 0) {
            print(evenNumbers)
    
}
}
