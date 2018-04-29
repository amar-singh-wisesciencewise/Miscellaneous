//Tower is Hoppable
//[4 2 0 0 2 0] is hoppable since a[0] + a[4] >= 6 i.e. length


#include <stdio.h>

int main(){
	
	int length,i,j;
	printf("enter the number steps: ");
	scanf("%d",&length);
	
	int a[length];
	int b[length];
	
	printf("enter the array\n");
	for(i=0;i<length;scanf("%d",a+(i++)));
	for(i=0;i<length;printf("%d ",a[i++]));
	
	for(j=0;j<length;b[j++]=-1); //initializing all the decision array to -1 i.e. not hoppable
	
	for(i=length-1;i>=0;i--){
		if(a[i] >= length - i){ //is directly hopable from present step
			b[i] = 1;
		}
		else{
			for(j=i;j<=(i+a[i]);j++){ //if not directly hoppable then see if it is from any of the possible next steps 
				if(b[j] > 0){//found one step from where it is hoppable 
					b[i] = 1;
					break;
				}
			}	
		}
	}
	if(b[0] > 0)
		printf("\ntowers are hoppable");
		
	return 0;
}