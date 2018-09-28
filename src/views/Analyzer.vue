<template>
  <div class="columns">
    <div class="column is-6 brace-container hero is-fullheight">
      <div>
        <brace style="height: 500px"
               :fontsize="'12px'"
               :theme="'github'"
               :mode="'sql'"
               :codefolding="'markbegin'"
               :softwrap="'free'"
               :selectionstyle="'text'"
               :highlightline="true">
        </brace>
      </div>
    </div>
    <div class="column is-6 hero is-fullheight">
    </div>
  </div>
</template>

<script>
export default {
  data () {
    return {

    }
  }
}
</script>
<style>
  .brace-container {
    display:block;
    background-color: #fff;
    border-right: 3px solid #DEDEDE;
  }
</style>
