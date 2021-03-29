<template>
<div class="tavern-wrap">
	<h3>Tavern</h3>

	

	<table class="quest-list">
		<caption>Quests</caption>
		<tr>
			<th class="quest-list__title quest-list__title_name">Title</th>
			<th class="quest-list__title quest-list__title_gold">Gold</th>
			<th class="quest-list__title quest-list__title_experience">Experience</th>
		</tr>
		<tr>
			<td class="quest-list__item">Kill monster</td>
			<td class="quest-list__item">50</td>
			<td class="quest-list__item">100</td>
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
	.quest-list {
		margin: auto;
	}
	.quest-list__title {
		border: 1px solid black;
	}
	.quest-list__title_name {
		width: 50vw;
	}
	.quest-list__title_gold {
		width: 15vw;
	}
	.quest-list__title_experience {
		width: 25vw;
	}
	.quest-list__item {
		border: 1px solid black;
	}
</style>