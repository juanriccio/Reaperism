--[[
  @description Set time selection to region at PLAY cursor
  @about  modified by juan_r to get PLAY position rather than edit cursor
  @version 1.0.0
  @author Thonex-Juan_R
  @changelog
    Added @ tags in the header
  @Action_name Set time selection to region at PLAY cursor
]]--



function Main()
  
  Cur_Pos =  reaper.GetPlayPosition()                                                             
  markeridx, regionidx = reaper.GetLastMarkerAndCurRegion( 0, Cur_Pos)
  retval, isrgn, pos, rgnend, name, markrgnindexnumber = reaper.EnumProjectMarkers(  regionidx )
  reaper.GetSet_LoopTimeRange(true, false, pos, rgnend, false )
end

Main()
