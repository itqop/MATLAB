
x = 0:0.01:10;
y = (sin(x)).^2  + (cos(x)).^2;
z = cos(x) + x.^2;
w = x.^2 + log10(x);
subplot(3,2,2); plot(x,y); title('(sin(x))^2  + (cos(x))^2');
subplot(3,2,3); plot(x,z); title('cos(x) + x^2');
subplot(3,2,6); plot(x,w); title('x^2 + log10(x)');
x = 0; x1 = 0; x2 = -10:0.01:-1; x3 = -1:0.01:10;
y = 0; y1 = 0; y2 = 0; y3 = 0;
for i = 1:11 
x(i)= -11+i;
end
for i = 1:11
x1(i) = -1+i;
end
y = (1+abs(x))/(1+x+x.^2).^(1/3); y2 = (1+abs(x2))/(1+x2+x2.^2).^(1/3);
y1 = (1+ (cos(x1)).^4)/(3+x1); y3 = (1+ (cos(x3)).^4)/(3+x3);
figure; plot(x2, y2, '-g', x3, y3, '-g', x, y, '-sm', x1, y1, '-sm');
legend('Matlab vector func','','For i to n func','');
axis square;
grid on;
xlim([-5, 5]);
xlabel('X axis');
ylabel('Y axis');
