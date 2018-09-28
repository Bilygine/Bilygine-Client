<template>
  <div id="app">
    <navbar></navbar>
    <div class="columns">
      <div class="column is-2 is-gapless">
        <sidebar></sidebar>
      </div>
      <div class="column is-10 is-gapless">
        <view-content></view-content>
      </div>
    </div>
  </div>
</template>

<script>
import Navbar from '@/components/layout/Navbar'
import Sidebar from '@/components/layout/Sidebar'
import ViewContent from '@/components/layout/ViewContent'

export default {
  name: 'App',
  components: {
    Navbar,
    Sidebar,
    ViewContent
  }
}
</script>

<style>
</style>
