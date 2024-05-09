#include <iostream>
#include <string>
using namespace std;

class Item
{
private:
    string name;
    float price;
    static int count;

public:
    Item()
    {
        name = "";
        price = 0.0;
        count++;
    }

    Item(string name, float price)
    {
        this->name = name;
        this->price = price;
        count++;
    }

    string getName()
    {
        return name;
    }

    float getPrice()
    {
        return price;
    }

    void setName(string name)
    {
        this->name = name;
    }

    void setPrice(float price)
    {
        this->price = price;
    }

    void printItem()
    {
        cout << "name=" << name << endl;
        cout << "price=" << price << endl;
    }

    static void printCount()
    {
        cout << "The count is=" << count << endl;
    }
};