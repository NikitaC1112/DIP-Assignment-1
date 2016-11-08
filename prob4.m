clear all;
I1=imread('lotus.jpg');
m=10;
n=10;
Ifinal(:,:,1)=uint8(colfilt(I1(:,:,1), [m n], 'sliding', @mode)); 
Ifinal(:,:,2)=uint8(colfilt(I1(:,:,2), [m n], 'sliding', @mode));
Ifinal(:,:,3)=uint8(colfilt(I1(:,:,3), [m n], 'sliding', @mode));
imshow(Ifinal);