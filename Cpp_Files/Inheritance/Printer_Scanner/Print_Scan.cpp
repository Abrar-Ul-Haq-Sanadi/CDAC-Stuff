#include<iostream>
#include<string>

using namespace std;

class Product
{
public:
    string name;
    
public:

    Product(){
        name = "";

    }

    Product(string name){
        this-> name = name;
        cout << " Main class Paramaterized Constructor called" << endl;

    }

    ~Product()
    {
        cout << " Product (Parent) got destructed" << endl;
        cout << endl;


    }

    void display()
        {
            cout << endl;
            cout << " The Product Function is caled" << endl;
            cout << " Name : " << name << endl;
        }

};


class Printer : public Product
{
public:
    string PrintSpeed;

public:
    Printer(){
        PrintSpeed = "" ;
    };

    Printer(string name, string PrintSpeed) : Product (name)
    {
        this -> PrintSpeed = PrintSpeed ;
        cout<<"the constructor of printer is called"<<endl;
    }

    ~Printer()
    {
            cout << " Printer got destructed" << endl;
            cout << endl;

    };

    void print()
    {
        cout << " Printer : Is Printing" << endl ; 
    }

    void display()
    {
        Product :: display();
        cout << " PrintSpeed is "<< PrintSpeed << endl;
        cout << " Printer : Is Printing remaining pages" << endl ; 


    }
};


class Scanner : public Product
{
public: 
    string ScanResolution;

public:
    Scanner(){
        ScanResolution = "";
    }

    Scanner(string name, string ScanResolution) : Product (name)
    {
        this -> ScanResolution = ScanResolution;
         cout<<"the constructor of scanner is called"<<endl;
    }
    ~Scanner ()
    {
            cout << " Scanner got destructed" << endl;
            cout << endl;

    }

    void scan()
    {
        cout << " Scanner : Is Scanning " << endl ;
    }

    void display()
    {
        Product :: display();
        cout <<  "ScanResolution" << ScanResolution << endl;
        cout << "Scanner is Scanning remaining Pages" << endl ;

    }

};


class PrinterScanner : public Printer, public Scanner
{
public:
    string mode ;
public:
    PrinterScanner()
    {
        mode = "" ;
    }

    PrinterScanner(string name, string PrintSpeed, string ScanResolution, string mode) : Printer(name, PrintSpeed), Scanner(name, ScanResolution)
    {
        this -> mode = mode;
         cout<<"the constructor of printer and scanner is called"<<endl;
    }

    ~PrinterScanner()
    {
      cout<<"the destructor of printer and scanner  is called"<<endl;
    }

    void dislpay(){
        Printer::display();
        Scanner::display();
  
        cout << " Mode is :" << mode << endl;
        cout << endl ;

    }

};




int main()
{


    PrinterScanner ps = PrinterScanner(" HP ", "1200ppm", "220*440", "Printer");
    ps.dislpay();


    return 0 ;
}

