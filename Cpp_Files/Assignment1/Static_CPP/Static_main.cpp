#include "Item.h"
#include <string>

int Item::count = 0;

int main()
{
    Item item = Item("Pen", 23.44);
    Item a, b, c, d;

    Item::printCount();
}