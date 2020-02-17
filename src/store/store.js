import Vue from 'vue';
import Vuex from 'vuex';

Vue.use(Vuex);

import menu from './modules/menu.js';
import player from './modules/player.js';

export const store = new Vuex.Store({
	modules: {
		menu,
		player,
	},
	strict: process.env.NODE_ENV !== 'production'
});
