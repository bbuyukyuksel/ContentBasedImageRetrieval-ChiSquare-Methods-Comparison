function [hist] = normalized_histogram(images,show,varargin)
if nargin == 3
    name = varargin(1);
else
    name = 'Plot';
end    
image = double(images);
[h,w,ch] = size(image);


hist = zeros(ch,256);
for c=1:ch
    for i=1:h
        for j=1:w
            hist(c,image(i,j,c)+1) = hist(c,image(i,j,c)+1) + 1;
        end
    end
end

for i=1:ch
    hist(i,:) = hist(i,:) ./ sum(hist(i,:));
end

if show
    if ch == 1
        co = ["GrayScale"];
    else
        co = ['R','G','B'];
    end
    figure;
    for i=1:ch
       subplot(ch,1,i);
       bar( (0:1:255) ,hist(i,:));
       title(strcat(name, ' Channel : ', co(i)));
    end
end    
