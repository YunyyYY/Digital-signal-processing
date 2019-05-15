% Discrete-time sinusoids whose frequencies are separated by an integer multiple of 2*pi are identical.

n = 0:1:12;
t = 0:0.01:12;
k_max = 3;
% k_max = 4;
k = 0:1:k_max;
w0 = pi/3;
% w = w0 + 2 * k * pi;
w = [1/4 1/2 1 2 3] * pi;
c = ['m','k','r','b'];
% c = ['m','k','r','b', 'g'];

for i = 1:(k_max + 1)
    dis = cos(w(i) * n);
    con = cos(w(i) * t);
    subplot(k_max + 1,1,i);
    stem(n, dis, c(i), 'LineWidth', 1)
    hold on
    plot(t, con, c(i))
    % plot(t, con, 'w')
end

% x(n) = n;
% y1 = cos(w1 * n);
% y2 = cos(w2 * n);
% stem(n,y1)
% stem(n,y2)

