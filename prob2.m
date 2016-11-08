clear all;
Ima1=double(imread('green_screen.jpg'));
Ima2=double(imread('backgroun2.jpg'));
Ima2=imresize(Ima2,2.671875);
R1=Ima1(:,:,1);
%imshow(R1);
G1=Ima1(:,:,2);
%imshow(G1);
B1=Ima1(:,:,3);
%imshow(B1);
Y1=0.3*R1+0.59*G1+0.11*B1;
imshow(Y1);
G_Y=mat2gray(G1-Y1);
%imshow(G_Y);
threshold=126/255;
mask=G_Y;
for i=1:2736
    for j=1:2736
        if G_Y(i,j)<threshold
            %display('123');
            mask(i,j)=1;
        else
            mask(i,j)=0;
        end
    end
end
Single=ones(2736);
%imshow(Single-mask);
%imshow(mask);
final(:,:,1)= R1.*mask + (Ima2(:,:,1).*(Single-mask));
final(:,:,2)= G1.*mask + (Ima2(:,:,2).*(Single-mask));
final(:,:,3)= B1.*mask + (Ima2(:,:,3).*(Single-mask));
imshow(mat2gray(final));