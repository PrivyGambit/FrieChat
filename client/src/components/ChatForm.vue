<template>
  <div class="Chat-form">
    <form class="" method="POST" v-on:submit.prevent="postChats(message)">
      <mt-field v-model="message" label="Chat" placeholder="Enter text"></mt-field>
      <mt-button type="primary">Submit</mt-button>
    </form>
  </div>
</template>

<script>
  import Vue from 'vue'
  import {
    Field,
    Button } from 'mint-ui'

  // apply components
  Vue.component(Field.name, Field)
  Vue.component(Button.name, Button)

  export default {
    name: 'Chats',
    data () {
      return {
        message: '',
        chats: [],
        text: 'This is just a sample'
      }
    },
    methods: {
      postChats (message) {
        let chatContent = {
          chat: {
            user_id: 1,
            message: 'test'
          }
        }
        let headers = {
          'Content-Type': 'application/json'
        }
        this.$http.post('http://localhost:3000/chats/', [{
          body: chatContent,
          headers: headers
        }]).then((response) => {
          console.log(response)
        }, (response) => {
          console.log('error')
          console.log(response)
        })
      }
    }
  }
</script>
