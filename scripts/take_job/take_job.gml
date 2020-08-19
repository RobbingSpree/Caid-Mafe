function take_job(argument0, argument1) {
	var station = argument0;
	var staf = argument1;

	station.staffed_by = staf;
	staf.work_area = station;


}
