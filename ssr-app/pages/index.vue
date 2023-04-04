<template>
  <div>
    <nuxt-link to="/movies">Movies</nuxt-link> <br/>
    <nuxt-link to="/songs">Songs</nuxt-link> <br/>
  </div>
</template>

<script lang="ts">
import Vue from 'vue'

export default Vue.extend({
  name: 'IndexPage'
})
</script>
