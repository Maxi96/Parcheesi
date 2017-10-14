/// get_unused_die_value()

var result;
if(not die[0].used) result = die[0].value;
else result = die[1].value;

return result;
