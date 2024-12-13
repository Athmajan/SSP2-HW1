function x = find_x(d,N)

x = zeros(1, N);

for n = 1:N
    if n == 1
        x(n) = d(n);
    elseif n ==2
        x(n) = (1/9)*x(n-1) + d(n);
    elseif n ==3
        x(n) = (1/9)*x(n-1) + (1/9)*x(n-2) + d(n);
    else 
        x(n) = (1/9)*x(n-1) + (1/9)*x(n-2) +(4/9)*x(n-3)+ d(n);
    end
end
end
