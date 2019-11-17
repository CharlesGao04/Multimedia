function [a_quan]=ula_pcm(a,n,u)
%ULA_PCM 	u-law PCM encoding of a sequence
%       	[A_QUAN]=MULA_PCM(X,N,U).
%       	X=input sequence.
%       	n=number of quantization levels (even).     	
%		a_quan=quantized output before encoding.
%       U the parameter of the u-law

% todo:
maximum=max(abs(a));
%����ͨ��һ�����Ի����Լ�С����Ķ�̬��Χ
y=ulaw(a,u);
%����ӵ�����PCMϵͳ��
y_q=u_pcm(y,n);
%ͨ����һ�����Ի��ڣ��Ƿ��Ͷ��õķ����Ի��ڵ�������
a_quan=inv_ulaw(y_q,u);
a_quan=maximum*a_quan; 

end
