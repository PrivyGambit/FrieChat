<template>
  <div class="Chat-form">
    <form class="" method="POST" v-on:submit.prevent="postChats(message)">
      <mt-field v-model="message" placeholder="Enter text"></mt-field>
      <mt-button type="primary">Submit</mt-button>
    </form>
  </div>
</template>

<script>
  import {
    Field,
    Button
  } from 'mint-ui'

  export default {
    name: 'Chats',
    data () {
      return {
        message: ''
      }
    },
    methods: {
      postChats (message) {
        this.$http
          .post('http://localhost:3000/chats/', {
            chat: {
              user_id: 1,
              message: message
            }
          }).then((response) => {
            this.getChats()
          }, (response) => {
            console.log(response)
          })
      }
    },
    components: {
      'mt-field': Field,
      'mt-button': Button
    }
  }
</script>
