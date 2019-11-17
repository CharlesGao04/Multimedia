%读取图像
I=imread('test_Noise.jpg');
%加椒盐噪声
J2=imnoise(I,'salt & pepper',0.04);
%提取3个分量图像
fr=J2(:,:,1);%提取R通道分量图像
fg=J2(:,:,2);%提取G通道分量图像
fb=J2(:,:,3);%提取B通道分量图像
%分别对每个分量图像进行中值滤波处理
fr_medfilter=medfilt2(fr,[3,3]);
fg_medfilter=medfilt2(fg,[3,3]);
fb_medfilter=medfilt2(fb,[3,3]);
%重建中值滤波后的RGB图像
f_med=cat(3,fr_medfilter,fg_medfilter,fb_medfilter);
%创建预定义的滤波算子
h = fspecial('average',[3 3]);
%对图像进行均值滤波处理
f_ave=imfilter(J2,h);
%画出图像
figure;
subplot(2,2,1),imshow(I),xlabel('原图');
subplot(2,2,2),imshow(J2),xlabel('加椒盐噪声');
subplot(2,2,3),imshow(f_med),xlabel('中值滤波去噪声');
subplot(2,2,4),imshow(f_ave),xlabel('均值滤波去噪声');