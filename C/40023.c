#include "stdio.h"
int main(void)
{
    int count, fen1, fen2, fen5, money;
    int repeat, ri;


    scanf("%d", &repeat);
    for(ri = 1; ri <= repeat; ri++){
        scanf("%d", &money);
		count=0;
        for(fen5=money/5;fen5>=1;fen5--)
			for(fen2=(money-5*fen5)/2;fen2>=1;fen2--)
				for(fen1=(money-5*fen5-2*fen2);fen1>=1;fen1--){
					if(money==5*fen5+2*fen2+fen1){
				       count++;
					   printf("fen5:%d,fen2:%d,fen1:%d,total:%d\n",fen5, fen2, fen1, fen5+fen2+fen1);
					}
				}
    	printf("count = %d\n", count);
	}
}