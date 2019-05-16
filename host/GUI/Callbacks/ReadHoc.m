function ReadHoc(filename)
%filename='test1.hoc';
%fileID = fopen(filename,'r');
A_hoc=fileread(filename);
TF = ~contains(A_hoc, 'OriginalDendrite');
TF1 = contains(A_hoc, 'soma');
if (TF == 1) && (TF1 == 1) % it not OriginalDendrite and Yes Soma, just to avoid to delet any hoc file   
    Key   = 'create dendrite[';
    Index = strfind(A_hoc, Key);
    DendriteNumber = sscanf(A_hoc(Index(1) + length(Key):end), '%g', 1);
    tempText = "create dendrite[" + DendriteNumber + "]";
    newStr = erase(A_hoc,tempText);
    fid = fopen(filename, 'w' );
    formatSpec = 'OriginalDendrite= %4.2d \n';
    fprintf(fid, formatSpec,DendriteNumber);
    fprintf(fid,'NumberDendrites=OriginalDendrite+2*(OriginalDendrite-1) \n');
    fprintf(fid,'SeedNumber=OriginalDendrite-1\n');
    fprintf(fid,'create dendrite[NumberDendrites]\n');
    fprintf( fid, newStr );
    fclose(fid);
end
end

