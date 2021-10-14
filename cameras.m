classdef cameras
    properties (SetAccess = public)
        frameRate {mustBeNumeric}
        Width {mustBeNumeric}
        Heigth {mustBeNumeric}
        Gain  {mustBeNumeric}
        Exposure  {mustBeNumeric}
        data
    end
    methods
        function preview(obj)
            imagen = reshape(obj.data(:,1),[obj.Width,obj.Heigth])';
            imshow(imagen);
        end
        function previewMov(obj,firstFrame,endFrame,frameRep)
            for i = firstFrame:endFrame
                img{i}=reshape(obj.data(:,i),obj.Width,obj.Heigth)';
                image(img{i});
                title(['Frame: ' num2str(i) '.']);
                pause(1/frameRep);
            end
        end
    end
    %    events
    %    end
end

