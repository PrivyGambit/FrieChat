<template>
  <div class="Chats">
    <ul id="Chats" class="Chats-list list-group">
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
        chats: []
      }
    },
    created () {
      this.getChats()
    },
    methods: {
      getChats () {
        this.$http
          .get('http://dev.therealedsheenan:3001/chats')
          .then((response) => {
            this.chats = response.body
          }, (err) => {
            console.log(err)
          })
      }
    }
  }
</script>
