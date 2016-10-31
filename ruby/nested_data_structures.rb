restaurant = {
	front: {
		section_name: 'floor',
		capacity: 100,
		employees: [
			 'servers',
			 'hosts',
			 'food runners',
			 'bussers',
			 'bartenders'
		],
		areas: [
			'entry',
			'waiting area',
			'restroom',
			'bar',
			'dining room'
		],
	},
	back: {
		section_name: 'kitchen',
		capacity: 30,
		employees: [
			'executive chef',
			'sous chef',
			'line cook',
			'prep cook',
			'dishwasher'
		],
		areas: [
			'prep',
			'storage',
			'freezer',
			'line',
			'dish'
		],
	},
	management: {
		owners: {
			silent_partners: 5,
			corporations: 2,
			venture_firms: 3
		},
		general_manager: 2,
		supervisor: 2
	}
}

restaurant[:front][:areas][2]
restaurant[:management][:owners][:silent_partners]
restaurant[:back][:employees][4]
restaurant[:management][:supervisor]
