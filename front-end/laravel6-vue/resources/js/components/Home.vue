<template>
    <div class="container">
        <div class="row">
            <div class="col-12">
                <h1>{{ text }}</h1>
                <button class="btn btn-primary" @click="showAlert()">Click</button>
            </div>
        </div>

    </div>
</template>

<script>
export default {
    name: "Home",
    data() {
        return {
            text: "I'm Home Vue"
        }
    },
    methods: {
        showAlert() {
            alert(this.text)
        }
    },
}
</script>

<style scoped>

</style>
