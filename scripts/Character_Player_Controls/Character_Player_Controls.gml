function Character_Player_Controls(){
	switch(is_player)
	{
				case 1:
					up_key=keyboard_check(ord("W"));
					down_key=keyboard_check(ord("S"));
					left_key=keyboard_check(ord("A"));
					right_key=keyboard_check(ord("D"));
				break;
	}
	did_move=0
if up_key
Player_View_Direction=90

if down_key
Player_View_Direction=270

if left_key
Player_View_Direction=180
if right_key
Player_View_Direction=0


if up_key || down_key ||left_key||right_key
did_move=1
}