import { action, autorun, makeAutoObservable, observable } from "mobx";

export class Test {
    @observable test

    @action
    increase() {
        this.test++
    }

    constructor() {
        this.test = 0
        makeAutoObservable(this)
    }
}
