%**********************************************************%
%                       ENSA FES                           
%                     2éme Année GSEII                    
%*********************************************************
%--Title     : codage par plage RLE          
%--Authors  : EL KANTRI Youssef
%*********************************************************% 
%--Description : -- la lecture d'une 
%                   matrice en zigzag
%*********************************************************%
%**************%      MATLAB Program      %***************%
function s=lect_zigzag(X)
    s=[];
    for a=1:size(X,1) 
        for cond=[1:a;a:-1:1] 
           i=cond(1);
           j=cond(2);
           if (mod(a,2)==1)
               s=[s X(j,i)];
           else 
               s=[s X(i,j)];
           end
        end
    end
    for a=size(X,1)-1:-1:1
        for cond= [size(X,2)-a+1:size(X,2);size(X,2):-1:size(X,2)-a+1]
           i=cond(1);
           j=cond(2);
           if (mod(a,2)==1)
               s=[s X(j,i)];
           else 
               s=[s X(i,j)];
           end
        end
    end
end