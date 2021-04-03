function[newspeed,newcoord]=calculate(X,speed,M,Q,B,dt)
    q=size(Q,2);
    R=zeros(q,3);
    newspeed=zeros(q,3);
    newcoord=zeros(q,3);
    for i=1:(q-1)
        for j=(i+1):q
            R(i,:)=R(i,:)-qulon(X(i,:),X(j,:),Q(i),Q(j));
            R(j,:)=R(j,:)+qulon(X(i,:),X(j,:),Q(i),Q(j));
        end
    end
    for i=1:q
        R(i,:)=R(i,:)+lorenz(Q(i),speed(i,:),B);
    end
    for i=1:q
        newspeed(i,:)=speed(i,:)+(R(i,:)*dt)/M(i);
        dr=speed(i,:)*dt;
        [v,x]=Limit(newspeed(i,:),X(i,:),dr);
        newspeed(i,:)=v;
        newcoord(i,:)=x;    
    end  
end