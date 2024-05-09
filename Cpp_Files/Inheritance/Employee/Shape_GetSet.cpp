#include <iostream>
#include <string>

using namespace std;

class Shape                                                     // shape is the Parent class
{
protected:                                                      // class is protected it means that only its children class can access the data members
        float area;                                         

public:
        void FindArea(){                                               // function to calcultae the Area

        }                                   

        void print(){                                                   // print function 
        cout << "Area is = " << area << endl;           
        }

};

class Circle : private Shape                                     // cicle is child class of 
{
private:
        float radius;

public:
        void FindArea(){
            area = 3.14 * radius * radius;
       
        }
        
        void print(){
        cout << "Radius of Circle is = " << radius << endl;
        Shape :: print(); 
        }

        void setRadius(float radius)
        {
            this-> radius = radius;
        }

};

class Rectangle : protected Shape
{
protected:
    float side;             // side is basically lenght
    float breadth;

public:
        void FindArea(){
            area = side * breadth;
        }

        void print(){
        cout << endl;
        cout << "lenght of Rectangle is = " << side << endl;
        cout << "breadth of Rectangle is = " << breadth << endl;
        Shape :: print(); 
        }

        void setLenght(float side)
        {
            this-> side = side;
        }
        void setBreadth(float breadth)
        {
            this-> breadth = breadth;
        }
        float getLenght()
        {
            return side;
        }
};


class Square : private Rectangle
{
private:

public: 
    void FindArea()
    {
        area = side * side ;
    }
    
    void print()
    {
        cout << endl;
        cout << "Side of Square is = " << side << endl;
        Shape :: print();     
    }

    void setSide(float side)
        {
            this-> side = side;
        }

    
};

int main()
{
    Circle r;
    r.setRadius(5);
    r.FindArea();
    r.print();

    Rectangle x;
    x.setLenght(10);
    x.setBreadth(20);
    x.FindArea();
    x.print();

    Square s;
    s.setSide(x.getLenght());
    s.FindArea();
    s.print();
}

