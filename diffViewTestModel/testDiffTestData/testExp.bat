function y = exp(a, x)
    % Copyright 2019 The MathWorks, Inc.
    y = exp_iter(1, a, x);
end

function y = exp_iter(a, n, product)
    if n == 0
        y = product;
    else
        y = exp_iter(a, n - 1, a * product);
    end
end
