<template>
  <main id="main" role="main">
    <Sample></Sample>
  </main>
</template>

<script>
// import Hello from './components/Hello'
import Sample from './components/Sample'

export default {
  name: 'app',
  components: {
    Sample
  }
}
</script>

<style>
  #main {
    font-family: 'Avenir', Helvetica, Arial, sans-serif;
    -webkit-font-smoothing: antialiased;
    -moz-osx-font-smoothing: grayscale;
    text-align: center;
    color: #2c3e50;
    margin-top: 60px;
  }
</style>
