function[R]=qulon(r1,r2,Q1,Q2)
R=((Q1*Q2)/(norm(r2-r1))^3)*(r2-r1);
end