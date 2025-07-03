clear
clc
fn=input("File Name= ");
w=imread(fn);
wd=double(w);
r=input("input a threshold:");
imshow(wd/r);

