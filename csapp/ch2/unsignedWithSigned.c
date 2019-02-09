#include <stdio.h>

float sumElements(float a[], unsigned length);

int main()
{
    float a[] = {1, 2, 3, 4};
    // float sum1 = sumElements(a, 0);
    float sum2 = sumElements(a, 4);

    printf("sum = %.1f\n", sum2);
}


/* WARNING: This is buggy code */
float sumElements(float a[], unsigned length)
{
    float sum = 0;

    if (length <= 0)
    {
        printf("数组长度不能为：%d\n", length);
        return -1;
    }

    for (int i = 0; i <= length - 1; i++)
        sum += a[i];

    return sum;
}
