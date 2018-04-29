//Tower is Hoppable 
//Recursive approche
//[4 2 0 0 2 0] is a hoppable tower

//TODO: Memoization can further improve this code

#include<stdio.h>

int* Ptr;
int Length;

int isHoppable(const int cHeight,const int cStep );

int main(){
	int i,j;
	printf("enter the number steps: ");
	scanf("%d",&Length);
	
	int a[Length];
//	int b[length];
	Ptr = a;
	
	printf("enter the array\n");
	for(i=0;i<Length;scanf("%d",a+(i++)));
	for(i=0;i<Length;printf("%d ",a[i++]));

	if(isHoppable(a[0],0))
		printf("\nThe Tower is hoppable\n");
	

return 0;
}


int isHoppable(const int cHeight,const int cStep ){ //current height and current step
	
	int i;
	
	if(cHeight >= Length - cStep){
		return 1;
	}else{
		for(i=cStep+1;i<= (cStep+cHeight) ; i++){
			if(isHoppable(Ptr[i],i))
				return 1;
		}		
	}
return 0;	
}