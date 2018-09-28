<template>
  <nav class="navbar has-shadow">
    <div class="container">
      <div class="navbar-brand">
        <div class="navbar-item">
          <div class="button is-info">Home</div>
        </div>
        </div>
        <div class="navbar-burger burger" data-target="navMenu">
          <span></span>
          <span></span>
          <span></span>
        </div>
      </div>
  </nav>
</template>
<script>
export default {
  data () {
    return {
      showAccountMenu: false
    }
  },
  methods: {
    switchAccountMenu () {
      this.showAccountMenu = !this.showAccountMenu
    }
  },
  name: 'Navbar'
}
</script>
<style scoped>
.nav.is-dark .nav-item a, .nav.is-dark a.nav-item {
  color: #F6F7F7;
}
.nav.is-dark .nav-item a.button.is-default {
  color: #F6F7F7;
  background-color: transparent;
  border-width: 2px;
}
.nav.menu .nav-item .icon-btn {
  border: 3px solid #B7C6C9;
  border-radius: 90px;
  padding: 5px 7px;
  color: #B7C6C9;
}
.nav.menu .nav-item.is-active .icon-btn {
  color: #2EB398;
  border: 3px solid #2EB398;
}
.nav.menu .nav-item .icon-btn .fa {
  font-size: 20px;
  color: #B7C6C9;
}
.nav.menu .nav-item.is-active .icon-btn .fa {
  color: #2EB398;
}
</style>
