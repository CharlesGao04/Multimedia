%输入图片
prompt = 'image: ';
image = input(prompt,'s');
%输入x值
prompt = 'x: ';
x = input(prompt);
%输入y值
prompt = 'y: ';
y = input(prompt);
%读取图片
I = imread(image);
%获取点(x,y)及其周围8个点的R、G、B值
for j=y-1:y+1
    for i=x-1:x+1
fprintf('(%d,%d):(%d,%d,%d);\n',i,j,I(i,j,1),I(i,j,2),I(i,j,3))
    end
end