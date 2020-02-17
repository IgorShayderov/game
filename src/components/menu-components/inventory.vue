<template>
<div class="inventory-wrap">
	<h3 class="player-info-wrap__title">Inventory</h3>

    <table class="inventory">
       <tr>
        <td title="Necklace" class="inventory__item"></td>
        <td title="Helmet" class="inventory__item"></td>
        <td title="Ring" class="inventory__item"></td>
      </tr>
      <tr>
        <td title="Weapon" class="inventory__item"></td>
        <td title="Armor" class="inventory__item"></td>
        <td title="Shield" class="inventory__item"></td>
      </tr>
      <tr>
        <td title="Bracers" class="inventory__item"></td>
        <td title="Leggins" class="inventory__item"></td>
        <td title="Shoes" class="inventory__item"></td>
      </tr>
     </table>

     <div class="divider"></div>

     <table class="backpack">
     	<tr>
     		<td class="backpack__item">
     		</td>
     		<td class="backpack__item">
     		</td>
     		<td class="backpack__item">
     		</td>
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
	.player-info-wrap__title {
	}
	.inventory {
		margin: auto;
	}
	.inventory__item {
		border: 1px solid black;
		width: 80px;
		height: 80px;
	}
	.backpack {
		margin: auto;
	}
	.backpack__item {
		border: 1px solid black;
		width: 80px;
		height: 80px;
	}
	.divider {
		height: 1vh;
		width: 100%;
		background-color: black;
	}
</style>