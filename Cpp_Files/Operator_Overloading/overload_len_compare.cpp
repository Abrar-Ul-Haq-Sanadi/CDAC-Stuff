#include <iostream>
#include <string.h>
using namespace std;

class Box
{
public:
    int l;
    int b;

public:
    Box()
    {
        l = 0;
        b = 0;
    };

    Box(int l, int b)
    {
        this->l = l;
        this->b = b;
    }

    bool operator == (Box &obj)
    {

        if (this->l == obj.l && this-> b == obj.b)
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


    cout << "enter the Lenght and breadth of the box 2" << endl;
    cin >> b2.l >> b2.b;


    cout << "l1 = " << b1.l << " b1 = " << b1.b << endl;
    cout << "l2 = " << b2.l << " b2 = " << b2.b << endl;


    bool res = (b1==b2);

    cout<<"Res="<<res<<endl;
}
