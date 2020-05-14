function j = cmputecost(X,y,theta)
  j=0;
  m = length(y);
  h =  X*theta;
  sqrerr=(h-y).^2;
  j=(1/(2*m)*sum(sqrerr));
endfunction
