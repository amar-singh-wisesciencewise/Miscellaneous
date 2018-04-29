#include <stdio.h>


// this code takes an NxN sized 2D array and displays the maximum-sum sub-array
//http://acm.timus.ru/problem.aspx?space=1&num=1146

int main(){
	int size;
	int i,j,i1,j1,i2,j2;
	volatile int max_sum = 0;
	signed int temp1=0,temp2 =0,temp3=0;
	int row_s=0,row_e=0,col_s=0,col_e=0;
//	int ab = 2;
//	printf("%d %d %d ", ab,++ab, ab++);
	
	printf("Enter the size of Array : ");
	scanf("%d",&size);
	
	signed int a[size][size];
	//taking the 2D array
	for(i =0;i<size;i++){
		for (j=0;j<size;scanf("%d",&a[i][j++]));
	}
	//printing the 2D Array
	for(i =0;i<size;i++,printf("\n")){
		for (j=0;j<size;printf("%d  ",a[i][j++]));
	}
	printf("\n");
	
	for(i=0;i<size;i++){
		for(j=0;j<size;j++){
			if(a[i][j]>=max_sum){ //largest element in the array; = cause this would give smallest sized subarray
				row_s =i; row_e = i;
				col_s = j; col_e = j;
				max_sum = a[i][j];
			}
			temp1=0;
			for(i1=i;i1<size;i1++){
				temp1 += a[i1][j];  //single row
				if(temp1> max_sum){ 
					row_s = i;
					row_e = i1;
					col_s = col_e = j;
					max_sum = temp1;
				}	
				temp2 =0;
				for(j1=j;j1<size;j1++){
					temp2 += a[i1][j1];
					if(temp2> max_sum){ 
						row_s = i1;
						row_e = i1;
						col_s = j;
						col_e = j1;
						max_sum = temp2;
					}	
						
					temp3=0;	
					for(i2=i;i2<=i1;i2++){
						for(j2=j;j2<=j1;j2++){
							temp3 += a[i2][j2];
						}	
							
					}		
									
					if(temp3 > max_sum){
						row_s = i;
						row_e = i2-1;
						col_s = j;
						col_e = j2-1;
						max_sum = temp3;
					}	
					
				}//j1
				
			}//i1
			
				
		}//j
		
	}//i
	
	
	printf("\n\nmax sum :  %d\n",max_sum);
	printf("row_s: %d\nrow_e: %d\ncol_s: %d\ncol_e: %d\n",row_s,row_e,col_s,col_e);
	
	
	return 0;
}