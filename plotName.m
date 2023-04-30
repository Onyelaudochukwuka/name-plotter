% Function to plot values
function [p] = plotName( word )
% transform letters into word
    y = letter2number(word);
%  get set of values for x which is the length of the word
    x = 1:length(y);
% get the coefficient of a polynomial of degree that fits the value from my name
    p = polyfit(x,y, (3 + floor(length(y)/10)));
% get point for values
    y1 = polyval(p,x);
% create figure for plot
    figure
% graph of my name
    plot(x,y, '--m'); 
% hold on for second plot
    hold on;
% polynomial  graph of my name
    plot(x,y1, 'r--')
end