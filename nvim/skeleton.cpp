#include <bits/stdc++.h>
using namespace std;
//#pragma GCC optimize ("O3")
//#pragma GCC target ("sse4")

#ifndef LOCAL
#define cerr if(false) cerr
#endif
#define endl "\n"

#define out(x) "[" << #x << "=" << x << "]"
struct debug {
    debug() { cerr << "DEBUGGER: " << endl; }
    ~debug() { cerr << endl << "DEBUGGER_END " << endl; }

    template<class T>
    debug& operator <<(const T x) {
        cerr << x << " ";
        return *this;
    }
};

template<class T> inline ostream &operator <<(ostream &out, const vector<T> &x) {
    for(const auto &it : x) {
        out << it << " ";
    }
    return out;
}
template<class T, class T2> inline ostream &operator <<(ostream &out, const pair<T, T2> &x) {
    return out << x.first << " " << x.second;
}
template<class T, class T2> inline bool chkmax(T &x, const T2 &y) { return x < y ? x = y, 1 : 0; }
template<class T, class T2> inline bool chkmin(T &x, const T2 &y) { return x > y ? x = y, 1 : 0; }

typedef long long ll;
const ll mod = 1e9 + 7;
//~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~//

signed main() {
#ifndef LOCAL
    ios_base::sync_with_stdio(false); cin.tie(NULL); cout.tie(NULL);
#endif

    return 0;
}