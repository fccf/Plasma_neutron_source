function source = read_iter_source()
name = '40_40';
%name = 'source';
fid = fopen(name,'r');
k = 0;
s = [];
while ~feof(fid);
    line = fgetl(fid);
    key = findstr(line,'SP');
    if ~isempty(key)
        k = k +1;
        for i = 1:7
            data = fgetl(fid);
            s = [s,str2num(data)];
        end
    end;
end;
fclose(fid);
source = reshape(s,40,41);
end