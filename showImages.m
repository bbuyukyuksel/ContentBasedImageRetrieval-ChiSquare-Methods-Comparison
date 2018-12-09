function showImages(I_1,I_2,chisquare,title_)
    [~,~,ch] = size(I_1);
    if ch == 1
        co = ["GrayScale"];
    else
        co = ["R","G","B"];
    end
	
    figure;
    imageNum = 1;
    for i=1:ch
        subplot(ch,2,imageNum);
        imageNum = imageNum + 1;
        imshow(uint8(I_1(:,:,i)));
        title([title_,':',num2str(chisquare(i)),' for channel:']);
        subplot(ch,2,imageNum);
        imageNum = imageNum + 1;
        imshow(uint8(I_2(:,:,i)));
        title(co(i));
        
    end
end

