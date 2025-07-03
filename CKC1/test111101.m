clear
clear figure
clc
choice=input("1.cameraman 2.chickens 3.thylacine,your choice=");
if choice==1
  fn='cameraman.png';
 elseif choice==2
  fn='chickens.png';
 elseif choice==3
  fn='thylacine.png';
 else
  error('Wrong input!!!');
end
c=imread(fn);


subplot(2,2,1),imshow(c);
subplot(2,2,2),imhist(c);
ch=histeq(c);
subplot(2,2,3),imshow(ch);
subplot(2,2,4),imhist(ch);
