puts "Starting to populate Departments"
Department.destroy_all

Department.create!([{
	:name => "Biology"
},
{
	:name => "Chemistry"
},
{
	:name => "Computer Science"
},
{
	:name => "Engineering"
},
{
	:name => "Humanities, Social Sciences, and the Arts"
},
{
	:name => "Mathematics"
},
{
	:name => "Physics"
}])

puts "Created #{Department.all.count} Departments"
