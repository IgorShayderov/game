<template>
<div class="settings-wrap">
	<h3>Settings</h3>

	<ul class="settings-list">
		<li class="settings-list__item">		
			<label>
				<input type="checkbox">Enable something
			</label>
		</li>
		<li class="settings-list__item">	
			<label>
				<input type="checkbox">Enable something else
			</label>
		<br>
		</li>
		<li class="settings-list__item">	
			<label>
				<input type="radio" name="choosee">Choose between something
			</label>
		</li>
		<li class="settings-list__item">
			<label>
				<input type="radio" name="choosee">Choose between something
			</label>
		</li>
	</ul>

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
	.settings-list__item {
		list-style: none;
	}
</style>