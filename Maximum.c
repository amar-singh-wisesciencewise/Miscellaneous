//maximum
//http://acm.timus.ru/problem.aspx?space=1&num=1079
#include <stdio.h>

int main(){
	int length,i;
	scanf("%d",&length);
	
	int arr[length];
	int max = 1;
	
	arr[0] = 0;
	arr[1] = 1;
	
	
	for(i=2;i<=length;i++){
		if(i&0x1U){//odd
			arr[i] = arr[(i-1)>>1U]+arr[((i-1)>>1U)+1];
	
		}else{//even
			arr[i] = arr[i>>1U];
		}
		if(arr[i]>max)
			max=arr[i];
	
	}
	
	printf("\nMAX : %d\n",max);
	
	
	return 0;

}