#include<iostream>
#include<string>
using namespace std;

class Employee
{
public:
    int id;
    string name;
    float salary;


public:
    void calcSal(){

    }

    void print(){
        cout << "ID = " <<  id << endl;
        cout << "Name = " << name << endl;
        cout << "salary = " << salary << endl;

    }


};

class PermanetEmployee : public Employee
{
public:
    float hra;
    float da;
    float ta;
    float Basic;
    
public:
   void calcSal(){
        hra = 0.18 * Basic;
        da =  0.12 * Basic;
        ta =  0.12 * Basic;

        salary = Basic + hra + da + ta ;
   }

    void print(){

        Employee :: print();
        cout << "Basic = " << Basic << endl;
        cout << "hra = " << hra << endl;
        cout << "da = " << da << endl;
        cout << "ta = " << ta << endl;
    }
};


class ContractEmployee : public Employee
{
public:
    float hours;
    float sal_per_hour;

public:
    void calcSal(){
        salary = hours * sal_per_hour;
    }
    void print(){
        cout << "\n";
        Employee :: print();
        cout << "Hours = " << hours << endl;
        cout << "Salary_Per_hour = " << sal_per_hour << endl;


    }
};







int main(){
    PermanetEmployee p;
    p.id = 1;
    p.name = "Abrar";
    p.Basic = 5250;
    p.calcSal();
    p.print();

    ContractEmployee c;
    c.id = 2;
    c.name = "Jeevan";
    c.hours = 10;
    c.sal_per_hour = 400;
    c.calcSal();
    c.print();

}



