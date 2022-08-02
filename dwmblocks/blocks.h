static const Block blocks[] = {
	 /*Icon*/        /*Command*/             /*Update Interval*/     /*Update Signal*/
	{"Battery:", "echo $(cat /sys/class/power_supply/BAT0/capacity)% ",     5,              0},
	{"Mem:", "free -h | awk '/^Mem/ { print $3\"/\"$2 }' | sed s/i//g",     5,              0},
	{"", "date +'%a %d %b %Y'", 		                               60,              0},
	{"", "date +'%H:%M:%S'", 		                             	1,              0},
	};

//sets delimeter between status commands. NULL character ('\0') means no delimeter.
static char delim[] = " | ";
static unsigned int delimLen = 5;
