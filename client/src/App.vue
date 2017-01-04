<template>
  <main id="main" role="main">
    <Chats></Chats>
    <ChatForm></ChatForm>
  </main>
</template>

<script>
  import Chats from './components/Chats'
  import ChatForm from './components/ChatForm'

  export default {
    name: 'app',
    components: {
      Chats,
      ChatForm
    },
    created () {
      this.getChats()
    },
    methods: {
      getChats () {
        this.$http
          .get('http://localhost:3000/chats')
          .then((response) => {
            this.chats = response.body
          }, (err) => {
            console.log(err)
          })
      }
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
