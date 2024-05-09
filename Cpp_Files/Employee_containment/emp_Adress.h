#include<iostream>
#include<string>
using namespace std;


class Address
{
private:
    string line;
    string city;
    string state;
    string pin;
    
public:         
    Address()                                                           // default constructor
    {
        line ="";
        city = "";
        state = "";
        pin = "";
    }

    // Address(string line,string city,string state,string pin)             // parameteized construcotor (only needed if we are passing the values throigh PC)
    // {                                                                       // in main
    //     this -> line = line;
    //     this -> city = city;
    //     this -> state = state;
    //     this -> pin = pin;
    // }



    string getLine()
    {
        return line;
    }
    string getCity()
    {
        return city;
    }
    string getState()
    {
        return state;
    }

    string getPin()
    {
        return pin;
    }


    void setLine(string line)
        {
        this -> line = line;
        }
        
        void setCity(string city)
        {
        this -> city = city;
        }
        
        void setState(string state)
        {
        this -> state = state;
        }
       
        void setPin(string pin)
        {
        this -> pin = pin;
        }


void print_EmpAdress()
{
    cout << endl;

    cout << "Printing the Employee address details "<< endl;
    cout << "line = " << line << endl;
    cout << "City = " << city << endl;
    cout << "state = " << state << endl;
    cout << "Pin = " << pin << endl;
}

void accept_EmpAdress()
{
    cout << "Enter the Employee address details : " << endl;
    cout << "Enter the Employee Line, City, State, Pincode " << endl;
    cin >> line >> city >> state >> pin ;
}





};


