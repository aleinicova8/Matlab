classdef ClassName<handle & matlab.mixin.Heterogeneous
    
    properties
        PName(1,1) double =1
    end
    
    methods
        function obj = ClassName(arg)
           arguments
               arg(1,1) double
           end
           obj.PName=arg;
        end
        function show(obj)
           arguments
             obj(1,1) ClassName  
           end
            disp(obj.PName)
        end
    end
    
    methods(Static)
        function what(arg)   
                disp(arg)
        end
    end
    properties (Hidden,Constant)
        pi=3.14
    end
end

