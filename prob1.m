clear all;
Im1=imread('lena1.jpg');
Im2=imread('lena2.jpg');
I=(Im2(:,:,3)-Im1(:,:,3));
figure;
imshow(I);
m=9;
n=9;
Ihist = histeq(I);
Ihist = medfilt2(Ihist);
figure;
imshow(Ihist);
%figure;
%Ihist = medfilt2(Ihist);
%imshow(Ihist);
%figure;
%Igauss = imgaussfilt(Ihist);
%imshow(Igauss);