strk = 'Алексеев Сергей 1980 5 4 4 5 3 5';
L = length(strrep(strk,' ',''));%первое
disp(L);
prob = strfind(strk,' '); %второе
L2 = [strk(prob(length(prob))+1:length(strk)) strk(prob(1):prob(length(prob))) strk(1:prob(1)-1)];
disp(L2);
strk2 = strk; %третье
strk2 = strrep(strk2,'1','один');
strk2 = strrep(strk2,'2','два');
strk2 = strrep(strk2,'3','три');
strk2 = strrep(strk2,'4','четыре');
strk2 = strrep(strk2,'5','пять');
strk2 = strrep(strk2,'6','шесть');
strk2 = strrep(strk2,'7','семь');
strk2 = strrep(strk2,'8','восемь');
strk2 = strrep(strk2,'9','девять');
strk2 = strrep(strk2,'0','ноль');
disp(strk2);
k = 1;%четвертое
mas = [];
while k ~= length(strk) 
    if strk(k) == '1' || strk(k) == '2' || strk(k) == '3' || strk(k) == '4' || strk(k) == '5' || strk(k) == '6' || strk(k) == '7' || strk(k) == '8' || strk(k) == '9' || strk(k) == '0' 
        for l=1:length(prob)
            if prob(l)>k
                mas = [mas str2double(strk(k:prob(l)-1))];
                k= prob(l);
                break
            end
        end
    end
    k = k +1;
end
f=fopen('in1.txt','wt'); % пятое
fprintf(f,'Алексеев Сергей 1980 5 4 4 5 3 5\n');
fprintf(f,'0.1 0.2 0.3 9.91\n');
fprintf(f,'1.9 0.4 0.1 8.01\n');
fprintf(f,'4.7 5.1 3.9 7.16\n');
fclose(f);
f=fopen('in1.txt','rt'); % шестое
strk = strk(prob(3)+1:length(strk));
Ff = [];
for k=1:2:12
    Ff = [Ff str2num(strk(k))];
end
Q = fscanf(f,'%s',9);
M = fscanf(f,'%g',[4 3]);
M = M'; 
fclose(f);
File1NameExp='v01'; % седьмое
PictHigh1='200';
DirName1=['C:\Users\test\MATLAB Drive\' File1NameExp];
if ~exist(DirName1)
    mkdir(DirName1);
end
cd(DirName1);
FileHtml=fopen(['00' File1NameExp ' отчет.html'],'wt');
fprintf(FileHtml,['<HTML>\n']);
fprintf(FileHtml,['<head>\n']);
fprintf(FileHtml,['<title>Отчет по лабораторной работе\n']);
fprintf(FileHtml,['</title>\n']);
fprintf(FileHtml,['<META HTTP-EQUIV="Content-Type" CONTENT="text/html; charset=windows">\n']); 
fprintf(FileHtml,['</head>\n']);
fprintf(FileHtml,['<body>\n']);
fprintf(FileHtml,['<center><H3>ОТЧЕТ<br>по лабораторной работе</h3></center>\n']);
n1=1;
n2=2;
fprintf(FileHtml,['<h3>Исходные данные</h3>\n']);
fprintf(FileHtml,'<br>%-5.0f%-5.0f\n',n1,n2);
h1=figure('Name','Модельное изображение (исходное Image0) im3d');
hold on
x=[1:0.01:5];
y=sin(x);
plot(x,y)
hold off 
FileName000=[File1NameExp '_1.jpg'];
saveas(h1,FileName000);
fprintf(FileHtml,['<br><br> Графики\n']);
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml, (['<br><img src="' FileName000 '" height="' PictHigh1 '" >' '\n']));
fprintf(FileHtml,['<a href="' FileName000 '">']);
fprintf(FileHtml,['</a>\n']);
fprintf(FileHtml,['</body>\n']);
fprintf(FileHtml,['</HTML>\n']);
fclose(FileHtml);



