function [chisq] = chisquare(hist1,hist2)
    chisq = sum(((hist1 - hist2).^2) ./ (hist1+1e-15));
end

