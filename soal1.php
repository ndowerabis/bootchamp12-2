<?php
// array
function getjson(){

$data['name'] = "Rizal";
$data['age'] = "20";
$data['address'] = "perum samudera bogor";
$data['hobbies'] ="TEST";
$data['is_married'] = 1;
$list_school[0]['name'] = "SMA";
$list_school[0]['year_in'] = 1996;
$list_school[0]['year_out'] = 1999;
$list_school[0]['major'] = NULL;
$list_school[1]['name'] = "D1";
$list_school[1]['year_in'] = 1999;
$list_school[1]['year_out'] = 2000;
$list_school[1]['major'] = NULL;
$data['list_school '] = $list_school;

$skills[0]['skill_name '] = "PHP";
$skills[0]['level'] = 1;

$skills[1]['skill_name'] = "ORACLE APEX";
$skills[1]['level'] = "2";

$data['skills'] = $skills;
$data['interest_in_coding '] = "apa aja";

return json_encode($data);
}

echo getjson();

// data.json

// {"data":[{"id":"USR1","name":"Steve Jobs","company":"Apple"},{"id":"USR2","name":"Bill Gates","company":"Microsoft"},{"id":"USR3","name":"Mark Zuckerberg","company":"Facebook"}]}
?>