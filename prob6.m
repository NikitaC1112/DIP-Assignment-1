clear all;
Im=imread('maze1.png');
[x, y, z]=size(Im);
IR=Im(:,:,1);
IG=Im(:,:,2);
IB=Im(:,:,3);
%imshow(IR);
flag=1;
for i=18:35:x
    for j=18:35:y
        if IB(i,j)==0 && IG(i,j)==255 && IR(i,j)==255
            flag=0;
            ix=i;
            iy=j;
            break
        end
    end
    if flag==0
        break
    end
end
flag=1;
for i=18:35:x
    for j=18:35:y
        if IR(i,j)==50
            flag=0;
            fx=i;
            fy=j;
            break
        end
    end
    if flag==0
        break
    end
end
cx=ix;
cy=iy;
visited=zeros(x,y);
q=zeros(256,2);
front=1;
rear=1;
visited(cx,cy)=1;
q(rear,1)=cx;
q(rear,2)=cy;
rear=rear+1;
while front<=rear
        if cx==fx && cy==fy
            return;
        end
        q(front:rear,:)
        cx=q(front,1);
        cy=q(front,2);
        for l=1:4
            if visited(cx,cy)==0 && check(cx,cy,Im,l)==1
                visited(cx,cy)=1;
                q(rear,1)=cx;
                q(rear,2)=cy;
                rear=rear+1;
            end
        end
        front=front+1;
end