import Vue from 'vue';
import VueRouter from 'vue-router';

Vue.use(VueRouter);

import Arena from './components/menu-components/arena';
import Dungeon from './components/menu-components/dungeon';
import PlayerInfo from './components/menu-components/player-info';
import Settings from './components/menu-components/settings';
import Shop from './components/menu-components/shop';
import Tavern from './components/menu-components/tavern';
import Inventory from './components/menu-components/inventory';
import E404 from './components/E404';

import {store} from './store/store';

const routes = [
	// {
	// 	path: '',
	// 	redirect: {name: 'tavern'}
	// },
	{
		path: '/arena',
		component: Arena,
	},
	{
		path: '/dungeon',
		component: Dungeon,
	},
	{
		path: '/player-info',
		component: PlayerInfo,
	},
	{
		path: '/settings',
		component: Settings,
	},
	{
		path: '/shop',
		component: Shop,
	},
	{
		name: 'tavern',
		path: '/tavern',
		component: Tavern,
	},
	{
		name: 'inventory',
		path: '/inventory',
		component: Inventory,
	},
	{
		path: '*',
		component: E404,
	},
];

export const router = new VueRouter({
	routes,
	mode: 'history'
});