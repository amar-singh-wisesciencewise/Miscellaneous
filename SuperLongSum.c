/*SUPER LONG SUM*/
#include <stdio.h>

int main(){

int length,a,b,i,carry;
scanf("%d",&length);
int a1[length+1];
int a2[length+1];
for(i=0;i<=length;a1[i]=a2[i]=0,i++);

for(i=1;i<=length;i++){
	scanf("%d %d",&a,&b);
	a1[i] = a;
	a2[i] = b;
}
carry =0;
for(i=length;i>=0;i--){
	a1[i] = a1[i]+a2[i]+carry;
	if(a1[i]>=10){
		a1[i] = a1[i]%10;
		carry = 1;
	}else carry = 0;
	
}

for(i=0;i<=length;printf("%d",a1[i++]));


return 0;
}