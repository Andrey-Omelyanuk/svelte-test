<script lang="ts">
    import { ToDoList } from './todo-list'
    import Observer from 'svelte-mobx-observer' 
    import ToDoListView from './ToDoListView.svelte'
    import x from "./test"

	export let name;

    let x: string =  'test' 
    console.log('test')

    let query = null
    async function init()  {
        query = ToDoList.getQuery() 
        console.log('init')
    }
    init()

    async function create() {
        console.log('create item')
        let i = new ToDoList({name: 'testX'}); await i.save()
        console.log(i)
        console.log(query)
    }
    function change() {
        console.log('random change')
        if (query) {
            for(let i of query.items) {
            i.name = i.name + 'XXX'
            }
        }
    }

</script>

<template lang="pug">
Observer
    main
        h1 Hello {name} {x}!
        p
            | Visit the  
            a(href='https://svelte.dev/tutorial') Svelte tutorial
            |  to learn how to build Svelte apps.
        div 
            div
                button(on:click='{create}') Create
                button(on:click='{change}') Change 
            ToDoListView(query='{query}')
</template>

<style lang="stylus">
	main
		text-align  center
		padding     1em
		max-width   240px
		margin 0    auto

	h1 
		color: #ff3e00;
		text-transform: uppercase;
		font-size: 4em;
		font-weight: 100;

	@media (min-width: 640px)
		main
			max-width: none
</style>