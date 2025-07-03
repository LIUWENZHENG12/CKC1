clear
clc
fn=input("File Name= ");
w=imread(fn);
[row,col]=size(w);
D=[0 128;192 64];
DD=[D D+32; D+48 D+16]
B=repmat(D,row/2,col/2);
BB=repmat(DD,row/4,col/4);
wB=w>B;
wBB=w>BB;
subplot(2,2,1),imshow(w)
subplot(2,2,2),imshow(w>127)
subplot(2,2,3),imshow(wB)
subplot(2,2,4),imshow(wBB)
