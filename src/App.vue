<template>
<main class="main-wrap">
	<header-info
	>
	</header-info>
	<div class="content">
		<transition name="show-menu">
			<main-menu v-show="isMenuShowed">
			</main-menu>
		</transition>
		<transition name="show-content">
			<router-view v-show="!isMenuShowed">
			</router-view>
		</transition>
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
	.show-menu-enter {
		opacity: 0.1;
	}
	.show-menu-enter-active {
		transition-duration: 0.9s;
	}
	.show-menu-enter-to {
		opacity: 1;
	}
	.show-menu-leave {
		opacity: 0.9;
	}
	.show-menu-leave-active {
		transition-duration: 0.9s;
	}
	.show-menu-leave-to {
		opacity: 0.1;
	}
	.show-content-enter {
		opacity: 0.1;
	}
	.show-content-enter-active {
		transition-duration: 0.9s;
	}
	.show-content-enter-to {
		opacity: 1;
	}
	.show-content-leave {
		opacity: 0.9;
	}
	.show-content-leave-active {
		transition-duration: 0.9s;
	}
	.show-content-leave-to {
		opacity: 0.1;
	}
    .main-wrap {
    	display: flex;
    	flex-direction: column;
    	height: 100%;
    }
    .content {
    	height: 100%;
    }
</style>
