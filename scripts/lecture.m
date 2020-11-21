function s=lecture(M)

v= lect_vert(M)
h= lect_hor(M)
z= lect_zigzag(M)

a=number_of_zeros(v)
b=number_of_zeros(h)
c=number_of_zeros(z)

if (max([a,b,c])==a) s=strcat('la lecture vertical est performante, le nombre de zeros successives est : ',string(a))
elseif (max([a,b,c])==b) s=strcat('la lecture horizontal est performante, le nombre de zeros successives est : ',string(b))
else s=strcat('la lecture en zigzag est performante, le nombre de zeros successives est : ',string(c))
end
end