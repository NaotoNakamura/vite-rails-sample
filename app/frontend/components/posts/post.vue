<script setup lang="ts">
defineProps<{
  userName: string;
  body: string;
  createdAt: string;
}>();
</script>

<template>
  <div class="post">
    <div class="post-header">
      <img
        src="https://abs.twimg.com/sticky/default_profile_images/default_profile_normal.png"
        alt="ユーザーアイコン"
        class="user-icon"
      />
      <div class="post-content">
        <div class="user-info">
          <p class="user-name">{{ userName }}</p>
          <p class="user-handle">@aaa</p>
          <p class="post-date">{{ createdAt }}</p>
        </div>
        <p class="post-text">{{ body }}</p>
      </div>
    </div>
    <div class="post-footer">
      <button>いいね</button>
      <button>リポスト</button>
      <button>返信</button>
    </div>
  </div>
</template>

<style scoped>
.post {
  padding: 15px;
  border-bottom: 1px solid #e1e8ed;
}

.post-header {
  display: flex;
}

.user-icon {
  border-radius: 50%;
  width: 40px;
  height: 40px;
  margin-right: 10px;
}

.post-content {
  display: flex;
  flex-direction: column;
  font-size: 14px;
}

.user-info {
  display: ruby;
}

.user-name {
  font-weight: bold;
}

.user-handle {
  color: #657786;
  margin: 0 5px;
}

.post-date {
  color: #657786;
  font-size: 12px;
}

.post-text {
  font-size: 16px;
  margin-bottom: 10px;
}

.post-footer {
  display: flex;
  gap: 15px;
}

.post-footer button {
  background: none;
  border: none;
  cursor: pointer;
  color: #1da1f2;
  font-size: 14px;
  transition: color 0.3s;
}

.post-footer button:hover {
  color: #0d95e8;
}
</style>
