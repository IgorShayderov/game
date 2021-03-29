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
import { mapActions, mapGetters } from 'vuex';

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
		clickOnLink() {
			this.changeMenuStatus();
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
		position: absolute;
		z-index: 50;
		font-size: 1.6rem;
		left: 50%;
		transform: translate(-50%); 
	}
	.menu-content {
		display: flex;
		flex-direction: column;
		align-items: center;
		padding-left: 0;
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