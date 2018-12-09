function [I_sq] = im2chisquare(I1,I2,show)
    hist_1 = normalized_histogram(I1,show);
    hist_2 = normalized_histogram(I2,show);
    
    [ch1, ~] = size(hist_1);
    [ch2, ~] = size(hist_2);
    
    I_sq = [];
    
    if ch1 == ch2
        for i=1:ch1
            I_sq = [I_sq; chisquare(hist_1(i,:,:),hist_2(i,:,:))];
        end
    end
end

