A = 2
a = 3

clear all   % 清除Workspace中的所有变量
clc         % 清除Command Window中的所有命令

%size
A = rand(3,5)
rows = size(A,1)
cols = size(A,2)

%基础运算 ans
10-7
4+3

%字符串
s = 'a'
abs(s)
char(65)
num2str(65)

%矩阵
A = [1 2 3;4 5 2; 3 2 7]
B = A' %矩阵的倒置
C = A(:) %按列
D = inv(A) %逆矩阵
A*D  %矩阵点乘
E = zeros(10, 5, 3)
E(:,:,1) = rand(10,5)
E(:,:,2) = randi(4,10,5) %在区间（0,5]生成10*5的矩阵
E(:,:,3) = randn(10,5) %数据满足标准正态分布,均值为0，方差σ^2 = 1，标准差σ = 1

%元包数组
A = cell(1,6)
A{1} = ones(3)
A{2} = eye(3) %3*3 单位向量
A{5} = magic(5) %函数可创建几乎任意大小的幻方矩阵
B = A{5}
isequal(A{1}, A{2})

%结构体
books = struct('name',{{'Machine Learning', 'Data Mining'}},'price',[30,40])
books.name %cell
books.price
books.name(1) %cell
books.name{1}

%MATLAB矩阵操作
A = [1 2 3 5]
E = A(:,[1 3 2 4])
B = 1:2:9
C = repmat(B,3,1) %重复三次
D = ones(2,4)
A = [1 2 3 4; 5 6 7 8]
B = [1 1 2 2; 2 2 1 1]
E = A * B'
F = A .* B
G = A / B     % 非奇异 A/B=A*inv(B), A\B=inv(A)*B

A = magic(5)
B = A(2,3)
C = A(3,:) %第三行
D = A(:,4) %第四列
[m,n] = find(A>20)

%MATLAB逻辑与流程控制
A = rand(1,10);
limit = 0.75;

B = (A > limit);
if any(B)   %any(B)=1
    fprintf('Index of values > %4.2f: \n', limit);
    disp(find(B))
else
    disp('All values are below the limit,')
end

k = 5;
hilbert = zeros(k);

for m = 1:k
    for n = 1:k
        hilbert(m,n) = 1/(m+n-1);
    end
end
hilbert

n = 1;
nFactorial = 1;
while nFactorial < 1e100
    n = n + 1;
    nFactorial = nFactorial * n;
end
n

mynumber = input('Enter a number: ');
switch mynumber
    case -1
        disp('negative one');
    case 0
        disp('zero');
    case 1
        disp('positve one');
    otherwise
        disp('other value');
end
%运行函数   
mynumber = input('Enter a number: ');
output = Myfunction(mynumber)

%画图
