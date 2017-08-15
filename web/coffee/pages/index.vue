<template>
<div>
  <p>{{ hello }}</p> <p>{{ world }}</p>!
</div>
</template>

<script lang="coffee">
module.exports =
  data: ->
    hello: 'Hello'
    world: 'World'
</script>
