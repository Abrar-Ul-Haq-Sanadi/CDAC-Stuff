#include<iostream>
#include<string>

using namespace std;

class Bank
{

    
public:
    string name;
    int number;
    string type;
    float balance;
    float amount;

Bank()
{
    name = "";
    number = 0;
    type = "";
    balance = 0.0;
    amount =0;
}

// Bank( string name, int number, string type, float balance)
// {
//     this-> name =name ;
//     this-> number = number ;
//     this-> type = type ;
//     this-> balance = balance ;



}

 int deposit(&)
 {

    balance = balance + amount;
 }


void print()
{
    cout << "Name: " << name << endl;
    cout << "Acount Number: " << number <<endl;
    cout << "Acount Type: " << type << endl;
    cout << "Acount Balance: " << balance << endl;
    
}
};


int main()
{
   // cout << "Enter your details" << endl;
    Bank p1;
    p1.print();

    cout <<"Enter Amount: " << endl;
    cin >> p1.amount ;
    


}


