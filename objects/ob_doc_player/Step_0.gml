/// @description Insert description here
// You can write your code in this editor
left = keyboard_check(ord("A"));
right = keyboard_check(ord("D"));
var move = right - left;
dsp=move*pspeed;
if (!place_meeting(x+dsp , y , ob_doc_wall))
{
	x=x+dsp;
}
if(onp){
	if(keyboard_check_pressed(vk_space)){
		wsp = jump;
	}
}
if(!place_meeting(x, y + wsp, ob_doc_wall)){
	y= y+wsp;
}
else {
	while(!place_meeting(x, y+sign(wsp), ob_doc_wall)){
		y=y+sign(wsp);
	}
	wsp=0;
}
wsp = wsp+grv;
onp = place_meeting(x, y+1, ob_doc_wall);

