I=clear all;
I = imread('car_blur1.png');
%I=imread('1.jpg');

Imask=I;
I=double(I);
radius = 360;
for i= 1:525
    for j=1:720
        if (i-242)^2 + (j-372)^2 > radius^2
            Imask(i,j,:) = [0 0 0];
        else
            Imask(i,j,:) = [255 255 255];
        end;
    end;
end;
m=9;
n=9;
%Imean(:,:,1)=uint8(colfilt(Imask(:,:,1), [m n], 'sliding', @mode)); 
%Imean(:,:,2)=uint8(colfilt(Imask(:,:,2), [m n], 'sliding', @mode));
%Imean(:,:,3)=uint8(colfilt(Imask(:,:,3), [m n], 'sliding', @mode));
%imshow(Imean);
%Imean=double(Imean);
Imean= imgaussfilt(Imask,49);
figure;
imshow(Imean);
Imean=double(Imean);
figure;
imshow(Imean);
Ifinal(:,:,1) = I(:,:,1).*Imean(:,:,1);
Ifinal(:,:,2) = I(:,:,2).*Imean(:,:,2);
Ifinal(:,:,3) = I(:,:,3).*Imean(:,:,3);
figure;
imshow(mat2gray(Ifinal));