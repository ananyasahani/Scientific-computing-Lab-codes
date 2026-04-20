x = -3:0.01:3;
y=x.^2 -(3*x) +1;
plot(x,y,'r','LineWidth',2);
xlabel('x-axis','FontSize',12);
ylabel('y-axis','FontSize',12);
title('parabola function','FontSize',14);
grid on;

x = 0:0.01:4*pi;
subplot(3,1,1)
plot(x,(x.^2));
title('x^2'); legend('x^2');grid on;
subplot(3,1,2)
plot(x,x.^3);
title('x^3)');legend('x^3'); grid on;
subplot(3,1,3)
plot(x,sin(x) + cos(x));
title('sin(x) + cos(x)');legend('sin(x) +cos(x) '); grid on;

[x,y] = meshgrid(-5:0.2:5);
z = x.^2 - y.^2;
surf(x,y,z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface Plot: z = x^2 - y^2');
colorbar;


[x,y] = meshgrid(-5:0.2:5);
z = exp(-(x.^2 +y.^2));
subplot(2,1,1);
surf(x,y,z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface Plot: z = e^(x^2 +y^2)');
colorbar;
subplot(2,1,2);
contour(x,y,z,20);
title('Contour Plot');
colorbar;
grid on;


t=0:0.01:2*pi;
x = cos(t) ./ (1 + (sin(t)).^2);
y = (cos(t) .* sin(t)) ./ (1 + (sin(t)).^2);
plot(x,y);



x = 0:0.01:4*pi;
subplot(2,2,1)
plot(x,(x.^2));
title('x^2'); legend('x^2');grid on;
subplot(2,2,2)
plot(x,x.^(0.5));
title('x^(0.5)');legend('x^0.5'); grid on;
subplot(2,2,3)
plot(x,exp(x));
title('e^x');legend('e^x'); grid on;
subplot(2,2,4)
plot(x,log(x));
title('ln(x)');legend('ln(x)'); grid on;


[x,y]=meshgrid(-5:0.1:5);
z=sin(sqrt(x.^2+y.^2));
subplot(2,1,1);
surf(x,y,z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface Plot: z = sin((x+y)^0.5)');
colorbar;
subplot(2,1,2);
mesh(x,y,z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('Surface Plot: z = sin((x+y)^0.5)');


[u,v]=meshgrid(-2*pi:0.2:2*pi);
x=(1+(v/2).*cos(u/2)).*cos(u);
y=(1+(v/2).*cos(u/2)).*sin(u);
z=(v/2).*sin(u/2);
surf(x,y,z);
xlabel('X'); ylabel('Y'); zlabel('Z');
title('mobius strip');
colorbar;

x1=0:0.1:1;
x2=1:0.1:4;
x3=4:0.1:10;
x=0:0.1:10;

y1=x1.^2;
y2=exp((x2-1)./2);
y3=exp(3/2)*sin(4*pi./x3);

plot(x1,y1);hold on;
plot(x2,y2);hold on;
plott(x3,y3);
