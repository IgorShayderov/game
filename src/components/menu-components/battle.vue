<template>
<div class="battle-wrap">
	<h3>Battle</h3>

	<div class="information">
		<div class="player-information">

		</div>
		<div class="opponent-information">
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
		display: flex
	}
	.player-information {
		border: 1px solid black;
		height: 50vh;
		width: 20vw;
	}
	.opponent-information {
		border: 1px solid black;
		height: 50vh;
		width: 20vw;
	}
</style>