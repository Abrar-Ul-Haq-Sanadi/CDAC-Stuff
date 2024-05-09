#include<iostream>
#include "Employee.h"
using namespace std;


int main()
{
    Employee e1;        //e1 object of the class
 
        cout << "Enter the ID, Name and Basic Salary of the Employee " << "\n";     // prints ar screen
        cin >> e1.id >> e1.name >> e1.basicSalary;                                  //fetches the details of employee from employee.h


e1.print();
         cout << "The Details of the Employee are: " << "\n";
e1.total_Salary();

}