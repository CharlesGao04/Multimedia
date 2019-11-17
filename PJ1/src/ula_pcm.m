function [a_quan]=ula_pcm(a,n,u)
%ULA_PCM 	u-law PCM encoding of a sequence
%       	[A_QUAN]=MULA_PCM(X,N,U).
%       	X=input sequence.
%       	n=number of quantization levels (even).     	
%		a_quan=quantized output before encoding.
%       U the parameter of the u-law

% todo:
maximum=max(abs(a));
%首先通过一非线性环节以减小输入的动态范围
y=ulaw(a,u);
%输出加到均匀PCM系统上
y_q=u_pcm(y,n);
%通过另一非线性环节，是发送端用的非线性环节的逆特征
a_quan=inv_ulaw(y_q,u);
a_quan=maximum*a_quan; 

end
