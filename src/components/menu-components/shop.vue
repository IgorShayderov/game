<template>
<div class="shop-wrap">
	<h3>Shop</h3>

	<table class="shop">
		<tr>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
		</tr>
		<tr>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
		</tr>
		<tr>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
		</tr>
		<tr>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
			<td class="shop__item"></td>
		</tr>
	</table>
</div>
</template>

<script>
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

	},
	computed:
	{

	},
}
</script>

<style lang="scss" scoped>
	.shop {
		margin: auto;
	}
	.shop__item {
		border: 1px solid black;
		width: 80px;
		height: 80px;
	}
</style>