<template>
<div class="settings-wrap">
	<h3>Dungeon</h3>

	<table class="dungeon-list">
		<caption>Choose dungeon</caption>
		<tr>
			<th class="dungeon-list__title dungeon-list__title_name">Title</th>
			<th class="dungeon-list__title dungeon-list__title_level">Level</th>
			<th class="dungeon-list__title dungeon-list__title_gold">Gold</th>
		</tr>
		<tr>
			<td class="dungeon-list__item">Black dragon</td>
			<td class="dungeon-list__item">3</td>
			<td class="dungeon-list__item">100</td>
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
	.dungeon-list {
		margin: auto;
	}
	.dungeon-list__title {
		border: 1px solid black;
	}
	.dungeon-list__title_name {
		width: 60vw;
	}
	.dungeon-list__title_level {
		width: 10vw;
	}
	.dungeon-list__title_gold {
		width: 20vw;
	}
	.dungeon-list__item {
		border: 1px solid black;
	}
</style>