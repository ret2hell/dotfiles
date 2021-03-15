# WeeChat
> backup of my weechat setup

> https://weechat.org/files/doc/stable/weechat_quickstart.en.html
  https://weechat.org/files/doc/stable/weechat_user.en.html

## Table of Contents
- [Setup](#setup)
  - [Home](#home)
- [Plugins](#plugins)
- [Settings](#settings)
- [Triggers](#triggers)
- [Servers](#servers)
- [Services](#services)

---

### Setup
###### Home
```
mkdir $HOME/.weechat/ssl
openssl req -x509 -new -newkey rsa:4096 -sha256 -days 3650 -out $HOME/.weechat/ssl/cert.pem -keyout $HOME/.weechat/ssl/cert.pem
chmod 400 $HOME/.weechat/ssl/cert.pem
```

### Plugins
```
colorize_lines
colorize_nicks
highmon
autojoin
autosort
grep
vimode
```

### Settings
```
/set buflist.format.buffer "${format_number}${indent}${format_nick_prefix}${color_hotlist}${format_name}"
/set buflist.format.buffer_current "${color:,red}${format_buffer}"
/set buflist.format.indent "${color:128}${if:${buffer.next_buffer.local_variables.type}=~^(channel|private)$?├:└}"
/set buflist.format.hotlist_highlight "${color:magenta}"
/set buflist.format.hotlist_message "${color:cyan}"
/set buflist.format.hotlist_private "${color:green}"
/set buflist.look.mouse_wheel off
/set irc.color.input_nick red
/set irc.color.nick_prefixes "y:lightred;q:lightred;a:lightcyan;o:lightgreen;h:lightmagenta;v:yellow;*:lightblue"
/set irc.look.color_nicks_in_nicklist on
/set irc.look.color_nicks_in_names on
/set irc.color.reason_quit red
/set irc.color.topic_new red
/set irc.look.buffer_switch_autojoin off
/set irc.look.buffer_switch_join off
/set irc.ctcp.clientinfo ""
/set irc.ctcp.finger ""
/set irc.ctcp.source ""
/set irc.ctcp.time ""
/set irc.ctcp.userinfo ""
/set irc.ctcp.version ""
/set irc.ctcp.ping ""
/set irc.look.display_ctcp_blocked off
/set irc.look.display_ctcp_reply off
/set irc.look.display_ctcp_unknown off
/set irc.look.display_join_message ""
/set irc.look.display_old_topic off
/set irc.look.item_nick_modes on
/set irc.look.join_auto_add_chantype on
/set irc.look.server_buffer independent
/set irc.look.smart_filter off
/set irc.look.temporary_servers on
/set irc.network.ban_mask_default "*!$ident@$host"
/set irc.server_default.anti_flood_prio_high 0
/set irc.server_default.anti_flood_prio_low 0
/set irc.server_default.autorejoin on
/set irc.server_default.autorejoin_delay 3
/set irc.server_default.command_delay 3
/set irc.server_default.msg_part "G-line: User has been permanently banned from this network."
/set irc.server_default.msg_quit "G-line: User has been permanently banned from this network."
/set irc.server_default.nicks "change,ch4nge, ch4ngee"
/set irc.server_default.realname "change"
/set irc.server_default.sasl_mechanism external
/set irc.server_default.sasl_username "change"
/set irc.server_default.ssl_cert "%h/ssl/cert.pem"
/set irc.server_default.ssl_password "--CHANGEME--"
/set irc.server_default.ssl_verify off
/set irc.server_default.username "change"
/set plugins.var.perl.highmon.first_run false
/set plugins.var.perl.highmon.short_names off
/set sec.crypt.hash_algo sha512
/set weechat.bar.buflist.size_max 20
/set weechat.bar.fset.separator off
/set weechat.bar.input.color_delim cyan
/set weechat.bar.input.items "[input_prompt]+(away),[input_search],[input_paste],input_text"
/set weechat.bar.input.separator off
/set weechat.bar.nicklist.size_max 20
/set weechat.bar.status.color_bg darkgray
/set weechat.bar.status.color_delim red
/set weechat.bar.status.conditions ""
/set weechat.bar.status.items "[time],[buffer_last_number],[buffer_plugin],buffer_number+:+buffer_name+(buffer_modes)+{buffer_nicklist_count}+buffer_zoom+buffer_filter,scroll,[lag],[hotlist],completion"
/set weechat.bar.status.separator off
/set weechat.bar.title.color_bg	darkgray
/set weechat.bar.title.separator off
/set weechat.bar.title.size_max 2
/set weechat.color.chat_delimiters green
/set weechat.color.chat_highlight_bg 236
/set weechat.color.chat_host cyan
/set weechat.color.chat_nick cyan
/set weechat.color.chat_nick_colors "cyan,magenta,green,brown,lightblue,default,lightcyan,lightmagenta,lightgreen,blue,31,35,38,40,49,63,70,80,92,99,112,126,130,138,142,148,160,162,167,169,174,176,178,184,186,210,212,215,247"
/set weechat.color.chat_prefix_error lightred
/set weechat.color.chat_prefix_network magenta
/set weechat.color.chat_prefix_suffix green
/set weechat.color.chat_read_marker magenta
/set weechat.color.chat_time 240
/set weechat.color.chat_time_delimiters 240
/set weechat.color.separator blue
/set weechat.color.status_name_ssl lightgreen
/set weechat.look.prefix_same_nick "└─"
/set weechat.look.prefix_same_nick_middle "├─"
/set weechat.look.bar_more_down "▼"
/set weechat.look.bar_more_left "◀"
/set weechat.look.bar_more_right "▶"
/set weechat.look.bar_more_up "▲"
/set weechat.look.buffer_time_format " %H:%M"
/set weechat.look.confirm_quit on
/set weechat.look.highlight "change"
/set weechat.look.item_buffer_filter "•"
/set weechat.look.mouse on
/set weechat.look.prefix_align_max 20
/set weechat.look.prefix_suffix	"│"
/set weechat.look.quote_time_format "%H:%M"
/set weechat.look.read_marker_string "─"
/set weechat.look.separator_horizontal "─"
/set weechat.look.separator_vertical "│"
/set weechat.look.window_title ""
/set weechat.plugin.autoload *
/set weechat.startup.display_logo off
/set weechat.startup.display_version off
/set plugins.var.python.vimode.imap_esc "jj"
/set script.scripts.download_enabled on
/set weechat.bar.status.conditions "${window.buffer.full_name} != perl.highmon"
/set weechat.bar.input.conditions "${window.buffer.full_name} != perl.highmon"
/set plugins.var.perl.highmon.alignment "channel" 
/window splith 20
/buffer highmon
/window 1
```

---

### Triggers
```
/trigger add input_command_color modifier "500|input_text_display" "${tg_string} =~ ^/($|[^/])" "#/(.+)#${color:black}/${color:red}${re:1}#"
/trigger add url_color modifier "weechat_print" "${tg_tags} !~ irc_quit" ";[a-z]+://\S+;${color:127}${color:underline}${re:0}${color:-underline}${color:reset};" ""
```
---

### Servers
```
/server add freenode ajnvpgl6prmkb7yktvue6im5wiedlz2w32uhcwaamdiecdrfpwwgnlqd.onion/7000 -ssl
/proxy add tor socks5 127.0.0.1 9050
/set irc.server.freenode.proxy "tor"
/set irc.server.freenode.ssl_verify off

/server add efnet irc.servercentral.net/9999 -ssl
/server add unreal irc.unrealircd.org/6697 -ssl
/server add 2f30 irc.2f30.org/6697 -ssl

/set irc.server.freenode.autojoin #archlinux,#gentoo,#vim,##C,#python,#corelan,#weechat,##linux
/set irc.server.2f30.autojoin #2f30
```

### Services
```
/secure passphrase CHANGEME
/secure set networkname CHANGEME
/set irc.server.networkname.command "/msg NickServ IDENTIFY CHANGEME"

/msg NickServ register PASSWORD EMAIL
/msg NickServ ACCESS DEL CHANGEME
/msg NickServ ACCESS ADD *@cc.cc
/msg NickServ AJOIN ADD <channel>
/msg NickServ CERT ADD
/msg NickServ SET AUTOOP ON
/msg NickServ SET HIDE EMAIL ON
/msg NickServ SET HIDE STATUS ON
/msg NickServ SET HIDE USERMASK ON
/msg NickServ SET HIDE QUIT ON
/msg NickServ SET KEEPMODES ON
/msg NickServ SET KILL QUICK
/msg NickServ SET PRIVATE ON
/msg NickServ SET SECURE ON
/msg HostServ REQUEST CHANGE.TO.VHOST
/msg HostServ ON
```
