function [z]=ulaw(y,u)
%		u-law nonlinearity for nonuniform PCM
%		X=ULAW(Y,U).
%		Y=input vector.

% todo:
%���任��
z=(log(1+u*abs(y/max(abs(y))))./log(1+u)).*sign(y);
end