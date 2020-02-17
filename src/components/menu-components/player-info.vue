<template>
<div class="player-info-wrap">
	<h3 class="player-info-wrap__title">Player information</h3>

	<div class="info-views-wrap">
	    <ul class="basic-info" v-show="currentlyShowed === 1">
	    	<h4 class="basic-info__title">Basic info</h4>
	    	<li class="basic-info__item" v-for="item in basicInfo">{{ item.title }}: {{ item.value }}</li>
	    </ul>

	    <div class="stats" v-show="currentlyShowed === 2">
	      <strong>Stats:</strong><br>
	      Hitpoints: <span data-info="hitpoints">100</span><br>
	      Damage: <span data-info="damage">5</span> <br>
	      Defence: <span data-info="defence">0</span> <br>
	      Magic defence: <span data-info="magicDefence">0</span> <br>
	      Crittical damage: <span data-info="critDamage">0</span>% <br>
	      Crittical chance: <span data-info="critChance">0</span>% <br>
	    </div>

	    <div class="attributes" v-show="currentlyShowed === 3">
	      <strong>Attributes:</strong><br>
	      <label>Strength: <span>5</span></label>
	      <button class="attributes__button" title="Add attribute">+</button><br>
	      <label>Endurance: <span>5</span></label>
	      <button class="attributes__button" title="Add attribute">+</button><br>
	      <label>Vitality: <span>5</span></label>
	      <button class="attributes__button" title="Add attribute">+</button><br>
	      Free attributes: <span>0</span>
	    </div>
	</div>

    <button class="player-info-wrap__button-next" @click="showNext">Next</button>
</div>
</template>

<script>
import {mapGetters} from 'vuex';

export default {
	properties:
	{

	},
	data () {
		return {
			currentlyShowed: 1,
			amountOfInfoViews: 3,
		}
	},
	methods:
	{
		showNext() {
			if (this.currentlyShowed === this.amountOfInfoViews) {
				this.currentlyShowed = 1;
			} else {
				this.currentlyShowed += 1;
			}
		}
	},
	computed:
	{
		...mapGetters('player', {
				basicInfo: 'getBasicInfo',
		}),
	},
}
</script>

<style lang="scss" scoped>
	.player-info-wrap {
		margin: 0;
		display: flex;
		flex-direction: column;
	}
	.info-views-wrap {
		height: 50vh;
	}
	.player-info-wrap__title {
		text-align: center;
	}
	.basic-info {
		margin: 0;
	}
	.basic-info__title {
		margin: 0;
	}
	.basic-info__item {
		list-style-type: none;
	}
	.attributes__button {
		margin-left: 1vw;
	}
	.player-info-wrap__button-next {
		margin: auto;
		width: 70px;
		height: 70px;
	}
</style>