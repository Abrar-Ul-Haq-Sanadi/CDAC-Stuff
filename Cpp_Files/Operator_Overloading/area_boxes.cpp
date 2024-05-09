#include <iostream>
#include <string.h>
using namespace std;

class Box
{
public:
    int l;
    int b;
    float area;

public:
    Box()
    {
        l = 0;
        b = 0;
        area = 0.0;
    };

    Box(int l, int b, float area)
    {
        this->l = l;
        this->b = b;
        this->area = area;
    }

    float calcArea()
    {
        this->area = this->l * this->b;
        return area;
    }

    bool operator>(Box &obj)
    {

        if (this->area > obj.area)
            return true;

        return false;
    }
};
   
int main()
{
    Box b1;
    Box b2;
    cout << "enter the Lenght and breadth of the box 1" << endl;
    cin >> b1.l >> b1.b;
    b1.calcArea();

    cout << "enter the Lenght and breadth of the box 2" << endl;
    cin >> b2.l >> b2.b;
    b2.calcArea();

    cout << "l1 = " << b1.l << " b1 = " << b1.b;
    cout << " Area = " << b1.area << endl;

    cout << "l2 = " << b2.l << " b2 = " << b2.b;
    cout << " Area = " << b2.area << endl;

    bool res = (b1.area > b2.area);

    cout<<"Res="<<res<<endl;
}
