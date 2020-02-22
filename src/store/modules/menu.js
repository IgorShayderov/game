export default {
	namespaced: true,
	state: 
	{
		isMenuShowed: true,
		menuItems: [
			{
				title: 'Tavern',
				url: '/tavern',
			},
			{
				title: 'Arena',
				url: '/arena',
			},
			{
				title: 'Dungeon',
				url: '/dungeon',
			},
			{
				title: 'Shop',
				url: '/shop',
			},
			{
				title: 'Inventory',
				url: '/inventory',
			},
			{
				title: 'Player info',
				url: '/player-info',
			},
		],
	},
	getters: {
		getMenuStatus(state) {
			return state.isMenuShowed;
		},
		getMenuItems(state) {
			return state.menuItems;
		}
	},
	mutations: {
		changeMenuStatus(state) {
			state.isMenuShowed = state.isMenuShowed ? false : true;
		}
	},
	actions: {
		changeMenuStatus(store) {
			store.commit('changeMenuStatus');
		}

	}
};
