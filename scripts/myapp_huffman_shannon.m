function [code1,code2,s,tc1,rc1,tc2,rc2] = myapp_huffman_shannon(text)

[code1,tc1,rc1] = myapp_huffman(text)
[code2,tc2,rc2] = myapp_shannon_fano(text)

if (tc1>tc2) s='algorithm du codage de shannon fano est plus performant que celui de huffman'
elseif (tc1<tc2) s='algorithm du codage de huffman est plus performant que celui de shannon fano'
else s='algorithm du codage de shannon fano et celui de huffman ont la meme performance'
end
end
