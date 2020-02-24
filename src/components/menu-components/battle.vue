<template>
<div class="battle-wrap">
	<h3>Battle</h3>

	<div class="information">
		<div class="player-information">
			<h4 class="player-information__title">Player</h4>

		</div>
		<div class="opponent-information">
			<h4 class="opponent-information__title">Enemy</h4>

		</div>
	</div>
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
	.information {
		display: flex;
		justify-content: center;
	}
	.player-information {
		border: 1px solid black;
		height: 50vh;
		width: 45vw;
	}
	.player-information__title {
		border-bottom: 1px solid black;
	}
	.opponent-information {
		border: 1px solid black;
		height: 50vh;
		width: 45vw;
	}
	.opponent-information__title {
		border-bottom: 1px solid black;
	}
</style>