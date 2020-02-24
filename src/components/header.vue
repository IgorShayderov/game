<template>
	<header class="header-wrap">
		<button class="header-wrap__menu-button" @click="menuToggle">
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
			changeMenuStatus: 'changeMenuStatus'
		}),
		menuToggle() {
			this.changeMenuStatus();
		}
	},
	computed:
	{

	},
}
</script>

<style lang="scss" scoped>
	.header-wrap {
		height: 15vh;
		background-color: red;
		display: flex;
	}
	.header-wrap__menu-button {
		background-image: url('~images/menu/menu-button.svg');
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
		background-size: contain;
		background-color: grey;
		width: 70px;
		margin: 5px;
	}
</style>