#include<cstdio>
#include<vector>
#include<algorithm>


using namespace std;

int main()
{
	vector<int> a;
	a.push_back(5);
	a.push_back(2);
	
	
	vector<int>::iterator i,end;
	end=a.end();
	
	for(i=a.begin();i!=end;i++)
	{
		printf("%d\n",*i);
	}
	
	system("pause");
	return 0;
}
