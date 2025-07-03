clear
clc
fn=input("File Name= ");
w=imread(fn);
x=[0 1 2 0 1 2 0 1]/3;
y=[2 2 2 1 1 1 0 0]/3;
for i=1:8
  subplot('position',[x(i), y(i), 0.3, 0.3]);
  imshow(bitget(w,i));
 end

