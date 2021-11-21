#include <iostream>
using namespace std;

char upper(char c){
    return (c>='a' && c<='z')? (char)(c-32): c;
}

int main(){
    int tc;
    cin>>tc;
    cin.ignore();
    while (tc-->0)
    {
        string text;
        getline(cin, text);

        int len = text.length();
        int i = 1;
        cout<<upper(text.at(0));
        while(i<len-1){
            if(text.at(i)==' '){
                cout<<'.'<<upper(text.at(i+1));
            }
            i++;
        }
        cout<<endl;
    }
    
    return 0;
}