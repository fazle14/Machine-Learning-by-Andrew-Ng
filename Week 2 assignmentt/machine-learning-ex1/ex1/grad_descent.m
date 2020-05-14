function [theta, j_history] = grad_descent(X,y,alpha,theta,iterations)
m=length(y);
j_history = zeros(iterations,1);

for iter = 1:iterations 
  x=X(:,2); 
  h=X*theta;
  theta0=theta(1) - alpha*(1/m)*sum(h-y);
  theta1=theta(2) - alpha*(1/m)*sum((h-y).*x);
  theta=[theta0;theta1];
  j_history(iter)=computeCost(X,y,theta);
end
disp(min(j_history));  
  
endfunction
