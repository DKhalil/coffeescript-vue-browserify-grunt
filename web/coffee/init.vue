<template>
  <transition name="fade">
  	<router-view></router-view>
  </transition>
</template>

<script>module.exports = {}</script>

<style media="screen">
.fade-enter-active, .fade-leave-active {
transition: opacity .5s
}
.fade-enter, .fade-leave-to /* .fade-leave-active below version 2.1.8 */ {
opacity: 0
}
</style>
