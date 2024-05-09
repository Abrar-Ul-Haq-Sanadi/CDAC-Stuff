#include<iostream>
#include "Employee.h"

using namespace std;

int main()
{
    Employee e1;
    
     cout << "Enter ID, name and Salary of the Employee" << "\n";
     cin >> e1.ID >> e1.name >> e1.salary ; 

     e1.print();

}