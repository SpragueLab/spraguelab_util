function new_clim = match_clim(gobj,new_clim)

% TODO:
% - if ax is figures, go through and get all the children and make them a
%   set of axes
% - if no input arguments, use get(0,'Children') to get handles

% TODO: make a match_lim.m function that's called from these...

% Tommy Sprague; Mar 31 2020

if nargin < 2
    
      
    % only use axes
    axobj = [];
    for gg = 1:length(gobj)
        if strcmpi(get(gobj(gg),'Type'),'Axes')
            axobj = [axobj gobj(gg)];
        end
        
    end
    
    
    tmp_clim = get(axobj,'CLim');
    
    if iscell(tmp_clim)
        tmp_clim = cell2mat(tmp_clim);
    end
    
    new_clim = [min(tmp_clim(:,1)) max(tmp_clim(:,2))];
    
end

set(axobj,'CLim',new_clim);



return