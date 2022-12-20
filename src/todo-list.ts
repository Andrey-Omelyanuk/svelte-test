import {  Model, model, field, local } from 'mobx-orm'


@local()
@model
export class ToDoList extends Model {
    @field name     ?: string
    @field desc     ?: string
}