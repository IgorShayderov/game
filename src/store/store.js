import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

import menu from './modules/menu.js';
import player from './modules/player.js';
import inventory from './modules/inventory.js'

export const store = new Vuex.Store({
	modules: {
		menu,
		player,
		inventory,
	},
	strict: process.env.NODE_ENV !== 'production'
});
