--[[
  Description: Set region at PLAY cursor to time selection
    modified by juan_r to get PLAY position rather than edit cursor
  Version: 1.0.0
  Author: Thonex/Juan_R
  Changelog:
    Initial Release
]]--

function Main()

  Cur_Pos =  reaper.GetPlayPosition()                                                             
  markeridx, regionidx = reaper.GetLastMarkerAndCurRegion( 0, Cur_Pos)                              
  retval, isrgn, pos, rgnend, name, markrgnindexnumber = reaper.EnumProjectMarkers( regionidx )  
  local L_Start, R_End = reaper.GetSet_LoopTimeRange(false, false, 0, 0, false)                     
  reaper.SetProjectMarker( markrgnindexnumber, true, L_Start, R_End, name )
end

Main()
