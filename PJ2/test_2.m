function imgray=test_2(imrgb)
%ͨ����R��G��B�������м�Ȩƽ�����лҶȻ�����
imgray=0.29900*imrgb(:,:,1)+0.58700*imrgb(:,:,2)+0.11400*imrgb(:,:,3);
%��uint8��ת��Ϊdouble��������ͳ����
I=double(imgray);
%��ͼ���ֵ
avg=mean2(I);
%��ȡͼƬ��С
[m,n]=size(I);
s=0;
%��������������ֵ��ƽ����
for x=1:m
    for y=1:n
        s=s+(I(x,y)-avg)^2;
    end
end
%���÷��ʽ��ͼ�񷽲���
a=s/(m*n-1);
fprintf('���%f\n',a);
