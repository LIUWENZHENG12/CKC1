clear
clear figure
clc
choice=input("1.cameraman 2.black 3.koala ,your choice=");
if choice==1
  fn='cameraman.png';
 elseif choice==2
  fn='black.png';
 elseif choice==3
  fn='koala.png';
 else
  error('Wrong input!!!');

  end
c=imread(fn);
subplot(2,2,1),imshow(c);
f3=fspecial('average'); %lowpass 3*3
f7=fspecial('average',7);
fL=fspecial('laplacian');
c3=imfilter(c,f3,'symmetric');
c7=imfilter(c,f7,'symmetric');
cL=imfilter(c,fL);
edge3=abs(c-c3)*3;
edge7=abs(c-c7)*3;
subplot(2,2,2),imshow(edge3)
subplot(2,2,3),imshow(edge7),
subplot(2,2,4),imshow(cL*3)
