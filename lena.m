clear all;
i1=imread('lena1.jpg');
 i2=imread('lena2.jpg');
 i3=i2(:,:,3)-i1(:,:,3);

 i3=255-i3;
 i3=abs(i3);

 for i=1:512
     for j=1:512        
         if i3(i,j)<254
             i3(i,j)=i3(i,j)*1/15;
         end;
     end;
 end;
i5=255-i3;
i4=i5;

for l=6:506 
    for j=6:506
        a=i5(l-5:l+5,j-5:j+5);
        x=median(a);
        final=median(x);
        i4(l,j)=final;
    end;
end
i6=imgaussfilt(i4,2);

imshow(i6);