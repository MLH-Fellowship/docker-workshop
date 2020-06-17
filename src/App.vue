<template>
  <div id="app">
    Version: v{{ version }}
    <img alt="Vue logo" src="./assets/logo.png">
  </div>
</template>

<script>

let version = require("../package.json").version

export default {
  data() {
    return {
      version: version,
    };
  },

  name: 'App',
  components: {
  }
}
</script>

<style>
#app {
  font-family: Avenir, Helvetica, Arial, sans-serif;
  -webkit-font-smoothing: antialiased;
  -moz-osx-font-smoothing: grayscale;
  text-align: center;
  color: #2c3e50;
  margin-top: 60px;
}
</style>
