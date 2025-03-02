<script setup lang="ts">
import Post from "./post.vue";

defineProps<{
  posts: {
    id: number;
    user_name: string;
    body: string;
    created_at: string;
  }[];
}>();
</script>

<template>
  <div class="posts">
    <Post
      v-for="post in posts"
      :key="post.id"
      :userName="post.user_name"
      :body="post.body"
      :createdAt="post.created_at"
    />
  </div>
</template>
