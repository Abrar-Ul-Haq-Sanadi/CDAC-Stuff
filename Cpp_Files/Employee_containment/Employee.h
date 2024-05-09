#include<iostream>
#include<string>
#include "emp_Adress.h"


class Employee
{
private:
    int id;
    string name;
    float salary;
    
    Address address;


public:
    Employee()
    {
        id=0;
        name = "";
        salary = 0.0;

        address = Address();
    }

    // Employee(int id, string name, float salary, Address address)
    // {
    //     this -> id = id;
    //     this -> name = name;
    //     this -> salary = salary;
    //     this -> address = address;    
    // }


    void print_Employee()
    {   
        
        cout <<endl;
        cout << "Printing the Employee details "<< endl;
        cout << "ID = " << id << endl;
        cout << "Name = " << name << endl;
        cout << "Salary = " << salary << endl;

        address.print_EmpAdress();   
    }



    void accept_emp()
    {
        cout <<" Enter the employee details: " << endl;
        cout << "Enter ID, Name, Salary" << endl;
        cin >> id >> name >> salary ;

        address.accept_EmpAdress();
    }

int getId()
    {
        return id;
    }


    string getName()
    {
        return name;
    }


    Address getAddress()
    {
        return address;
    }

    void setId(int id)
    {
        this -> id = id;
    }

    void setName(string name)
    {
        this -> name = name;
    }


    void setSalary(float salary)
    {
        this -> salary = salary;
    }


    void setAddress(Address address)
    {
        this -> address = address;
    }






};

