#include<iostream>
#include<cmath>

struct Transaction{
    int user_id; //self explanatory
    bool is_deposit;   //if true, we are adding money, else removing it
    int amount, balance; //amount is the current trans amount and balance is the well balance

    void print(){
        if(amount==0) return; //We have this for the purpose of History's coding

        std::cout<<user_id;
        if(is_deposit) std::cout<<" deposit ";
        else std::cout<<" withdraw ";
        std::cout<<amount<<" "<<balance<<std::endl;
        return;
    }
};

struct History{ //Obviously history has to have a similar structure as Transaction except it doesn't print anything, it just exists
    //We have to store 3 values of is_deposit, amount and balance
    Transaction t[3];

    void initialise(int user_id){ //To initialise all of the transaction history
        for(int i=0;i<3;i++){
            t[i].user_id=user_id;
            t[i].is_deposit=0;
            t[i].amount=0;
            t[i].balance=0;
        }
        return;
    }

    void record(int new_is_deposit, int new_amount, int new_balance){
        //a, b, c have to be accomodated into the first place thus we need to swap
        for(int i=2;i>0;i--){
            t[i].is_deposit=t[i-1].is_deposit;
            t[i].amount=t[i-1].amount;
            t[i].balance=t[i-1].balance;
        }

        t[0].is_deposit=new_is_deposit;
        t[0].amount=new_amount;

        t[0].balance=new_balance;
        //std::cout<<"Right now- our transaction looks like-"<<std::endl;
        //t[0].print();
        //Thus now we have succesfully recorded all of the
        return;
    }

    void print(){
        for(int i=0; i<3; i++)
            t[i].print();
        return;
    }
};

struct User{
    int id; //self explanatory
    int balance; //again " "
    int n_deposits=0, n_withdrawals=0; //deposits and successful withdraws (deposits are always successful)
    //A variable or struct object to store the transaction history of the user. You have to store the last three recent transactions, ordered by their order in the input. For example, if the user performs 5 transactions, the 3 most recent transactions are to be stored.

    History history; //Will store the past 3 transactions


    int deposit(int amount){
        balance+=amount; //simple stuff
        n_deposits++;
        //Now we update our history
        history.record(true, amount, balance); //Obviously is_deposit will be true

        return 0;
    }

    int withdraw(int amount){
        if(balance<amount) return -1;
        balance-=amount;
        n_withdrawals++;
        //Updating history
        history.record(false, amount, balance);

        return 0;
    }

    void print_history(){
        history.print(); //Your user's history gets printed. Bas
    }
};

struct Request{
    int user_id;
    bool is_deposit;
    int amount;

    void print(){ //A specific request can thus be printed
        std::cout<<user_id<<" ";
        if(is_deposit) std::cout<<"deposit ";
        else std::cout<<"withdraw ";
        std::cout<<amount<<std::endl;
    }
};



struct Bank{
    int n_users=0;
    User users[10];
    int n_reqs=0;
    Request reqs[10];

    int add_user(int init_bal){ //Add a user to the bank

        //Obviously add_user will be called exactly as many times as there are users. Thus we can use this function to initialise n_users
        n_users++;
        if(n_users>10){
            n_users=10;
            return -1;
        }

        //Our current user will always have user_id as n_users-1
        int user_id=n_users-1;
        users[user_id].id=user_id; //Simple stuff
        users[user_id].balance=init_bal; //Simple stuff again

        users[user_id].history.initialise(user_id); //We need to initialise the history of every user this way


        return 0;
    } //user successfully added

    void add_request(int user_id, bool is_deposit, int amount){
        //Again we can use this function to intialise n_reqs
        n_reqs++;
        if(n_reqs>10){
            n_reqs=10;
            return;
        }

        //Again current request will always have req number as n_reqs-1
        int req_id=n_reqs-1;
        reqs[req_id].user_id=user_id;
        reqs[req_id].is_deposit=is_deposit;
        reqs[req_id].amount=amount;

        //Thus now we have successfully made sure every request is put in the request queue
        return;
    }

    int get_balance(int user_id){
        return users[user_id].balance;
    }

    int get_num_deposits(int user_id){
        return users[user_id].n_deposits;
    }

    int get_num_withdrawals(int user_id){
        return users[user_id].n_withdrawals;
    }

    void deposit(int user_id, int amount){
        users[user_id].deposit(amount);
        return;
    }

    void withdraw(int user_id, int amount){
        users[user_id].withdraw(amount);
    }

    void print_user_history(int user_id){
        users[user_id].print_history(); //This basically looks at a user based on the user_id and then looks at their history which then prints by using Transaction
    }
};
