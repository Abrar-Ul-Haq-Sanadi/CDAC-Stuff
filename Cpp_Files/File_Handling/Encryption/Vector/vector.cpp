#include <iostream>
#include <cstdlib>
#include <vector>

using namespace std;

int main()
{
    vector<int> nums;
    int MAX = 100;

    // inserting random values
    for (int i = 0; i < 10; i++)
        nums.push_back(rand() % MAX);

    // printing values
    cout << "Printing Vector" << endl;
    for (int i = 0; i < nums.size(); i++)
        cout << nums[i] << endl;

    // // inserting a value at a specified position
    // nums.insert(nums.begin() + 0, 100);                                                 // inserting at beggining '0'
    // cout << "Printing Vector after inserting 100 at 0" << endl;
    // for (int i = 0; i < nums.size(); i++)
    //     cout << nums[i] << endl;

//     // replacing a value at a specified position
    // nums[9] = 20;
    // cout << "Printing Vector after replacing value at 3" << endl;
    // for (int i = 0; i < nums.size(); i++)
    //     cout << nums[i] << endl;

//     // deleting a value at a specified position
    // nums.erase(nums.begin() + 5);
    // cout << "Printing Vector after deleting value at 2" << endl;
    // for (int i = 0; i < nums.size(); i++)
    //     cout << nums[i] << endl;

//     // iterator
        vector<int>::iterator iter;

//     // automatically deduce the type of data stored in vector
//     // auto iter2 = nums.begin();

//     cout << "Printing Vector using an iterator" << endl;
//     for (iter = nums.begin(); iter < nums.end(); iter++)
//         cout << *iter << endl;

//     // search for a value and index using iterator
//     int index = -1;
//     vector<int>::iterator searchIter;
//     searchIter = find(nums.begin(), nums.end(), 44);
//     // if data is found, iter will not be equal to vector's end index
//     if (searchIter != nums.end())
//     {
//         index = searchIter - nums.begin();
//         cout << "Printing value found using an iterator" << endl;
//         cout << *searchIter << endl;
//         cout << "Printing index found using an iterator" << endl;
//         cout << index << endl;
//     }

//     // sort in asc and desc
//     // sort(nums.begin(), nums.end());
//     sort(nums.begin(), nums.end(), greater<int>());
//     cout << "Printing Vector after sort" << endl;
//     for (int i = 0; i < nums.size(); i++)
//         cout << nums[i] << endl;
 }