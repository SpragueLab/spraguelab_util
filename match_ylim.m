function new_ylim = match_ylim(gobj,new_ylim)

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
    
    
    tmp_ylim = get(axobj,'YLim');
    
    if iscell(tmp_ylim)
        tmp_ylim = cell2mat(tmp_ylim);
    end
    
    new_ylim = [min(tmp_ylim(:,1)) max(tmp_ylim(:,2))];
    
end

set(axobj,'YLim',new_ylim);



return