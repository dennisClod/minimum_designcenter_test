function n = exp(a, x)
    % Copyright 2019 The MathWorks, Inc.
    n = exp_iter(1, a, x);
end

function bool = even(n)
    bool = mod(n, 2) == 0;
end

function y = exp_iter(a, b, n)
    if n == 0
        y = a;
    elseif even(n)
        y = exp_iter(a, b.^2, n / 2);
    else
        y = exp_iter(a * b, b, n - 1);
    end
end
