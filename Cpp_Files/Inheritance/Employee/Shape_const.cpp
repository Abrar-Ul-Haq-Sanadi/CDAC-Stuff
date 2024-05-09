#include <iostream>
#include <string>

using namespace std;

class Shape
{
public:
        float area;

public:
        // Shape(){
        //     area = 0.0;
        // }

        // Shape(float area){
        //     this -> area = area;
        // }

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
        Circle(){
            radius = 0.0;
        }

        Circle(float radius)
        {
            this -> radius = radius;
        }

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
        Rectangle(){
            side = 0.0;
            breadth = 0.0;
        }

        Rectangle(float side, float breadth){
            this -> side = side;
            this -> breadth = breadth;
        }
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

        Square() { }
        Square(float side) : Rectangle(side, side) {}

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
    Circle r(5);
  //  r.radius = 5;
    r.FindArea();
    r.print();

    Rectangle x(10,25);

    // x.side = 10;
    // x.breadth = 25;
    x.FindArea();
    x.print();


    Square s(10);
   // s.side = 10;
    s.FindArea();
    s.print();


}






