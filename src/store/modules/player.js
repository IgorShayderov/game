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
		stats: [
			{
				title: 'Hitpoints',
				value: 100,
			},
			{
				title: 'Damage',
				value: 5,
			},
			{
				title: 'Magic damage',
				value: 0,
			},
			{
				title: 'Defence',
				value: 0,
			},
			{
				title: 'Magic defence',
				value: 0,
			},
			{
				title: 'Crittical damage',
				value: 110,
			},
			{
				title: 'Crittical chance',
				value: 0,
			}
		],
		attributes: [
			{
				title: 'Strength',
				value: 5,
			},
			{
				title: 'Endurance',
				value: 5,
			},
			{
				title: 'Vitality',
				value: 5,
			},
			{
				title: 'Free attributes',
				value: 3,
			},
		],
	},
	getters: {
		getBasicInfo(state) {
			return state.basicInfo;
		},
		getStats(state) {
			return state.stats;
		},
		getAttributes(state) {
			return state.attributes;
		},
		getCertainAttribute(state, index) {
			return state.attributes[index].value;
		},
		getFreeAttributes(state) {
			return state.attributes[state.attributes.length - 1].value;
		},
	},
	mutations: {
		addAttribute(state, index) {
			const attribute = state.attributes[index];

			attribute.value += 1;
			state.attributes[state.attributes.length - 1].value -= 1;

			// Бонусы к статам, которые дают атрибуты
			switch(attribute.title) {
				case 'Strength':
					const damage = state.stats.find((statsItem) => statsItem.title === 'Damage');
						damage.value += 1;
					break;
				case 'Endurance':
					const defence = state.stats.find((statsItem) => statsItem.title === 'Defence');
						defence.value += 1;
					break;
				case 'Vitality':
					const hitpoints = state.stats.find((statsItem) => statsItem.title === 'Hitpoints');
						hitpoints.value += 20;
					break;
				default:
					throw new Error(`There is an error in ${attribute.title} attribute.`);
			}
		},
	},
	actions:
	{
		addAttribute(store, index) {
			store.commit('addAttribute', index);
		}
	}
};
