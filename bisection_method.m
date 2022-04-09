m = input("What is the low value of interval? ");
n = input("What is the high value of interval? ");
tol = input("What is the tolarance? ");

a=m;
b=n;
c = (a+b)/2; 
 
while abs(b-a)>tol 
    if (fun(a)*fun(c))<0
        b=c;
    else
        a=c;
    end
    c = (a+b)/2;
end

o = ['Approximate root in the range [', num2str(m),',', num2str(n),']', ' is ', num2str(c)];
disp(o);

function f = fun(x)
    f = x.^(1/3) + log(x);
end