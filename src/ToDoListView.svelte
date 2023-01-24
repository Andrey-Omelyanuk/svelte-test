<script lang="ts">
    import Observer from 'svelte-mobx-observer' 
    import { Query } from 'mobx-orm'
    import { ToDoList } from './todo-list'

    export let query: Query<ToDoList>
</script>

<template lang="pug">
Observer
    div 
        | {#if query && query.items.length }
        lu
            | {#each query.items as item }
            li {item.id} {item.name}
            | {/each}
        | {:else}
        div Nothing here
        | {/if}
</template>

<style lang="stylus">
</style>