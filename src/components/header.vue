<template>
	<header class="header-wrap">
		<button class="header-wrap__menu-button" @click="menuToggle">
			Menu
		</button>
	</header>
</template>

<script>
import {mapActions} from 'vuex';

export default {
	properties:
	{
		
	},
	data () {
		return {
      
		}
	},
	methods:
	{
		...mapActions('menu', {
			showHideMenu: 'showHideMenu'
		}),
		menuToggle() {
			this.showHideMenu();
		}
	},
	computed:
	{

	},
}
</script>

<style lang="scss" scoped>
	.header-wrap {
		border-bottom: 3px solid blue;
		height: 15vh;
		width: 100vw;
		background-color: red;
		display: flex;
	}
	.header-wrap__menu-button {
		border: 1px solid black;
		padding: 0;
		width: 70px;
		margin: 5px;
	}
</style>