--[[
*****************************************************************************************
* 	Author Name			:	Widmer Kai
*
*   Revisions:
*   -- DATE --	--- REV NO ---		--- DESCRIPTION ---
*   
*
*
*
*
*****************************************************************************************
--]]



--*************************************************************************************--
--** 					              XLUA GLOBALS              				     **--
--*************************************************************************************--

-- local execute_switch = 1

--*************************************************************************************--
--** 				              FIND CUSTOM DATAREFS             			    	 **--
--*************************************************************************************--

-- ocusbmapper

fcu_buttons = find_dataref("javasim/fcu/button")

fcu_loc_on = find_dataref("javasim/fcu/loc_on")
fcu_ap1_on = find_dataref("javasim/fcu/ap1_on")
fcu_ap2_on = find_dataref("javasim/fcu/ap2_on")
fcu_athr_on = find_dataref("javasim/fcu/athr_on")
fcu_exped_on = find_dataref("javasim/fcu/exped_on")
fcu_appr_on = find_dataref("javasim/fcu/appr_on")

fcu_hdg_vs_indic_on = find_dataref("javasim/fcu/hdg_vs_indic_on")
fcu_trk_fpa_indic_on = find_dataref("javasim/fcu/trk_fpa_indic_on")
fcu_speed_knots = find_dataref("javasim/fcu/speed_knots")
fcu_speed_mach = find_dataref("javasim/fcu/speed_mach")
fcu_speed_point_on = find_dataref("javasim/fcu/speed_point_on")
fcu_hdg = find_dataref("javasim/fcu/hdg")
fcu_hdg_point_on = find_dataref("javasim/fcu/hdg_point_on")
fcu_alt = find_dataref("javasim/fcu/alt")
fcu_alt_point_on = find_dataref("javasim/fcu/alt_point_on")
fcu_vs = find_dataref("javasim/fcu/vs")


-- aircraft
a321_is_mach = find_dataref("sim/cockpit2/autopilot/airspeed_is_mach")
a321_hdg_trk_mode = find_dataref("AirbusFBW/HDGTRKmode")
a321_metric_alt = find_dataref("AirbusFBW/MetricAlt")
a321_ap1_engaged = find_dataref("AirbusFBW/AP1Engage")
a321_ap2_engaged = find_dataref("AirbusFBW/AP2Engage")
a321_alt_100_1000 = find_dataref("AirbusFBW/ALT100_1000")
a321_loc_on = find_dataref("AirbusFBW/LOConCapt")
a321_athr_mode = find_dataref("AirbusFBW/ATHRmode")
a321_vertical_mode = find_dataref("AirbusFBW/APVerticalMode")
a321_appr_on = find_dataref("AirbusFBW/APPRilluminated")
a321_speed_dashed = find_dataref("AirbusFBW/SPDdashed")
a321_speed_knots_mach = find_dataref("sim/cockpit2/autopilot/airspeed_dial_kts_mach")
a321_speed_managed = find_dataref("AirbusFBW/SPDmanaged")
a321_hdg_dashed = find_dataref("AirbusFBW/HDGdashed")
a321_hdg_managed = find_dataref("AirbusFBW/HDGmanaged")
a321_hdg = find_dataref("sim/cockpit/autopilot/heading_mag")
a321_alt = find_dataref("sim/cockpit/autopilot/altitude")
a321_alt_managed = find_dataref("AirbusFBW/ALTmanaged")
a321_vs_dashed = find_dataref("AirbusFBW/VSdashed")
a321_vs = find_dataref("sim/cockpit/autopilot/vertical_velocity")

a321_loc_cmd = find_command("AirbusFBW/LOCbutton")
a321_athr_cmd = find_command("AirbusFBW/ATHRbutton")
a321_exped_cmd = find_command("AirbusFBW/EXPEDbutton")
a321_appr_cmd = find_command("AirbusFBW/APPRbutton")
a321_speed_up_cmd = find_command("sim/autopilot/airspeed_up")
a321_speed_down_cmd = find_command("sim/autopilot/airspeed_down")
a321_speed_push_cmd = find_command("AirbusFBW/PushSPDSel")
a321_speed_pull_cmd = find_command("AirbusFBW/PullSPDSel")
a321_hdg_up_cmd = find_command("sim/autopilot/heading_up")
a321_hdg_down_cmd = find_command("sim/autopilot/heading_down")
a321_hdg_push_cmd = find_command("AirbusFBW/PushHDGSel")
a321_hdg_pull_cmd = find_command("AirbusFBW/PullHDGSel")
a321_alt_up_cmd = find_command("sim/autopilot/altitude_up")
a321_alt_down_cmd = find_command("sim/autopilot/altitude_down")
a321_alt_push_cmd = find_command("AirbusFBW/PushAltitude")
a321_alt_pull_cmd = find_command("AirbusFBW/PullAltitude")
a321_vs_up_cmd = find_command("sim/autopilot/vertical_speed_up")
a321_vs_down_cmd = find_command("sim/autopilot/vertical_speed_down")
a321_vs_push_cmd = find_command("AirbusFBW/PushVSSel")
a321_vs_pull_cmd = find_command("AirbusFBW/PullVSSel")


