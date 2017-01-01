<template>
  <div class="Chats">
    <p>{{ text }}</p>
    <ul id="Chats-ist" class="Chats-list list-group">
      <li class="list-group-item" v-for="chat in chats">
        {{ chat.message }}
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'Chats',
    data () {
      return {
        chats: [],
        text: 'This is just a sample'
      }
    },
    created () {
      this.getChats()
    },
    methods: {
      getChats () {
        let resource = this.$resource('http://localhost:3000/chats')

        resource.get().then((response) => {
          this.chats = response.body
        }, (err) => {
          console.log(err)
        })
        // this.$http
        //   .get('http://localhost:3000/chats')
        //   .then((response) => {
        //     this.chats = response.body
        //   }, (err) => {
        //     console.log(err)
        //   })
      }
    }
  }
</script>
