#include <stdio.h>
#include <string.h>

int stringLonger(char *s, char *t);

int main()
{
	char rightString[] = "hello";
	char leftString[] = "hell";
	int big = stringLonger(rightString, leftString);

	char *bigStr = " ";
	if (big > 0)
		bigStr = "rightString";
	else
		bigStr = "leftString";
    printf("x = %s\n", bigStr);
}

/* Determine whether string s is longer than string t*/
int stringLonger(char *s, char *t)
{
	return strlen(s) - strlen(t) > 0;
}
