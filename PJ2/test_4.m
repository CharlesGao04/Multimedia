%��ȡͼ��
I=imread('test_Noise.jpg');
%�ӽ�������
J2=imnoise(I,'salt & pepper',0.04);
%��ȡ3������ͼ��
fr=J2(:,:,1);%��ȡRͨ������ͼ��
fg=J2(:,:,2);%��ȡGͨ������ͼ��
fb=J2(:,:,3);%��ȡBͨ������ͼ��
%�ֱ��ÿ������ͼ�������ֵ�˲�����
fr_medfilter=medfilt2(fr,[3,3]);
fg_medfilter=medfilt2(fg,[3,3]);
fb_medfilter=medfilt2(fb,[3,3]);
%�ؽ���ֵ�˲����RGBͼ��
f_med=cat(3,fr_medfilter,fg_medfilter,fb_medfilter);
%����Ԥ������˲�����
h = fspecial('average',[3 3]);
%��ͼ����о�ֵ�˲�����
f_ave=imfilter(J2,h);
%����ͼ��
figure;
subplot(2,2,1),imshow(I),xlabel('ԭͼ');
subplot(2,2,2),imshow(J2),xlabel('�ӽ�������');
subplot(2,2,3),imshow(f_med),xlabel('��ֵ�˲�ȥ����');
subplot(2,2,4),imshow(f_ave),xlabel('��ֵ�˲�ȥ����');