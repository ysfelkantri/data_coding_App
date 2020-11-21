function a=number_of_zeros(v)
n=length(v) ;
c=0 ;
a=0 ;
for i=1:n
    if (v(i)==0)
        c=c+1 ;
        a=max(a,c);
    else
        c=0;
    end 
end
end
