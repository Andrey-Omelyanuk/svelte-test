<script lang='ts'>
    import { Test } from '$lib/test'
	import { autorun, reaction } from 'mobx';
    import { onMount } from 'svelte';

    let test = $state(0)
    // let test2 = $state(new Test())
    let test2 = new Test()
    let mobx = $state(true)

	onMount(() => {
		console.log('the component has mounted');
        return reaction(
            () => test2.test,
            () => {
                console.log('test2', test2.test)
                mobx = !mobx 
            })
        // return autorun(() => {
        //     console.log('test2', test2.test)
        //     count++
        // })
	});

</script>
<h1>Welcome to SvelteKit</h1>
<p>Visit <a href="https://svelte.dev/docs/kit">svelte.dev/docs/kit</a> to read the documentation</p>
<p>test: {test}</p>
<button onclick={() => test++ }>Clicks {test}</button>

<p>mobx flag: {mobx}</p>
{#key mobx}
    <p>test 2</p>
    <button onclick={() => test2.increase() }>Test 2 {test2.test}</button>
{/key}

{#snippet sum(a, b)}
	<p>{a} + {b} = {a + b}</p>
    <p> {test2.test}</p>
{/snippet}

{@render sum(1, 2)}