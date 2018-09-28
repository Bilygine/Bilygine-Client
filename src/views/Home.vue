<template>
<section class="hero is-info is-medium is-bold">
  <div class="hero-head">
    <nav class="navbar">
    </nav>
  </div>
  <div class="hero-body is-info is-fullheight">
    <div class="container">
      <div class="columns">
        <div class="column is-6">
          <h1 class="title is-2">Type an occurence</h1>
          <h1 class="subtitle is-6">We will find the moments where <b>{{ wordDisplayed }}</b> is pronounced.</h1>
        </div>
        <div class="column is-6">
          <b-field>
            <b-input placeholder="Type your occurence" v-model="occurence" type="search" icon="magnify">
            </b-input>
            <p class="control">
              <button v-on:click="search" class="button is-primary">Search</button>
            </p>
          </b-field>
        </div>
      </div>
    </div>
    <br />
    <br />
    <br />
    <div v-if="results.length">
      <p class="title is-4">
        <div class="tag">{{occurencesFound}} occurence(s) from {{results.length}} source(s)</div>
      </p>
      <br />
      <div class="row columns is-multiline">
        <div v-for="result in results" v-bind:key="result.index" class="column is-one-third">
          <article class="tile is-child notification is-primary">
            <p class="title is-5">{{result.metadata.origin}}</p>
            <div class="tag">{{result.words.length}} occurence(s)</div>
            <button v-for="word in result.words" v-on:click="open(result.metadata.origin + '&t=' + (word.timestamp - 1))" v-bind:key="word.index" class="tag is-orange">At {{ word.timestamp }}s</button>
          </article>
        </div>
      </div>
    </div>
  </div>
</section>
</template>
<script>
import axios from 'axios'
export default {
  data () {
    return {
      occurence: '',
      results: []
    }
  },
  computed: {
    wordDisplayed () {
      return this.occurence === '' ? 'your word' : '"' + this.occurence.replace(/\s+/g, '') + '"'
    },
    occurencesFound () {
      return this.results.reduce((currentSum, r) => {
        return currentSum + r.words.length
      }, 0)
    }
  },
  methods: {
    search () {
      if (this.occurence !== '') {
        axios
          .get('http://52.215.187.222:8888/find/' + this.occurence)
          .then(response => (this.results = response.data))
          .catch(error => console.log(error))
      }
    },
    open (url) {
      window.open(url, '_blank')
    }
  }
}
</script>
<style></style>
