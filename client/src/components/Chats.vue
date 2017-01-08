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
    }
  }
</script>
