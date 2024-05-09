#include <iostream>
#include <string>

using namespace std;

class Shape
{
public:
        float area;

public:
        void FindArea(){

        }

        void print(){
        cout << "Area is = " << area << endl;
    }
};

class Circle : public Shape
{
public:
        float radius;

public:
        void FindArea(){
            area = 3.14 * radius * radius;
       
        }
        
        void print(){
        cout << "Radius of Circle is = " << radius << endl;
        Shape :: print(); 
        }
    
};

class Rectangle : public Shape
{
public:
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
};


class Square : public Rectangle
{
public:


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
};

int main()
{
    Circle r;
    r.radius = 5;
    r.FindArea();
    r.print();

    Rectangle x;
    x.side = 10;
    x.breadth = 25;
    x.FindArea();
    x.print();

    Square s;
    s.side = 10;
    s.FindArea();
    s.print();


}






