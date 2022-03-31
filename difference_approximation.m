a = input("What is the value a? ");
b = input("What is the value b? ");
n = input("What is the value n? ");

step_size = (b-a)/n;
l = a;
array = zeros;
s = 1;
for m = 1:n
    l = l+step_size;
    array(s) = l;
    s = s+1;
end

fa = (fun(a+step_size)-fun(a))/step_size;
fb = (fun(b)-fun(b-step_size))/step_size;
k = 1;
fn_array = zeros;
for t = 1:(n-2)
    fn = (fun(array(k)+step_size)-fun(array(k)-step_size))/(2*step_size);
    fn_array(k)=fn;
    k = k+1;
end

disp(fa);
disp(fn_array);
disp(fb);
disp(dfun(array(1:18)))
plot(fn_array, dfun(array(1:18)));

function f = fun(x)
    f = x.^3-6*x-3;
end
function f = dfun(x)
    f = 3*x.^2-6;
end