classdef Ord6thSommerfeld2D
    %ORD6THHELMHOLTZSOMMERFELD2D Summary of this class goes here
    %   Detailed explanation goes here
    
    properties
        h;
        beta;
    end
    
    methods 
        function obj = Ord6thSommerfeld2D( h, beta )
        % Ord6thSommerfeld2D
        % h: the the step of the grid
        % beta: parameter of the formula (pi - k^2 for instance)
            narginchk(2, 2)
            obj = obj.check_param( h, beta );            
        end
        
        function sx = sx( obj )
            sx =  obj.s0;   
        end
        
        function sy = sy( obj )
            sy =  obj.s0;   
        end 
        
    end
    
    methods (Access = private)     
        
        function s0 = s0(obj)
            s0 = 2 * 1i * obj.beta * obj.h * ( 1 ...
                - (obj.beta * obj.h).^2/6 ...
                + (obj.beta * obj.h).^4/120 );  
        end        
        
        function obj = check_param(obj, h, beta )                                 
            p = inputParser;           
            
            addRequired(p, 'h', @isnumeric);   
            addRequired(p, 'beta', @isnumeric);     
            
            parse( p, h, beta );            
            
            obj.h = h;
            obj.beta = beta;
        end        
    end
    
end