    function [a_quan]=u_pcm(a,n)
%U_PCM  	uniform PCM encoding of a sequence
%       	[A_QUAN]=U_PCM(A,N)
%      	    a=input sequence.
%      	    n=number of quantization levels (even).
%      	    a_quan=quantized output before encoding.

%todo:

amax=max(abs(a));
%��a/amax��ʾ��һ������
a_quan=a/amax;
%����Ϊ2amax�����䱻����ΪN����ȵ������䣬ÿһ�������䳤��Ϊ2amax/n
d=2*amax/n;  
q=d.*(0:n-1);
q=q-((n-1)/2)*d; 
%ͨ�������������䣬�����ĳ���������ֵ������ĳһ������֮�ڣ���ô��ȡ��������е��������
for i=1:n
a_quan((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2))=q(i).*ones(1,length(find((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2))));
end
a_quan=a_quan*amax; 

end
