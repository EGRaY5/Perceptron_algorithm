X_T=[0,1;
0.45,0.89;
0.35,0.94;
0,1;
0.73,0.69;
0.66,0.75;
0.77,0.64;
0.71,0.71]

Y=[-1;-1;-1;-1;+1;+1;+1;+1]

X=X_T'

N=size(X_T,1); %Number of instances  = Number of rows.
num_features=size(X_T,2);
w=zeros(num_features,1);

maxIter=2;

Y_colour=Y+2;

figure(1);
scatter(X(1,:),X(2,:),50,Y_colour,'filled')


for iter=1:maxIter
  for n=1:N
    x=X(:,n);
    y_pred = w'*x;
    
    y=Y(n,1);
    
    if (y_pred*y<=0) %upon error
      w=w+y*x;
      w
      
    endif
        
  endfor
endfor