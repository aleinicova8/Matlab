function[c]=multiplication(a,b)
S1=size(a,1);
S2=size(b,2);
S3=size(b,1);
if size(a,2)==size(b,1)
    fprintf("Перемножение матриц возможно")
    m=0;
    c=zeros(S1,S2);
    for i=1:S1
        for j=1:S2
            for k=1:S3
                m=m+a(i,k)*b(k,j);
            end
            c(i,j)=m;
            m=0;
        end
    end
   
else
    fprintf("Перемножение матриц невозможно. Проверьте введённые данные")
end
end
