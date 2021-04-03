X=[0 0 24; 0 0 26];
Q=zeros(1,2)+2;
M=zeros(1,2)+1;
speed=zeros(2,3);
B=[0 0 0];
dt=1e-1;
for i=1:1000
    [speed,X]=calculate(X,speed,M,Q,B,dt);
     figure(1);
     plot3(X(:,1),X(:,2),X(:,3),"or")
     xlim([0,50])
     ylim([0,50])
     zlim([0,50])
     drawnow
    [Wp,Wk]=CalcEnergy(M,speed,Q,X);
    [Wsum,Wksum,Wpsum]=EnergyS(Wp,Wk,Q)
    figure(2);
    hold on;
    plot(i,Wpsum,"ob",i,Wksum,"oc")
    xlim([0,1000])
    ylim([0,5])
    drawnow
    figure(3);
    hold on;
    plot(i,Wsum,"og")
    xlim([0,1000])
    ylim([0,5])
    drawnow
end

