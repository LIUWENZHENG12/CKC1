clear
clear figure
clc
choice=input("1.cameraman 2.simple1 3.thylacine,your choice=");
if choice==1
  fn='cameraman.png';
 elseif choice==2
  fn='simple1.png';
 elseif choice==3
  fn='thylacine.png';
 else
  error('Wrong input!!!');

  end
c=imread(fn);
subplot(2,2,1),imshow(c);
f3=fspecial('average'); %lowpass 3*3
f7=fspecial('average',7);
f11=fspecial('average',11);
c3=imfilter(c,f3,'symmetric');
c7=imfilter(c,f7,'symmetric');
c11=imfilter(c,f11,'symmetric');
subplot(2,2,2),imshow(c3);
subplot(2,2,3),imshow(c7);
subplot(2,2,4),imshow(c11);
