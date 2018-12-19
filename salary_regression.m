data = load('salary_Data.txt');
X = data(:, 1); %Years of Experience
y = data(:, 2); %Salary
m = length(y); %training-examples

plotData(X, y);

X = [ones(m, 1), data(:,1)];
theta = zeros(2,1);
iterations = 15000;
alpha = 0.001;

J = computeCost(X, y, theta);
fprintf('\nRunning Gradient Descent ...\n')
theta = gradientDescent(X, y, theta, alpha, iterations);
fprintf('Theta found by gradient descent:\n');
fprintf('%f\n', theta);

hold on;
plot(X(:,2), X*theta, '-')
legend('Training data', 'Linear regression')
hold off
