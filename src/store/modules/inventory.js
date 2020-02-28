export default {
	namespaced: true,
	state: {
		equipedItems: {
			1: {
				title: 'necklace',
				item: null,
				},
			2: {
				title: 'helmet',
				item: null,
				},
			3: {
				title: 'ring',
				item: null,
				},
			4: {
				title: 'weapon',
				item: null,
				},
			5: {
				title: 'armor',
				item: null,
				},
			6: {
				title: 'shield',
				item: null,
				},
			7: {
				title: 'gloves',
				item: null,
				},
			8: {
				title: 'pants',
				item: null,
				},
			9: {
				title: 'shoes',
				item: null,
			}
		},
		backpackedItems: [{}, {}, {}],
		showedItems: [],
	},
	getters: {
		getItemSlot(state, index) {
			return state.equipedItems[index]
		},
		getBackpackedItems(state) {
			return state.backpackedItems;
		}
	},
	mutations: {
		nextItem(state) {
			const backpackedItems = state.backpackedItems;
			const test = Math.random().toFixed(3);

			backpackedItems.pop();
			backpackedItems.unshift(
				{
					title: test,
				});
		},
		previousItem(state) {
			const backpackedItems = state.backpackedItems;
			const test = Math.random().toFixed(3);

			backpackedItems.shift();
			backpackedItems.push(
				{
					title: test,
				});
			console.log(test);
		},
	},
	actions: {
		nextItem(store) {
			store.commit('nextItem');
		},
		previousItem(store) {
			store.commit('previousItem');
		},
	},
};
