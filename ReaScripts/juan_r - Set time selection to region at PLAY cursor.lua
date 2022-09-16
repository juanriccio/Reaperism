--[[
    Description: Set time selection to region at PLAY cursor
    Version: 1.0.0
    Author: Thonex, modified by juan_r 2021.02.12 to get PLAY position rather than edit cursor
    Changelog:
        Initial Release
]]--



function Main()
  
  Cur_Pos =  reaper.GetPlayPosition()                                                             
  markeridx, regionidx = reaper.GetLastMarkerAndCurRegion( 0, Cur_Pos)
  retval, isrgn, pos, rgnend, name, markrgnindexnumber = reaper.EnumProjectMarkers(  regionidx )
  reaper.GetSet_LoopTimeRange(true, false, pos, rgnend, false )
end

Main()