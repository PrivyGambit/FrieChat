<template>
  <div class="sample">
    <p>{{ text }}</p>
    <ul id="example-2" class="list-group">
      <li class="list-group-item" v-for="chat in chats">
        {{ chat.message }}
      </li>
    </ul>
  </div>
</template>

<script>
  export default {
    name: 'sample',
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
        this.$http
          .get('http://localhost:3000/chats')
          .then((response) => {
            this.chats = response.body
          }, (err) => {
            console.log(err);
          })
      }
    }
  }
</script>
