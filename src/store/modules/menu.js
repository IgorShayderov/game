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
				title: 'Shop',
				url: '/shop',
			},
			{
				title: 'Dungeon',
				url: '/dungeon',
			},
			{
				title: 'Inventory',
				url: '/inventory',
			},
			{
				title: 'Player info',
				url: '/player-info',
			},
			{
				title: 'Settings',
				url: '/settings',
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
		showHideMenu(store) {
			store.commit('changeMenuStatus');
		}

	}
};
