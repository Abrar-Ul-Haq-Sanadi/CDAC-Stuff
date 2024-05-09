#include<iostream>
#include<string>

using namespace std;

class Employee                                      //class object
{
    public:
            int id;                                 //class members
            string name;
            int age;
            float salary;

    Employee()                                      //default constructor for initialzation class members
        {
            id=0;
            name ="" ;
            age= 0;
            salary = 0.0;
        }


    Employee(int id, string name, int age, float salary)                // Parameterizwd constructor passing values of paramters from main using object
        {
                this -> id = id   ;               // this "id' is my class member (variable) and just id is my function paramter with local scope
                this ->name = name;                 // this is used only if parameters names are same as member varaibles
                this -> age = age;
                this -> salary = salary;
        }


    // Employee(int ids, string names, int ages, float salarys)                // Parameterizwd constructor passing values of paramters from main using object
    //     {
    //             id = ids   ;               //  "id' is my class member (variable) and just ids is my function paramter with local scope
    //             name = names;
    //             age = ages;
    //             salary = salarys;
    //     }

    // copying the details object e2 into e3 
    Employee(Employee &details)                 //we write syntax: Consrtruct_name(class_name &some_variable)
    {
        id = details.id;                        // new.id = variable_name.old_id ;  the value of id of object e2 is passed to id of object e3 
        name = details.name;
        age = details.age;
        salary = details.salary;
    }

    ~Employee()
        {
            cout << "Killing Object" << endl;
        }
    

    void print()
        {
            cout << "ID: " << id << endl;
            cout << "Name: " << name << endl;
            cout << "Age: " << age << endl;
            cout << "Salary: " << salary << endl;
        }   


};

int main()
{
        Employee e1;
        e1.id = 1;                      // by this initialziation method we are passing the values to class members  directly
        e1.name = "Abrar";
        e1.age = 22;
        e1.salary = 10000;

        e1.print();

        // By this initialization method we are passing the details to class members through parameters 
        Employee e2(2,"Chanakya", 23, 50000);
        e2.print();

        //Employee e3;
        // copying the details of object e2 into new object e3 we do e3(e2)
        Employee e3(e2);
        e3.print();

        Employee *e4 = new Employee;        // this is a intialization og object into the haep which remains in memory forever
       // delete (e4);                      // it is killed only when we do it manually 

        return 0;


}