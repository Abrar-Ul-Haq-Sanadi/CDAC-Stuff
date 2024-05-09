#include<iostream>
using namespace std;

class Employee
{
public:
        int ID;
        char name[20];
        float salary;

        void print()
        {
            cout << "ID: " << ID << "\n";
            cout <<"name: "<< name << "\n";
            cout << "Salary: " << salary <<"\n";
        }

};
