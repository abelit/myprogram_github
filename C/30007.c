#include <stdio.h>
#include <math.h>
int main(void)
{
    int a, b, c;
    int repeat, ri;
    double area, perimeter, s;

    scanf("%d", &repeat);
    for(ri = 1; ri <= repeat; ri++){
        scanf("%d%d%d", &a, &b, &c);
		if(a+b>c&&a+c>b&&b+c>a){
			perimeter=a+b+c;
            s=(a+b+c)/2.0;
			area=pow((s*(s-a)*(s-b)*(s-c)),0.5);
			printf("area = %.2f, perimeter = %.2f\n",area, perimeter);
		}else
			printf("These sides do not correspond to a valid triangle\n");

	}
}