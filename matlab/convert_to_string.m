function converted = convert_to_string(x)
    numstr=num2str(x);
    strconcomas=strjoin(cellstr(numstr));
    

    converting=strrep(strconcomas,' ',',');
    converting2=strrep(converting,',,,,,',',');
    converting3=strrep(converting2,',,,,',',');
    converting4=strrep(converting3,',,,',',');
    converting5=strrep(converting4,',,',',');

    
    converted=converting5;
    


end