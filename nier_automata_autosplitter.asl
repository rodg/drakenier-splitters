state("NieRAutomata", "1.0")
{
	bool isWorldLoaded : 0x18F3978;
	byte playerNameSetStatus : 0x1461B38;
	string32 currentCutscene : 0x1978868, 0x1F4;
	bool isCutscenePlaying : 0x146A1AC;
	bool isLoading : 0x18DD444;
}

state("NieRAutomata", "1.01")
{
	bool isWorldLoaded : 0x110ADC0;
	byte playerNameSetStatus : 0x147B4BC;
	string32 currentCutscene : 0x19925E8, 0x1F4;
	bool isCutscenePlaying : 0x1483974;
	bool isLoading : 0x147BF50;
}

init
{
	int moduleSize = modules.First().ModuleMemorySize;
	switch (moduleSize) {
		case 113471488:
			version = "1.0";
			break;
		case 106266624:
			version = "1.01";
			break;
	}
	print("ModuleMemorySize: " + modules.First().ModuleMemorySize.ToString());
}

startup
{
	vars.Cutscenes = new string[] {
	/// Ending A Cutscenes
	// Prologue
	"movie/ev0010.usm", // Crash
	"movie/ev0030.usm", // Marx 1 Start
	"movie/ev0060.usm", // Marx 1 End
	"movie/ev0070.usm", // Marx 2 Start
	"movie/ev0080.usm", // Engels Start
	"movie/ev0090.usm", // Engels Intermission Start
	"movie/ev0120.usm", // Engels Final phase Start
	"movie/ev0140.usm", // Prologue End [A/B]
	// Desert
	"movie/ev0200.usm", // Reboot
	"movie/ev0210.usm", // Landing
	"movie/ev0220.usm", // Resistance Camp
	"movie/ev0240.usm", // Housing District
	"movie/ev0250.usm", // Adam 1 Start
	"movie/ev0260.usm", // Adam 1 End
	// Amusement Park
	"movie/ev0300.usm", // Beauvoir Start
	"movie/ev0310.usm", // Beauvoir Hacking
	"movie/ev0320.usm", // Beauvoir End
	// Devastated Ruins
	"movie/ev0325.usm", // Pascal's Village
	"movie/ev0330.usm", // City Engels [A/B]
	"movie/ev0350.usm", // Negotiations Finish
	// Forest
	"movie/ev0370.usm", // Commercial Facility (Emil)
	"movie/ev0380.usm", // Forest Discovery
	"movie/ev0390.usm", // A2 Start
	"movie/ev0400.usm", // A2 End [A/B]
	// Flooded City
	"movie/ev0430.usm", // Flooded City Discovery
	"movie/ev0440.usm", // Grun Start
	"movie/ev0450.usm", // Grun Laser
	"movie/ev0470.usm", // Grun Arm Swing After Mortar (ev0460 Mortar doesn't work)
	"movie/ev0482.usm", // Grun Fight Finish 
	// Copied City
	"movie/ev0510.usm", // Copied City Discovery
	"movie/ev0520.usm", // Adam 2 Phase 1 Start
	"movie/ev0525.usm", // Adam 2 Phase 2 Start
	"movie/ev0530.usm", // Adam 2 Phase 3 Start
	"movie/ev0550.usm", // Copied City Finish
	// Factory
	"movie/ev0570.usm", // Mooks Start
	"movie/ev0580.usm", // So-Shi End [A/B]
	"movie/ev0610.usm", // Factory End	
	// Endgame
	"movie/ev0630.usm", // Burning Resistance Camp
	"movie/ev0642.usm", // Boku-Shi End
	"movie/ev0655.usm", // Core #1 End
	"movie/ev0660.usm", // Core #2 End
	"movie/ev0670.usm", // Eve Phase 3 Start
	"movie/ev0693.usm", // Ending [A]

	// Ending B Cutscenes
	"movie/ev0262.usm", // Adam Desert Fight Finish
	"movie/ev0322.usm", // Beauvoir Fight Finish
	"movie/ev0352.usm", // Negotiations Finish
	"movie/ev0483.usm", // Grun Fight Finish
	"movie/ev0552.usm", // Copied City Finish
	"movie/ev0650.usm", // Boku-Shi Fight Finish
	"movie/ev0694.usm", // Ending B Finish

	// Ending C/D Cutscenes
	"movie/ev0830.usm", // Bunker Finish
	"movie/ev0875.usm", // A2 Desert Fight Finish
	"movie/ev0940.usm", // Meat Box Finish
	"movie/ev0970.usm", // Pascal Finish
	"movie/ev1010.usm", // Soul Box Finish
	"movie/ev1060.usm", // God Box Finish
	"movie/ev1125.usm", // 2B Clones Finish
	"movie/ev1190.usm", // Red Girls Finish
	"movie/ev1210.usm", // Ko-Shi & Ro-Shi Finish
	"movie/ev1232.usm", // Ending D Finish Variation 1
	"movie/ev1233.usm", // Ending D Finish Variation 2
	"movie/ev1234.usm", // Ending D Finish Variation 3
	"movie/ev1235.usm", // Ending D Finish Variation 4
	"movie/ev1250.usm", // Ending C Finish

	// Ending E Cutscenes
	"movie/ev1270.usm" // Ending E Finish
	};
}

start 
{
	// Thanks Kate for this auto-start logic
	if (current.playerNameSetStatus == 1 && current.isWorldLoaded && current.isWorldLoaded != old.isWorldLoaded)
	{
		return true;
	}
}

split
{
	foreach (string cutscene in vars.Cutscenes)
	{
		if (current.currentCutscene == cutscene && current.isCutscenePlaying && current.isCutscenePlaying != old.isCutscenePlaying)
		{
			return true;
		}
	}
}

isLoading
{
	return current.isLoading;
}
