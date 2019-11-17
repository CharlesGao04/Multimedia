function imgray=test_2(imrgb)
%通过对R、G、B分量进行加权平均进行灰度化处理
imgray=0.29900*imrgb(:,:,1)+0.58700*imrgb(:,:,2)+0.11400*imrgb(:,:,3);
%将uint8型转换为double型来计算统计量
I=double(imgray);
%求图像均值
avg=mean2(I);
%获取图片大小
[m,n]=size(I);
s=0;
%求得所有像素与均值的平方和
for x=1:m
    for y=1:n
        s=s+(I(x,y)-avg)^2;
    end
end
%利用方差公式求图像方差并输出
a=s/(m*n-1);
fprintf('方差：%f\n',a);
