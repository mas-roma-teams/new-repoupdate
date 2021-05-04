<!DOCTYPE html>
<html>
<head>
	<title>EXAMPLE PEMANGGILAN WAKTU</title>
</head>
<body>
$today = Carbon::now()->isoFormat('D MMMM Y');
// "28 Juni 2020"

$today = Carbon::now()->isoFormat('dddd, D MMMM Y');
// "Minggu, 28 Juni 2020"

$today = Carbon::now()->isoFormat('dddd, D MMM Y');
// "Minggu, 28 Jun 2020"

$registeredAt = $user->created_at->isoFormat('dddd, D MMMM Y');
// "Minggu, 28 Juni 2020"

$lastUpdated = $post->updated_at->diffForHumans(); 
// "2 hari yang lalu"
</body>
</html>