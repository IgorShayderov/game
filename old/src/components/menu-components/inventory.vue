<template>
<div class="inventory-wrap">
	<h3 class="player-info-wrap__title">Inventory</h3>

    <table class="inventory">
    	<tr>
			<td id="necklace" title="Necklace" class="inventory__item"></td>
			<td id="helmet" title="Helmet" class="inventory__item"></td>
			<td id="ring" title="Ring" class="inventory__item"></td>
      	</tr>
      	<tr>
			<td id="weapon" title="Weapon" class="inventory__item"></td>
			<td id="armor" title="Armor" class="inventory__item"></td>
			<td id="shield" title="Shield" class="inventory__item"></td>
		</tr>
		<tr>
			<td id="gloves" title="Gloves" class="inventory__item"></td>
			<td id="pants" title="Pants" class="inventory__item"></td>
			<td id="shoes" title="Shoes" class="inventory__item"></td>
		</tr>
    </table>

    <div class="divider"></div>

	<table class="backpack">
     	<tr class="backpack__row">
			<td class="backpack__previous-item" @click="showPreviousItem()"></td>
	
				<transition-group name="backpack-slots"
					v-on:before-enter="beforeEnter"
    				v-on:enter="enter"
    				v-on:leave="leave">
					<td v-for="(item, index) in backpackedItems" :key="item.title || index" class="backpack__item">
						{{ item.title }}
    				</td>
				</transition-group>

			<td class="backpack__next-item" @click="showNextItem()"></td>
     	</tr>
    </table>

</div>
</template>

<script>
import { mapGetters, mapActions } from 'vuex';

export default {
	properties:
	{

	},
	data () {
		return {
			swap: false,
		}
	},
	methods:
	{		
		...mapActions('inventory', {
			nextItem: 'nextItem',
			previousItem: 'previousItem',
		}),
		showNextItem() {
			this.nextItem();
		},
		showPreviousItem() {
			this.previousItem();
		},
		beforeEnter: function (el) {

    	},
		enter: function (el, done) {
		// 			opacity: 0;
		// transform: translateX(-80px);
		},
		leave: function (el, done) {
			

		}
	},
	computed:
	{
		...mapGetters('inventory', {
				backpackedItems: 'getBackpackedItems',
		}),
	},
}
</script>

<style lang="scss" scoped>
	.inventory {
		margin: auto;
	}
	.inventory__item {
		border: 1px solid black;
		width: 80px;
		height: 80px;
	}
	.divider {
		height: 1vh;
		width: 100%;
		background-color: black;
	}
	.previous-item {
		background: red;
		position: absolute;
		height: 10vh;
	}
	.backpack {
		margin: auto;
	}
	.backpack__row {
		position: relative;
	}
	.backpack__previous-item {
		background-image: url('~images/inventory/arrow.svg');
		background-repeat: no-repeat;
		background-position-y: center; 
		cursor: pointer;
		transform: rotate(180deg);
		width: 40px;
	}
	.backpack__next-item {
		background-image: url('~images/inventory/arrow.svg');
		background-repeat: no-repeat;
		background-position-y: center;
		cursor: pointer;
		width: 40px;
	}
	.backpack__item {
		position: relative;
		border: 1px solid black;
		width: 80px;
		height: 80px;
		transition-duration: 0.9s;
	}

	// .backpack-slots-enter {

	// }
	// .backpack-slots-leave {
	// 	left: 280px;
	// 	bottom: 3px;
	// }
	// .backpack-slots-leave-to {
	// 	left: 307px;
	// 	bottom: 3px;
	// 	opacity: 0;
	// }
	// .backpack-slots-leave-active {
	// 	position: absolute;
	// }

	#necklace {
		background-image: url('~images/inventory/necklace.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#helmet {
		background-image: url('~images/inventory/helmet.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#ring {
		background-image: url('~images/inventory/ring.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#weapon {
		background-image: url('~images/inventory/weapon.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#armor {
		background-image: url('~images/inventory/armor.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#shield {
		background-image: url('~images/inventory/shield.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#gloves {
		background-image: url('~images/inventory/gloves.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#pants {
		background-image: url('~images/inventory/pants.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
	#shoes {
		background-image: url('~images/inventory/shoes.svg');
		background-size: 40px 40px;
		background-repeat: no-repeat;
		background-position-y: center;
		background-position-x: center;
	}
</style>