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
import Battle from './components/menu-components/battle'
import E404 from './components/E404';

import {store} from './store/store';

const routes = [
	{
	path: '',
	redirect: {name: 'Battle'}
	},
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
		name: 'Settings',
		path: '/settings',
		component: Settings,
	},
	{
		path: '/shop',
		component: Shop,
	},
	{
		name: 'Tavern',
		path: '/tavern',
		component: Tavern,
	},
	{
		name: 'Inventory',
		path: '/inventory',
		component: Inventory,
	},
	{
		name: 'Battle',
		path: '/battle',
		component: Battle,
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