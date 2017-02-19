//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, my homework! 算全部數字總合"

//1
var sum=0
for i in 0...7
{
    for j in 0...7
    {
        sum+=i*j
    
    }
}
sum



//2
var sum2=0
for x in 0...7{
    for y in 0...7 where y % 2 != 0{
        sum2+=x*y
    }
}
sum2


//3
var sum3=0
for x in 0...7
{
    for y in 0...7
    {
        if(x<y){
            sum3 += x * y
        }
        
        
    }
}
sum3


//4
func calculate(x:Int,y:Int,z:Int)->Int{
    var sum4=0
    for i in x...y where i % z == 0{
        sum4 += i
    }
    return sum4
}
calculate(x:3,y:98,z:5)

//5
func calculate2(x:Int,y:Int,z:Int)->Int{
    var sum5=0
    for i in x...y where i % z != 0{
        sum5 += i
    }
    return sum5
}
calculate2(x:3,y:11,z:5)

//6

//8
func covert(f:Float)->Float{
    let c=(f-32)/1.8
    return c
}
covert(f:194)





















































