<template>
	<div class="menu-wrap">
		<ul class="menu-content">
			<router-link v-for='(item, index) in menuItems'
				class="menu-content__item"
				:key="index"
				:to="item.url"
				tag="li"
				>
				<a @click="clickOnLink">{{ item.title }}</a>
			</router-link>
		</ul>
	</div>
</template>

<script>
import {mapActions} from 'vuex';
import {mapGetters} from 'vuex';

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
		clickOnLink() {
			this.showHideMenu();
		}
	},
	computed:
	{
		...mapGetters('menu', {
				menuItems: 'getMenuItems',
		}),
	},
}
</script>

<style lang="scss" scoped>
	.menu-wrap {
		font-size: 1.6rem;
	}
	.menu-content {
		display: flex;
		flex-direction: column;
		align-items: center;
		padding-left: 0;
		margin-top: 1.5vh;
		margin-bottom: 1.5vh;
	}
	.menu-content__item {
		margin: 5px;
		list-style: none;
		border: 1px solid black;
		border-radius: 20px;
		width: 70vw;
		text-align: center;
		cursor: pointer;
	}
	.menu-content__item:hover {
		box-shadow: 0 0 10px blue;
	}
</style>