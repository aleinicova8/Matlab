function[newspeed,newcoord]=Limit(speed,coord,dr)
    newcoord=[0 0 0];
    newspeed=[0 0 0];
    for i=1:3
        if coord(i)+dr(i)>50 || coord(i)+dr(i)<0
            newcoord(i)=coord(i);
            newspeed(i)=-speed(i);
        else
             newcoord(i)=coord(i)+dr(i);
             newspeed(i)=speed(i);
        end
    end
end