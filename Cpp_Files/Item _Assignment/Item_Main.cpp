#include "item.h"
#include <string>

int main()
{
   // using PC(parameteized constructor)
    // Item item1 = Item(1, "Pen", 23.5, Category(2, "Stationery"));
    // item1.printItem();

  
  //using Setters
    // Item item2 = Item();
    // item2.setItemId(1);
    // item2.setItemName("Pen");
    // item2.setItemPrice(23.5);


    // Category temp = Category();
    // temp.setCategoryId(2);
    // temp.setName("Stationery");
    // item2.setItemCategory(temp);

    // item2.printItem();

    // data from console: OPTION 1

    int itemId;
    string itemName;
    float itemPrice;
    int categoryId;
    string categoryName;

    cout << "Enter id, name and price for item." << endl;
    cin >> itemId >> itemName >> itemPrice;

    cout << "Enter id, name for category." << endl;
    cin >> categoryId >> categoryName;

    Item item1 = Item(itemId, itemName, itemPrice, Category(categoryId, categoryName));
    item1.printItem();

    // data from console: OPTION 2

    // Item item = Item();
    // item.acceptItem();

    // item.printItem();
}