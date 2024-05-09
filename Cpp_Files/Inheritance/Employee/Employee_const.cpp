// in this program we are making use of constructors in inherintance


#include<iostream>
#include<string>
using namespace std;

class Employee                  // we have created a employee named class
{
public:
    int id;                     // these are data members
    string name;                
    float salary;


public:

    Employee(){                         // we are creating the constructors                              
        id = 0;                         // only id and name are used in construcots becaus salary we are passng from outside
        name = "";
    }

    Employee(int id, string name) {                 //  we are creating a PC for id and name only
        this-> id = id;
        this -> name = name;
    }

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

    PermanetEmployee(){                                 // this is an default constructor , only basic is inlucded as hta, ta and da are being calculated
        Basic = 0.0;
    }

    PermanetEmployee(int id, string name,  float Basic) : Employee(id, name) {              // so we create PC , which has Basic and along with id and name
        this -> Basic = Basic;                                                          // out of Which Id and name belongs to Employee class    
                                                                                        // since in main we are creating the object of Per_Empl
    }                                                                    // and passing the values throught PC
                                                                       // but we are making this -> only for Basic as id and name already done in Emplyee class

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

    ContractEmployee(){                     // Default constructor for contract_Empl class
        hours = 0.0;
        sal_per_hour = 0.0;

    }

    ContractEmployee(int id, string name, float hours, float sal_per_hour) : Employee(id, name)  {          // PC using id, name , hours ans sal_per_hour
        this -> hours = hours;
        this -> sal_per_hour = sal_per_hour;

    }

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
    PermanetEmployee p(1, "Abrar", 5250);
    
    // p.id = 1;
    // p.name = "Abrar";
    // p.Basic = 5250;

    p.calcSal();
    p.print();

    ContractEmployee c(2, "Abdul", 10, 400);
    // c.id = 2;
    // c.name = "Jeevan";
    // c.hours = 10;
    // c.sal_per_hour = 400;
    c.calcSal();
    c.print();

}



