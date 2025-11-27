<script setup>
  import { ref, onMounted } from 'vue'
  import { useRoute } from 'vue-router'
  import { marked } from 'marked'

  const route = useRoute()
  const html = ref('<p>Loading...</p>')

  onMounted(async () => {
    const res = await fetch(`${import.meta.env.BASE_URL}/profile.md`)
    const text = await res.text()
    html.value = marked.parse(text)
  })
</script>

<template>
  <div class="content" v-html="html"></div>
</template>

<style>

h2 {
  margin: 20px 0;
  border-left: 5px solid var(--color-primary);
  padding-left: 10px;
}

li {
  list-style: none;
}

div.content {
  padding: 0 0 100px 0;
}

</style>
