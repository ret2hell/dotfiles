/* See LICENSE file for copyright and license details. */

/* interval between updates (in ms) */
const unsigned int interval = 1000;

/* text to show if no value can be retrieved */
static const char unknown_str[] = "n/a";

/* maximum output string length */
#define MAXLEN 2048

static const struct arg args[] = {
	/* function, format, argument */
	{ kernel_release, "%s(gentoo) ~ ", NULL},
	{ cpu_perc, "cpu: %s%% | ", NULL },
	//{ ram_perc, "ram: %s%% | ", NULL },
	{ ram_used, "ram: %s | ", NULL },
	{ disk_perc, "disk: %s%% | ", "/"    },
	{ netspeed_rx, "r: %sB/s ", "change_interface" },
	{ netspeed_tx, "t: %sB/s | ", "change_interface" },
	{ run_command, "%2s | ", "network.sh" },
	{ datetime, "%s", "%b %d %R" },
};
