clear
clc
fn=input(File Name= ");
x=imread(fn);
for i=1:4
   subplot(2,2,1),
   k=1/(2^1);
   imshow(imresize(x,k));
  end

