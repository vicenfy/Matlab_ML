function output = Myfunction(input)
%UNTITLED3 Summary of this function goes here
%   Detailed explanation goes here

switch input
    case -1
        output = 'negative one';
    case 0
        output = 'zero';
    case 1
        output = 'positive one';
    otherwise
        output = 'other value';
end

end

