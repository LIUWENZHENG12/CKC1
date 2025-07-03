clear
clc
fn=input("File Name= ");
w=imread(fn);
x=[0 1 2 0 1 2 0 1]/3;
y=[2 2 2 1 1 1 0 0]/3;
subplot('position',[x(1),y(1),0.3,0.3]);
imshow(w);

for i=1:7
  k=2^1;
  subplot('position',[x(i+1), y(i+1), 0.3, 0.3]);
  imshow(grayslice(w,k),gray(k));
 end

