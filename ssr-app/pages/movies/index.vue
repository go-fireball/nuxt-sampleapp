<template>

  <div>
    <div>
      <nuxt-link to="/">Home</nuxt-link>
    </div>
    <div>
      <!-- Other content -->
      <ul>
        <li v-for="movie in movies" :key="movie.id">
          <nuxt-link :to="'/movies/' + movie.id">{{ movie.title }}</nuxt-link>
        </li>
      </ul>
    </div>
  </div>
</template>



<script>
export default {
  async asyncData({ $axios }) {
    const movies = await $axios.$get('/data/movies.json');
    return { movies };
  },
};
</script>
