export default {
	namespaced: true,
	state: 
	{
		basicInfo: [
			{
				title: 'Name',
				value: 'Hero',
			},
			{
				title: 'Level',
				value: 0,
			},
			{
				title: 'Experience',
				value: 0,
			},
			{
				title: 'To lvl up',
				value: 1000,
			},
			{
				title: 'Gold',
				value: 0,
			},
			{
				title: 'Enemies killed',
				value: 0,
			},
		],
		stats: {
			hitpoints: 100,
			damage: 5,
			defence: 0,
			magicDefence: 0,
			critticalDamage: 100,
			critticalChance: 0,
		},
		attributes: {
			strength: 5,
			endurance: 5,
			vitality: 5,
			freeAttributes: 0,
		}
	},
	getters: {
		getBasicInfo(state) {
			return state.basicInfo;
		},
	}
};