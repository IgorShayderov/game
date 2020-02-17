<template>
<main class="main-wrap">
	<header-info
	>
	</header-info>
	<div class="content">
		<main-menu v-show="isMenuShowed">
		</main-menu>
		<router-view v-show="!isMenuShowed">
		</router-view>
	</div>
	<footer-info></footer-info>
</main>
</template>

<script>
import MainMenu from './components/menu'
import HeaderInfo from './components/header'
import FooterInfo from './components/footer'

import {mapGetters} from 'vuex';

export default {
    name: 'app',
    data () {
        return {
            
        }
    },
    computed:
    {
		...mapGetters('menu', {
			isMenuShowed: 'getMenuStatus',
		}),
    },
  components:
   {
	    MainMenu,
	    HeaderInfo,
	    FooterInfo,
   }
}
</script>

<style lang="scss" scoped>
    .main-wrap {
    	display: flex;
    	flex-direction: column;
    	height: 100%;
    }
    .content {
    	height: 100%;
    }
</style>
