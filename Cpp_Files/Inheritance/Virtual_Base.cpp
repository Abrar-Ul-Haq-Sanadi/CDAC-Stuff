//utkarshkushwaha02091999@gmail.com

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
        cout << endl;
        cout << " Main class Paramaterized Constructor called" << endl;

    }

    ~Product(){
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


class Printer : virtual public Product
{
public:
    string PrintSpeed;

public:
    Printer(){
        PrintSpeed = "" ;
    };

    Printer(string PrintSpeed) : Product (name)
    {
        this -> PrintSpeed = PrintSpeed ;
        cout<<" the constructor of printer is called"<<endl;
        cout << endl;
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

    virtual void display()
    {
        Product :: display();
        cout << " PrintSpeed is "<< PrintSpeed << endl;
        cout << " Printer : Is Printing remaining pages" << endl ; 

    }
};




class Scanner : virtual public Product
{
public: 
    string ScanResolution;

public:
    Scanner(){
        ScanResolution = "";
    }

    Scanner( string  ScanResolution) : Product (name)
    {
        this -> ScanResolution = ScanResolution;
        cout<<" the constructor of scanner is called"<<endl;
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
        cout <<  " ScanResolution" << ScanResolution << endl;
        cout << " Scanner is Scanning remaining Pages" << endl ;


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

    PrinterScanner(string name, string PrintSpeed, string ScanResolution, string mode) : Printer(PrintSpeed), Scanner(ScanResolution), Product(name)
    {
        this -> mode = mode;
        cout << endl;
        cout << "The Construcotor of Printer and Scanner is called " << endl;
    }

    ~PrinterScanner()
    {
        cout << " Printer and Scanner got destructed" << endl;
        cout << endl;
    }

    void dislpay(){
        Printer :: display();                               // this is to print the values of printer
        Scanner :: display();  


        cout << endl;                             // this is to print the values of scanner
        cout << " Mode is :" << mode << endl;
        cout << "------------------*******-----------------" << endl;

    }

};

int main()
{
    Printer *ps  = new PrinterScanner("Dell", "500 ppm", "450 * 450", "Printer");          // object of Printer(child class) is created and given refernce throught the Product(Parent Class)

    ps->display();
    return 0 ;
}

