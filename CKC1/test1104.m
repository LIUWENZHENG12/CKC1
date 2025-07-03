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

w=imread(fn);
imshow(w)
r=input("input a adjustment value: ");
figure,imshow(w+r);
