

time_tick++
if time_tick >= time_flow
{
	minute++
	time_tick=0;
}
if minute == 60
{
	minute=0;
	hour++
}
if hour == 24
{
	hour = 0;
	date++
}
if date == 29
{
	date = 1;
	month ++;
}
if month == 13
	month = 1;