<template>
<div class="arena-wrap">
	<h3>Arena</h3>

	<table class="opponents-list">
		<caption>Choose opponent</caption>
		<tr>
			<th class="opponents-list__title opponents-list__title_name">Name</th>
			<th class="opponents-list__title opponents-list__title_level">Level</th>
			<th class="opponents-list__title opponents-list__title_honour">Honour</th>
		</tr>
		<tr>
			<td class="opponents-list__item">Player 1</td>
			<td class="opponents-list__item">5</td>
			<td class="opponents-list__item">100</td>
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
	.opponents-list {
		margin: auto;
	}
	.opponents-list__title {
		border: 1px solid black;
	}
	.opponents-list__title_name {
		width: 60vw;
	}
	.opponents-list__title_level {
		width: 10vw;
	}
	.opponents-list__title_honour {
		width: 20vw;
	}
	.opponents-list__item {
		border: 1px solid black;
	}
</style>