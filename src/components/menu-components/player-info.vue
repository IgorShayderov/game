<template>
<div class="player-info-wrap">
	<h3 class="player-info-wrap__title">Player information</h3>

	<div class="info-views-wrap">
	    <ul class="basic-info" v-show="currentlyShowed === 1">
	    	<h4 class="basic-info__title">Basic info</h4>
	    	<li class="basic-info__item" v-for="(item, index) in basicInfo" :key="index">{{ item.title }}: {{ item.value }}</li>
	    </ul>

		<ul class="stats" v-show="currentlyShowed === 2">
			<h4 class="stats__title">Stats</h4>
			<li class="stats__item" v-for="(item, index) in stats" :key="index">{{ item.title }}: {{ item.value }}
			<span v-if="/Crittical/gi.test(item.title)">%</span>
			</li>
		</ul>

		<ul class="attributes" v-show="currentlyShowed === 3">
			<h4 class="attributes__title">Attributes</h4>
			<li class="attributes__item" v-for="(item, index) in attributes" :key="index">{{ item.title }}: {{ item.value }}
				<button v-if="item.title != 'Free attributes'" class="attributes__button" title="Add attribute" @click="addAttribute(index)">+</button>
			</li>
		</ul>
	</div>

    <button class="player-info-wrap__button-next" @click="showNext">Next</button>
</div>
</template>

<script>
import {mapActions, mapGetters} from 'vuex';


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
		...mapActions('player', {
			incrementAttribute: 'addAttribute'
		}),
		showNext() {
			if (this.currentlyShowed === this.amountOfInfoViews) {
				this.currentlyShowed = 1;
			} else {
				this.currentlyShowed += 1;
			}
		},
		addAttribute(index) {
			const freeAttributes = this.getFreeAttributes;

			if (freeAttributes > 0) {
				this.incrementAttribute(index);
			}
		}
	},
	computed:
	{
		...mapGetters('player', {
				basicInfo: 'getBasicInfo',
				stats: 'getStats',
				attributes: 'getAttributes',
				getCertainAttribute: 'getCertainAttribute',
				getFreeAttributes: 'getFreeAttributes',
		}),
	},
}
</script>

<style lang="scss" scoped>
	.player-info-wrap {
		background-image: url('~images/menu/character.jpg');
		background-size: cover;
		background-repeat: no-repeat;
		background-position-x: right;
		margin: 0;
		display: flex;
		flex-direction: column;
		height: 77vh;
		color: yellow;
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
	.stats {
		margin: 0;
	}
	.stats__title {
		margin: 0;
	}
	.stats__item {
		list-style-type: none;
	}
	.attributes {
		margin: 0;
	}
	.attributes__title {
		margin: 0;
	}
	.attributes__item {
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