% Function to plot name letters and returns correlating polynomial
% Example plotName('AB') plots graph and returns "0.33333 x^2 + 0.66667"
function poly = plotName( word )
% transform letters into word
    y = letter2number(word);
%  get set of values for x which is the length of the word
    x = 1:length(y);
% get the coefficient of a polynomial of a degree
% that fits the value from the entered name
    p = polyfit(x,y, (length(y) - ((length(y) > 3) * 3)));
%  convert coefficient into actual polynomial
    poly = poly2str(p, 'x');
% get point for values
    y1 = polyval(p,x);
% create figure for plot
    figure
% graph of my name
    plot(x,y, '--m'); 
    xlabel('Index'),ylabel('Numerical Value');
    title(['A plot of ', word, ' numerical values']);
    grid on;
    hold on;
% hold on for second plot
    hold on;
% polynomial  graph of my name
    plot(x,y1, 'r--')
end