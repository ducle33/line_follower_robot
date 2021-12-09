close all; clear all;

global xr1 xr2 xr3 xr4 xr5 xr6 yr1 yr2 yr3 yr4 yr5 yr6 
global d_thresh
path = Reference_map();      

fig = figure;
plot(path(1,:),path(2,:),'b','LineWidth', 2)
xlim([-1.5,1.5]);
ylim([-1,1]);
title('Line Map')
xlabel('X Coordinate (m)'); ylabel('Y Coordinate (m)')
hold on
global mousePos;
mousePos = [0 0]
% Enable data cursor mode
datacursormode on
dcm_obj = datacursormode(fig);
% Set update function
set(dcm_obj,'UpdateFcn',@myupdatefcn)
% Wait while the user to click
disp('Click line to display a data tip, then press "Return"')
pause 
% Export cursor to workspace
info_struct = getCursorInfo(dcm_obj);
if isfield(info_struct, 'Position')
  disp('Clicked position is')
  disp(info_struct.Position)
end
mousePos = [info_struct.Position]
startPos = [0, 0.5];

if (mousePos(1)>=-1 && mousePos(1)<1 && mousePos(2)>=0)
    %Segment1, x decreasing
    ind = ceil(abs(xr1(1)-mousePos(1))/d_thresh) + 2;
    if(ind > length(xr1))
        startPos = [xr2(2), yr2(2)]
    end
    if(ind <=length(xr1))
        startPos = [xr1(ind), yr1(ind)]
    end
end

if (mousePos(1)<-1 && mousePos(2)>=0)
    %Segment2, x decreasing, y decreasing
    Lp = 0; Rp = length(xr2);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr2(Mp)==mousePos(1) && yr2(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr2))
                startPos = [xr3(2), yr3(2)]
            end
            if(ind <= length(xr2))
                startPos = [xr2(ind), yr2(ind)]
            end
            break;
        end
        if (xr2(Mp)<mousePos(1) && yr2(Mp)<mousePos(2) ...
                && sqrt((xr2(Mp)-mousePos(1))^2 + ...
                (yr2(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr2))
                startPos = [xr3(2), yr3(2)]
            end
            if(ind <= length(xr2))
                startPos = [xr2(ind), yr2(ind)]
            end
            break;
        end
        if (xr2(Mp)>mousePos(1) && yr2(Mp)>mousePos(2))
            Lp = Mp + 1;
        end
        if (xr2(Mp)<mousePos(1) && yr2(Mp)<mousePos(2))
            Rp = Mp - 1;
        end
    end
end

if (mousePos(1)<-1 && mousePos(2)<0)
    %Segment3, x increasing, y decreasing
    Lp = 0; Rp = length(xr2);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr3(Mp)==mousePos(1) && yr3(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr3))
                startPos = [xr4(2), yr4(2)]
            end
            if(ind <= length(xr3))
                startPos = [xr3(ind), yr3(ind)]
            end
            break;
        end
        if (xr3(Mp)>mousePos(1) && yr3(Mp)<mousePos(2) ...
                && sqrt((xr3(Mp)-mousePos(1))^2 + ...
                (yr3(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp+2;
            if(ind > length(xr3))
                startPos = [xr4(2), yr4(2)]
            end
            if(ind <= length(xr3))
                startPos = [xr3(ind), yr3(ind)]
            end
            break;
        end
        if (xr3(Mp)<mousePos(1) && yr3(Mp)>mousePos(2))
            Lp = Mp + 1;
        end
        if (xr3(Mp)>mousePos(1) && yr3(Mp)<mousePos(2))
            Rp = Mp - 1;
        end
    end
end

if (mousePos(1)>=-1 && mousePos(1)<1 && mousePos(2)<0)
    %Segment4, x increasing
    ind = ceil(abs(xr4(1)-mousePos(1))/d_thresh) + 2;
    if(ind > length(xr4))
        startPos = [xr5(2), yr5(2)]
    end
    if(ind <= length(xr4))
        startPos = [xr4(ind), yr4(ind)]
    end
end

if (mousePos(1)>=1 && mousePos(2)<0)
    %Segment5, x increasing, y increasing
    Lp = 0; Rp = length(xr5);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr5(Mp)==mousePos(1) && yr5(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr5))
                startPos = [xr6(2), yr6(2)]
            end
            if(ind <= length(xr5))
                startPos = [xr5(ind), yr5(ind)]
            end
            break;
        end
        if (xr5(Mp)>mousePos(1) && yr5(Mp)>mousePos(2) ...
                && sqrt((xr5(Mp)-mousePos(1))^2 + ...
                (yr5(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr5))
                startPos = [xr6(2), yr6(2)]
            end
            if(ind <= length(xr5))
                startPos = [xr5(ind), yr5(ind)]
            end
            break;
        end
        if (xr5(Mp)<mousePos(1) && yr5(Mp)<mousePos(2))
            Lp = Mp + 1;
        end
        if (xr5(Mp)>mousePos(1) && yr5(Mp)>mousePos(2))
            Rp = Mp - 1;
        end
    end
end

if (mousePos(1)>=1 && mousePos(2)>=0)
    %Segment6, x decreasing, y increasing
    Lp = 0; Rp = length(xr6);
    while 1
        Mp = floor((Lp+Rp)/2);
        if (xr6(Mp)==mousePos(1) && yr6(Mp)==mousePos(2))
            ind = Mp + 2;
            if(ind > length(xr6))
                startPos = [xr1(2), yr1(2)]
            end
            if(ind <= length(xr6))
                startPos = [xr6(ind), yr6(ind)]
            end
            break;
        end
        if (xr6(Mp)<mousePos(1) && yr6(Mp)>mousePos(2) ...
                && sqrt((xr5(Mp)-mousePos(1))^2 + ...
                (yr5(Mp)-mousePos(2))^2) < 2*d_thresh)
            ind = Mp + 2;
            if(ind > length(xr6))
                startPos = [xr1(2), yr1(2)]
            end
            if(ind <= length(xr6))
                startPos = [xr6(ind), yr6(ind)]
            end
            break;
        end
        if (xr6(Mp)>mousePos(1) && yr6(Mp)<mousePos(2))
            Lp = Mp + 1
        end
        if (xr6(Mp)<mousePos(1) && yr6(Mp)>mousePos(2))
            Rp = Mp - 1
        end
    end
end




function output_txt = myupdatefcn(~,event_obj)
  % ~            Currently not used (empty)
  % event_obj    Object containing event data structure
  % output_txt   Data cursor text
  pos = get(event_obj, 'Position');
  output_txt = {['x: ' num2str(pos(1))], ['y: ' num2str(pos(2))]};
end
