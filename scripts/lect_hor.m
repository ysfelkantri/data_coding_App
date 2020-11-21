%**********************************************************%
%                       ENSA FES                           
%                     2éme Année GSEII                    
%*********************************************************
%--Title     : codage par plage RLE          
%--Authors  : EL KANTRI Youssef
%*********************************************************% 
%--Description : -- la lecture d'une 
%                   matrice horizontalement
%*********************************************************%
%**************%      MATLAB Program      %***************%
function s=lect_hor(X)
    s=[];
    for k=1:size(X,1)
        for j=1:size(X,2)
           s= [s X(k,j)];
        end
    end
end