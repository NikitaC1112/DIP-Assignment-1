clear all;
Ima=imread('car.png');
%Ima=imread('IMG_1680.JPG');
Ima1 = imgaussfilt(Ima, 2);
Ima2 = imgaussfilt(Ima,0.5);
Imaf=Ima1;
for i=201:207
    for j=1:720
        for k=1:3
            Imaf(i,j,k)=Ima2(i,j,k);
        end
    end
end
for i=235:330
    for j=1:720
        for k=1:3
            Imaf(i,j,k)=Ima2(i,j,k);
        end
    end
end
for i=370:377
    for j=1:720
        for k=1:3
            Imaf(i,j,k)=Ima2(i,j,k);
        end
    end
end
imshow(Imaf);