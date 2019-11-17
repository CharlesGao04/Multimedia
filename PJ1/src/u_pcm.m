    function [a_quan]=u_pcm(a,n)
%U_PCM  	uniform PCM encoding of a sequence
%       	[A_QUAN]=U_PCM(A,N)
%      	    a=input sequence.
%      	    n=number of quantization levels (even).
%      	    a_quan=quantized output before encoding.

%todo:

amax=max(abs(a));
%用a/amax表示归一化输入
a_quan=a/amax;
%长度为2amax的区间被划分为N个相等的子区间，每一个子区间长度为2amax/n
d=2*amax/n;  
q=d.*(0:n-1);
q=q-((n-1)/2)*d; 
%通过遍历量化区间，如果在某个点的声波值满足在某一个区间之内，那么就取该区间的中点进行量化
for i=1:n
a_quan((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2))=q(i).*ones(1,length(find((q(i)-d/2 <= a_quan) & (a_quan <= q(i)+d/2))));
end
a_quan=a_quan*amax; 

end
