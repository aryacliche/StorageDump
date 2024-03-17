#include<iostream>
#include<cmath>
#include<simplecpp>
using namespace std;

struct Symbol{
    char name;
    bool value;

    Symbol(){
        name='q';
        value=false;
    }

    Symbol(char a, bool b){ //Constuctor made
        name=a;
        value=b;
    }
};

class BooleanExpr{
private:
    int symbol_cnt; //number of symbols in the expression
    int expr_len; //total number of characters in the expression
    Symbol symbols[6]; //An array for the symbols
    char expr[21]; //An array for the expression

public:

    BooleanExpr(){
        for(int i=0; i<6 ; i++)
            symbols[i].value=false; //Masti main we are making a user defined constructor
    }

    void initialise(){
        for(int i=0; i<6 ; i++)
            symbols[i].value=false;
    }

    void print_array(char arr[], int len){
        for(int i=0;i<len; i++){
            cout<<arr[i]<<" ";
        }
        return;
    }

    bool assign_symbol(char h){
        for(int i=0; i<symbol_cnt ; i++){
            if(symbols[i].name==h)
                return symbols[i].value; //Basically it takes in a character and outputs the related value
        }
        return false;
    }

    bool evaluate_sum(char expression[], int length, int start){
        //Let us try for recursion
        if(start==length-1){
            bool a=assign_symbol(expression[start]);
            cout<<"letter= "<<expression[start]<<", element="<<a<<endl;
            return a;
        }

        //Let us start from the first element
        bool element=false;

        if(expression[start]=='!'){
            element=!(assign_symbol(expression[start+1]));
            start++;
        }
        else
            element=(assign_symbol(expression[start]));
        cout<<"letter= "<<expression[start]<<", element="<<element<<endl;

        start++;

        if(expression[start]=='+'){ //AND
            bool ans=(element && evaluate_sum(expression, length, start+1));
            //cout<<" ans= "<<ans;
            return ans;
        }
        else if(expression[start]=='*'){ //OR
            bool ans=(element || evaluate_sum(expression, length, start+1));
            //cout<<" ans= "<<ans;
            return ans;
        }
        else{
            cout<<"error"<<endl;
            return false;
        }
    }

    void read_expr(char expr[], int expr_size, char symbols[], int symbols_size){
        //Ab hamari bhalai hoigi
        symbol_cnt=symbols_size;
        expr_len=expr_size;

        //cout<<"I am genuinely here"<<endl;

        //First let us initialise symbols and expr properly

        int i=0; //A temporary control variable which also makes sure that the last letter is '\0'
        for(i=0 ; i<symbol_cnt ; i++){
            this->symbols[i].name=symbols[i]; //this is a keyword that brings in the pointer of the current struct object thus "this->" actually just refers explicitly to our data member instead of the local variable we brought in
        } //We have made sure all of the symbols have suitable names
        this->symbols[i].name='\0'; //We need to use this keyword as we have 2 different variables with the same name

        for(i=0; i<expr_size; i++){
            this->expr[i]=expr[i];
        } //Now we can the complete expression written out in the char array
        this->expr[i]='\0'; //Done to limit the string

        //cout<<expr<<endl;
        /*for(int i=0;i<expr_len; i++) cout<<expr[i]<<endl; //this-> always points to self i.e. it only refers to the data members of its own object
        cout<<"I am here"<<endl;*/

        return;
    }
    void print_truth_table(){
        //making the header/ titles of each column
        for(int col=0; col<symbol_cnt ; col++){
            cout<<symbols[col].name<<" "; //We print each variable/ symbol
        }
        cout<<"-> ("<<expr<<")"<<endl;
        //title ends

        for(int row=0; row<pow(2, symbol_cnt); row++ ){ //for loop for each row
            int temp=row; //A temporary variable we will use to make the left part of the columns

            int binary_representation_of_row[symbol_cnt]; //A way we come up with to properly print the binary numbers

            for(int i=0; i<symbol_cnt ; i++){ //temp loop to initial symbols per row and binary_representation_of_row
                binary_representation_of_row[i]=temp%2;
                //cout<<temp%2<<endl;

                initialise();
                if(binary_representation_of_row[i]==1) symbols[symbol_cnt-i-1].value=true;  //The binary representation is reversed so we have to do this to initialise symbols per row
                temp/=2;
            }

            for(int col=symbol_cnt-1; col>=0; col--){
                cout<<binary_representation_of_row[col]<<" ";
            }
            cout<<"-> ";

            //Now we need to evaluate and print the result of the actual expression we have
            cout<<evaluate_sum(expr, expr_len, 0);

            cout<<endl; //To go to the next row
        }
        return;
    }
};
