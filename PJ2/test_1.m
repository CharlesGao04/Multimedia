%����ͼƬ
prompt = 'image: ';
image = input(prompt,'s');
%����xֵ
prompt = 'x: ';
x = input(prompt);
%����yֵ
prompt = 'y: ';
y = input(prompt);
%��ȡͼƬ
I = imread(image);
%��ȡ��(x,y)������Χ8�����R��G��Bֵ
for j=y-1:y+1
    for i=x-1:x+1
fprintf('(%d,%d):(%d,%d,%d);\n',i,j,I(i,j,1),I(i,j,2),I(i,j,3))
    end
end