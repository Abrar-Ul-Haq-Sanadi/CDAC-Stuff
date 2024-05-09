#include<iostream>
#include<string>
#include "Employee.h"
using namespace std;


int main(){

 //option 1--> via PC
    // Employee e1 = Employee(1, "Abrar", 1000.0 , Address( "JC line","Chikodi", "Karnataka", "594201"));
    // e1.print_Employee();



// option 2 --> user input via console through the functions 

    // Employee e = Employee();                // creating an object
    // e.accept_emp();                         // calling the function for accepting the user details
    // e.print_Employee();                     // calling the function for printng the values



// option 3 --> user input via console through the getters and setters
//             we use setters and getters for that and hard code the values here than connect the objects e and temp by setter


    Employee e = Employee();                // e is object of the Employee
    e.setId(1);
    e.setName("Abrar");
    e.setSalary(9000);
    
    Address temp = Address();           // temp is the object of the  class address
    temp.setLine("JC");
    temp.setCity("Chikodi");
    temp.setState("KAR");
    temp.setPin("591201");

    e.setAddress(temp);
    e.print_Employee();




    // cout << "Enter the details for the Employee " <<endl;
    // cout << " Enter the Employee Id, Name, Salary" <<endl;
    // cin >> id >> name >> salary ;



    return 0;
}