/* See LICENSE file for copyright and license details. */

/* appearance */
static const char font[]             = "-*-*-medium-*-*-*-14-*-*-*-*-*-*-*";
static const char normbordercolor[]  = "#ffffff";
static const char normbgcolor[]      = "#cccccc";
static const char normfgcolor[]      = "#000000";
static const double norm_opacity     = 0.8;
static const char selbordercolor[]   = "#000000";
static const char selbgcolor[]       = "#ba3850";
static const char selfgcolor[]       = "#ffffff";
static const unsigned int borderpx   = 0;        /* border pixel of windows */
static const unsigned int snap       = 32;       /* snap pixel */
static const unsigned int gaps_width = 7;
static const Bool showbar            = True;     /* False means no bar */
static const Bool topbar             = True;     /* False means bottom bar */

/* tagging */
static const char *tags[] = { "w³", "vi", "myx", "4", "chat", "♬" };

static const Rule rules[] = {
	/* class      instance    title              tags mask           isfloating   monitor */
	{ "Chromium",  NULL,       NULL,                1<<0,             False,       -1 },
	{ "Telegram",  NULL,       NULL,                1<<4,             False,       -1 },
	{  "Spotify",  NULL,       NULL,                1<<5,             False,       -1 },
};

/* layout(s) */
static const float mfact      = 0.55; /* factor of master area size [0.05..0.95] */
static const Bool resizehints = True; /* True means respect size hints in tiled resizals */

static const Layout layouts[] = {
	/* symbol     arrange function */
	{ "[]=",         tile,  True},    /* first entry is default */
	{ "[M]",      monocle,  True},
};

/* key definitions */
#define MODKEY Mod4Mask
#define TAGKEYS(KEY,TAG) \
	{ MODKEY,                       KEY,      view,           {.ui = 1 << TAG} }, \

/* helper for spawning shell commands in the pre dwm-5.0 fashion */
#define SHCMD(cmd) { .v = (const char*[]){ "/bin/sh", "-c", cmd, NULL } }

/* commands */
static const char *dmenucmd[] = { "dmenu_run", "-fn", font, "-nb", normbgcolor, "-nf", normfgcolor, "-sb", selbgcolor, "-sf", selfgcolor, NULL };
static const char *termcmd[]  = { "alacritty", NULL };

static Key keys[] = {
	/* modifier                     key        function        argument */
	{ MODKEY,                       XK_Return, spawn,          {.v = termcmd } },
	{ MODKEY | ShiftMask,           XK_Return, spawn,          {.v = dmenucmd } },
	{ MODKEY,                       XK_q,      killclient,     {0} },
	{ MODKEY,                       XK_Tab,    focusstack,     {.i = +1 } },
	{ MODKEY,                       XK_m,      zoom,           {0} },

	{ MODKEY,                       XK_h,      setmfact,       {.f = -0.05} },
	{ MODKEY,                       XK_l,      setmfact,       {.f = +0.05} },
	{ MODKEY,                       XK_space,  setlayout,      {0} },

	{ MODKEY,                       XK_Left,   cycle_view,     {.i = -1} },
	{ MODKEY,                       XK_Right,  cycle_view,     {.i = +1} },
	{ MODKEY,                       XK_Up,     togglebar,      {.i =  0} },
	{ MODKEY,                       XK_Down,   togglebar,      {.i =  1} },

	TAGKEYS(                        XK_1,                      0)
	TAGKEYS(                        XK_2,                      1)
	TAGKEYS(                        XK_3,                      2)
	TAGKEYS(                        XK_4,                      3)
	TAGKEYS(                        XK_5,                      4)
	TAGKEYS(                        XK_6,                      5)
	TAGKEYS(                        XK_7,                      6)
	// TAGKEYS(                        XK_8,                      7)
	// TAGKEYS(                        XK_9,                      8)

	{ 0,                            XK_Print,  spawn,          SHCMD("maim --format png /dev/stdout | xclip -selection clipboard -t image/png -i")},
	{ ControlMask,                  XK_Print,  spawn,          SHCMD("maim -s --format png /dev/stdout | xclip -selection clipboard -t image/png -i")},
};

/* button definitions */
/* click can be ClkLtSymbol, ClkStatusText, ClkWinTitle, ClkClientWin, or ClkRootWin */
static Button buttons[] = {
	/* click                event mask      button          function        argument */
	{ ClkLtSymbol,          0,              Button1,        setlayout,      {0} },
	{ ClkWinTitle,          0,              Button2,        zoom,           {0} },
	{ ClkStatusText,        0,              Button2,        spawn,          {.v = termcmd } },
	{ ClkClientWin,         MODKEY,         Button1,        movemouse,      {0} },
	{ ClkClientWin,         MODKEY,         Button2,        togglefloating, {0} },
	{ ClkClientWin,         MODKEY,         Button3,        resizemouse,    {0} },
	{ ClkTagBar,            0,              Button1,        view,           {0} },
	{ ClkTagBar,            0,              Button3,        toggleview,     {0} },
	{ ClkTagBar,            MODKEY,         Button1,        tag,            {0} },
	{ ClkTagBar,            MODKEY,         Button3,        toggletag,      {0} },
};

