function [f cx cy]= check(cx,cy,Im,checkdirection)
if checkdirection==1
    cx=cx+35;
    cx
elseif checkdirection==2
    cx=cx-35;
elseif checkdirection==3
    cy=cy+35;
elseif checkdirection==4
    cy=cy-35;
end
if cx<1 || cx>maxx ||cy<1 ||cy>maxy
    f=0;
else
    if checkdirection==1 
    for i=cx-35:cx
        if Im(i,cy,1)==255 && Im(i,cy,2)==0 && Im(i,cy,3)==0
            cx=cx-35;
             f=0;
            break
        else
            
            f=1;
        end
    end
    elseif checkdirection==2
         for i=cx:cx+35
        if Im(i,cy,1)==255 && Im(i,cy,2)==0 && Im(i,cy,3)==0
            cx=cx+35;
            f=0;
            break
        else
            
            f=1;
        end
         end
    elseif checkdirection==3
         for i=cy-35:cy
        if Im(cx,i,1)==255 && Im(cx,i,2)==0 && Im(cx,i,3)==0
            cy=cy-35;
            f=0;
            break
        else
            %cy=cy-35;
            f=1;
        end
         end
    elseif checkdirection==4
        for i=cy:cy+35
        if Im(cx,i,1)==255 && Im(cx,i,2)==0 && Im(cx,i,3)==0
            cy=cy+35;
            f=0;
            break
        else
            %cy=cy+35;
            f=1;
        end
         end
    end
end
end