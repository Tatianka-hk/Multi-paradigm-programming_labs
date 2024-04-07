#include <iostream>
#include <fstream>
#include <string>

using namespace std;

int main()
{
    int mpi = 0;
    string** mp =new string *[100000];
    for (int i = 0; i < 100000; i++) {
        mp[i] = new string[4];
    }
    int page = 1;
    int pi = 0;
    //=========================================================
    //open file
    string file_name;
    cout << "Enter file name: "; cin >> file_name;
    file_name += ".txt";
    ifstream file;
    file.open(file_name);
    if (file.is_open()) {
        //=========================================================
       //read words
    read_string:
        string w;
        getline(file, w);
       //  cout << w << endl;
        int i = 0;
    read_word:
        string s;
    cycle_word:
        if (i < w.size()) {
            if (w[i] != ' ' and w[i] != ' ' and w[i] != '!' and w[i] != '?' and w[i] != '.' and w[i] != ',' and w[i] != ';' and w[i] != ':' and !isdigit(w[i]) and w[i] !='(' and w[i]!= '[' and w[i] != '-' and w[i] != ')' and w[i]!=']' and w[i] != '_') {
                char ch = w[i];
                ch = tolower(ch);
                s += ch;
            }
            i++;
            if (w[i] != ' ' and w[i] != ' ' and w[i] != '!' and w[i] != '?' and w[i] != '.' and w[i] != ',' and w[i] != ';' and w[i] != ':' and !isdigit(w[i]) and w[i] != '(' and w[i] != '[' and w[i] != '-' and w[i] != ')' and w[i] != ']' and w[i] != '_') {
                goto cycle_word;
            }
            else {
                i++;
            }
        }
        bool flag = true;
        if (mpi != 0) {
            int it1 = 0;
            //cout << "+++++" << endl;
        check:
            //cout << it1->first << endl;
            if (mp[it1][0] == s) {
                flag = false;
                string s1 = to_string(page);
                if (s1 != mp[mpi][3]) {
                    mp[it1][1] = mp[it1][1] + ", " + s1;
                    mp[it1][3] = s1;
                }
                int var = stoi(mp[it1][2]);
                var++;
                mp[it1][2] = to_string(var);
            }
            it1++;
            if (it1 < mpi) {
                goto check;
            }
        }
        if (s != "for " and s != "the" and flag == true and s.size()>2) {
            pi++;
            mp[mpi][0] = s;
            mp[mpi][1] = to_string(page);
            mp[mpi][2] = "1";
            mp[mpi][3] = to_string(page);
            mpi++;
            if (pi == 200) {
                page++;
                pi = 0;
            }
        }
        //cout << s << endl;
        if (i < w.size()) {
            goto read_word;
        }

        //cout << s << endl;
        if (!file.eof()) {
            goto read_string;
        }

    }
    else {
        cout << "file not found!!!!" << endl;
    }
    file.close();
    //=========================================================
    //sort
    int i1 = 0;
    int i2, var1, var2;
sort_cycle_1:
    //var1 = stoi(mp[i1][1]);
    i2 = 0;
sort_cycle_2:
    var2 = stoi(mp[i2][1]);
    if (i1 != i2 and mp[i2][0] > mp[i1][0]) {
        string temp0 = mp[i1][0];
        string temp1 = mp[i1][1];
        string temp2 = mp[i1][2];
        mp[i1][0] = mp[i2][0];
        mp[i1][1] = mp[i2][1];
        mp[i1][2] = mp[i2][2];
        mp[i2][0] = temp0;
        mp[i2][1] = temp1;
        mp[i2][2] = temp2;
    }
    i2++;
    if (i2 < mpi - 1) {
        goto sort_cycle_2;
    }
    else {
        i1++;
        if (i1 < mpi) {
            goto sort_cycle_1;
        }
    }
    //=========================================================
    //output
    string file_name1;
    cout << "Enter output file name: "; cin >> file_name1;
    file_name1 += ".txt";
    ofstream output_file;
    output_file.open(file_name1);
    int it = 0;
output:
    int var = stoi(mp[it][2]);
    if (var<100) {
        output_file << mp[it][0] << "-" << mp[it][1] << endl;
    }
    it++;
    if (it < mpi ) {
        goto output;
    }
    output_file.close();
}
