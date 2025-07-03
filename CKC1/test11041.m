clear
clear figure
clc
choice=input("1.cameraman 2.block 3.thylacine,your choice=");
if choice==1
  fn='cameraman.png';
 elseif choice==2
  fn='blocks.jpg';
 elseif choice==3
  fn='thylacine.png';
 else
  error('Wrong input!!!');
end
c=imread(fn);

mask=c>128;
c1=c.*mask;
c2=(255-c).*(1-mask);
imshow(c1+c2);
subplot(2,2,1),imshow(c);
subplot(2,2,2),imshow(c1);
subplot(2,2,3),imshow(c2);
subplot(2,2,4),imshow(c1+c2);