--*************************************************************************************--
--** 				                 SYSTEM FUNCTIONS           	    			 **--
--*************************************************************************************--

function processFcuInput()

	if fcu_buttons == 1 then
		if a321_is_mach == 1 then
			a321_is_mach = 0
		else
			a321_is_mach = 1
		end
	elseif fcu_buttons == 2 then
		if a321_hdg_trk_mode == 1 then
			a321_hdg_trk_mode = 0
		else
			a321_hdg_trk_mode = 1
		end
	elseif fcu_buttons == 3 then
		if a321_metric_alt == 1 then
			a321_metric_alt = 0
		else
			a321_metric_alt = 1
		end
	elseif fcu_buttons == 4 then
		a321_loc_cmd:once()
	elseif fcu_buttons == 5 then
		if a321_ap1_engaged == 1 then
			a321_ap1_engaged = 0
		else
			a321_ap1_engaged = 1
		end
	elseif fcu_buttons == 6 then
		if a321_ap2_engaged == 1 then
			a321_ap2_engaged = 0
		else
			a321_ap2_engaged = 1
		end
	elseif fcu_buttons == 7 then
		a321_athr_cmd:once()
	elseif fcu_buttons == 8 then
		a321_exped_cmd:once()
	elseif fcu_buttons == 9 then
		a321_appr_cmd:once()
	elseif fcu_buttons == 10 then
		a321_speed_up_cmd:once()
	elseif fcu_buttons == 11 then
		a321_speed_down_cmd:once()
	elseif fcu_buttons == 12 then
		a321_speed_push_cmd:once()
	elseif fcu_buttons == 13 then
		a321_speed_pull_cmd:once()
	elseif fcu_buttons == 14 then
		a321_hdg_up_cmd:once()
	elseif fcu_buttons == 15 then
		a321_hdg_down_cmd:once()
	elseif fcu_buttons == 16 then
		a321_hdg_push_cmd:once()
	elseif fcu_buttons == 17 then
		a321_hdg_pull_cmd:once()
	elseif fcu_buttons == 18 then
		a321_alt_up_cmd:once()
	elseif fcu_buttons == 19 then
		a321_alt_down_cmd:once()
	elseif fcu_buttons == 20 then
		a321_alt_push_cmd:once()
	elseif fcu_buttons == 21 then
		a321_alt_pull_cmd:once()
	elseif fcu_buttons == 22 then
		a321_alt_100_1000 = 0
	elseif fcu_buttons == 23 then
		a321_alt_100_1000 = 1
	elseif fcu_buttons == 24 then
		a321_vs_up_cmd:once()
	elseif fcu_buttons == 25 then
		a321_vs_down_cmd:once()
	elseif fcu_buttons == 26 then
		a321_vs_push_cmd:once()
	elseif fcu_buttons == 27 then
		a321_vs_pull_cmd:once()
	end
end

function update_light_toggles()
	fcu_ap1_on = a321_ap1_engaged
	fcu_ap2_on = a321_ap2_engaged
	fcu_loc_on = a321_loc_on
	if a321_athr_mode == 2 then
		fcu_athr_on = 1
	else
		fcu_athr_on = 0
	end
	if a321_vertical_mode == 113 then
		fcu_exped_on = 1
	else
		fcu_exped_on = 0
	end
	fcu_appr_on = a321_appr_on
end

function update_display()
	if a321_hdg_trk_mode == 0 then 
		fcu_hdg_vs_indic_on = 1
		fcu_trk_fpa_indic_on = 0
	else
		fcu_hdg_vs_indic_on = 0
		fcu_trk_fpa_indic_on = 1
	end

	-- speed
	if a321_speed_dashed == 1 then
		fcu_speed_knots = -1
		fcu_speed_mach = 0
	elseif a321_is_mach == 1 then
		fcu_speed_mach = a321_speed_knots_mach * 100
		fcu_speed_knots = 0
	else
		fcu_speed_knots = a321_speed_knots_mach
		fcu_speed_mach = 0
	end
	fcu_speed_point_on = a321_speed_managed

	-- hdg
	if a321_hdg_dashed == 1 then
		fcu_hdg = -1
	else
		fcu_hdg = a321_hdg
	end
	fcu_hdg_point_on = a321_hdg_managed

	-- alt
	fcu_alt = a321_alt
	fcu_alt_point_on = a321_alt_managed

	-- vs
	if a321_vs_dashed == 1 then
		fcu_vs = -10000
	else
		fcu_vs = a321_vs
	end
	

end


--*************************************************************************************--
--** 				               XLUA EVENT CALLBACKS       	        			 **--
--*************************************************************************************--

--function aircraft_load() end

--function aircraft_unload() end

--function flight_start()

--end

--function flight_crash() end

function before_physics()
	if fcu_buttons > 0 then
		processFcuInput()
	end
	update_light_toggles()
	update_display()
end

--function after_physics()

--end

--function after_replay() end




--*************************************************************************************--
--** 				               SUB-MODULE PROCESSING       	        			 **--
--*************************************************************************************--

-- dofile("")