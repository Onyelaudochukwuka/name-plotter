% function to convert entered name of any form into a number 
%   Example: letter2number('AB') returns [1,2]
function num = letter2number( word )
% get asc number for letters you input
    asc = double(upper(word));
% create an array of numbers from the input words.
    wordTonumArr = asc - double('A') + 1;
%  create output arrays
    col= wordTonumArr > 0;
    num = wordTonumArr(col);
end