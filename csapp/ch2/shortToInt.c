#include <stdio.h>

int main()
{
    int x = 53191;
    short sx = (short) x;  /* -12345 */
    int y = sx;            /* -12345 */

    printf("x = %d, sx = %d, y = %d\n", x, sx, y);
}
