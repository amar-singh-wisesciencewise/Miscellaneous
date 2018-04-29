//kadane's algorithm for Max Sum contiguious Sub Array

#include <stdio.h>


int main(){
	int length,i,sIndex = 0 ,eIndex = 0 ;
	int max = 0, sum = 0 ; //smallest int
	
	printf("Enter the size of the array : ");
	scanf("%d",&length);
	
	int a[length] ;
	for(i=0;i<length;scanf("%d",a+(i++)));
	for(i=0;i<length;printf("%d ",a[i++]));
	printf("\n");
	
	for(i=0;i<length;i++){
		sum += a[i];
		
		if(sum < 0)
			sum = 0;
		
		if(sum > max){
			max = sum;
			eIndex = i;
		}
		
		if(a[i] >= max){
			max = a[i];
			sum = a[i];
			sIndex = eIndex =i;
		}
		
		
			
										
	}
	
	printf("\n Max: %d sIndex: %d eIndex: %d",max,sIndex,eIndex);

return 0;
}