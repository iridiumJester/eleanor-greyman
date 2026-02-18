seconds += 1/speed; 

if (seconds >= 60) {
    seconds = 0;
    minutes += 1;
}
if (minutes >= 60) {
    minutes = 0;
    hours += 1;
}