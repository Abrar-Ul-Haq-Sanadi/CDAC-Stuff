#include<iostream>
#include<string>
using namespace std;


class Bookstore
{
private:
        int id;
        string title;
        string author;
        int stock;
public:
        Bookstore()
        {
                id=0;
                title="";
                author = "";
                stock = 0;
        }

        Bookstore(int id, string title, string author, int stock)
        {
                this -> id = id;
                this -> title = title;
                this -> author=author;
                this -> stock = stock;
        }


        int getId()
        {
                return id;
        }

        void setId(int id)
        {
        this -> id = id ;
        }

        string getTitle()
        {
                return title;
        }

        void setTitle(string title)
        {
                this -> title = title ;
        }

        string getAuthor()
        {
                return author;
        }

        void setAuthor(string author)
        {
                this ->  author = author;
        }


int getStock(){
        return stock;
}

void setStock(int stock){
        this -> stock = stock ;
}

};


int main(){

        Bookstore books[5]={
                Bookstore(1, "cpp", "Abrar", 100),
                Bookstore(2, "Python", "Jeevan", 50),
                Bookstore(3, "OS", "Bala", 75),
                Bookstore(4, "Elevtrical", "kalam", 20),
                Bookstore(5, " DBMS", "Peter", 90)};

        // dummy variables 
        int id=0;
        int stock = 0;
        bool found = false;
cout << "Enter the Book ID: " << endl;  
cin >> id;
cout << "Enter the Quantity or(stock): "<<endl;
cin >> stock;

for (int i = 0; i < 5; i++)
{
        if ( books[i].getId() == id)
        {
                cout << "Book Found" << endl;
                found = true;

                if((books[i].getStock() - stock) > 0 )
                {
                        cout << "Stock Available and delivery completed" << endl;
                        books[i].setStock(books[i].getStock()- stock);
                        break;
                }
                else
                        {
                                cout << "Available Stock is Not Sufficient to deliver"<<endl;
                                break;
                        }               
        }
        else
               // cout << "Book Not Found"  << endl;
                found = false;            
}

if(!found)
{
        cout << "Book is not available in the store" << endl;
        found = false;
}

return 0;
}
