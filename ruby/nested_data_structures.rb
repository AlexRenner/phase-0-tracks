packed_room = {
	:boxes => [
		'dvds',
		'books',
		'clothes',
		'electronics',
		'xbox',
		'computer',
		'footwear',
		'silverware',
		'dishes'
	],
	:containers => [
		'dresser',
		{:bookshelves => 3},
		'hamper',
		'garbage'
	],
	:surfaces => [
		'table',
		{:end_tables => 2},
		'entertainment center'
	],
	:seating => [
		{:gameing_chair => 2},
		'recliner',
		'futon',
		'leather chair',
		'leather foot rest',
		{:bed => [
			'mattress',
			'box spring',
			'frame',
			'sheets',
			'pillows'
			]
		}
	],
	:miscelanious => [
		{:guitars => 3},
		'piano',
		'trumpet',
		'lamp',
		'TV'
	]
}

p packed_room
puts ' '
p packed_room[:containers][:bookshelves]
puts ' '
p packed_room[:seating][:bed][0]