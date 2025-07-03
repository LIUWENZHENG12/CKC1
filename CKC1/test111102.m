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
f3=fspecial('average');
f5=fspecial('average',5);
f1=fspecial('laplacian');
c3=imfilter(c,f3,'symmetric');
c5=imfilter(c,f5,'symmetric');
c1=imfilter(c,f1);
subplot(2,2,2),imshow(c3);
subplot(2,2,3),imshow(c5);
subplot(2,2,4),imshow(c1);
