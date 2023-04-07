#include <iostream>
#include "config.h"
#include "add.h"

using namespace std;
int main(){
    cout<<"hello world~"<< endl;
    cout<<"version: "<< PROJECT_VERSION_MAJOR<<"."<<PROJECT_VERSION_MINOR<<"."<<endl;
    cout<<"add: "<< add(1, 2) << endl;
    // 加一个条件编译
    #ifdef DATE
        cout<<"build date: "<< DATE << endl;
    #endif

}