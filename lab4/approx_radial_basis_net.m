% Aproximation of the given function:
% f(x) = sin^2(3*pi*x)*sin(pi*x)

X = -2:.01:2;
T = (sin(3*pi*X)).^2.* sin(pi*X);
%T = [-.9602 -.5770 -.0729  .3771  .6405  .6600  .4609 ...
%      .1336 -.2013 -.4344 -.5000 -.3930 -.1647  .0988 ...
%      .3072  .3960  .3449  .1816 -.0312 -.2189 -.3201];
% plot(X,T,'+');
% title('Training Vectors');
% xlabel('Input Vector P');
% ylabel('Target Vector T');

eg = 10^(-10); % sum-squared error goal
sc = 0.07;    % spread constant
net1 = newrb(X,T,eg,sc); % incremental network
net2 = newrbe(X, T, sc); % full network

plot(X,T,'+');
xlabel('Input');

Y1 = net1(X);
Y2 = net2(X);

hold on;
plot(X,Y1,'r');
plot(X,Y2,'g');
hold off;
legend({'Target','Output of net1', 'Output of net2'})