<template>
	<footer class="footer-wrap">
		<button title="Settings" class="footer-wrap__settings-button"></button>
	</footer>
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
	.footer-wrap {
		height: 15vh;
		background-color: blue;
		display: flex;
		justify-content: flex-end;
	}
	.footer-wrap__settings-button {
		background-image: url('~images/menu/settings.png');
		background-size: contain;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
		background-color: grey;
		padding: 0;
		width: 70px;
		margin: 5px;
	}
</style>