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
    }
  }
</script>
