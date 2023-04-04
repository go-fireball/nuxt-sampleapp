<template>

  <div>
    <div>
      <nuxt-link to="/">Home</nuxt-link>
    </div>
    <div>
      <!-- Other content -->
      <ul>
        <li v-for="song in songs" :key="song.id">
          <nuxt-link :to="'/songs/' + song.id">{{ song.title }}</nuxt-link>
        </li>
      </ul>
    </div>
  </div>
</template>


<script>
export default {
  async asyncData({ $axios }) {
    const songs = await $axios.$get('/data/songs.json');
    return { songs };
  },
};
</script>
