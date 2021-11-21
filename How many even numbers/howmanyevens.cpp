#include <iostream>

using namespace std;

int main(){

    int size;

    cin>>size;
    int total;

    for(int i=0;i<size; i++){
        int num;
        cin>>num;
        if(num%2==0){
            total++;
        }
    }

    cout<<total<<endl;

    return 0;
}