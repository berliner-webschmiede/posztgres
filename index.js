/**
 * Author: Philipp Fleischer
 * email: philipp.fleischer0@gmail.com
 * 
 * This Software is under the GPLV3.0 license. It may be freely distributed and or changed
 */

const pg = require('pg')
const client = new pg({ 
    user: 'postgres',
    host: 'localhost',
    database: 'cyber',
    password: 'password',
    port: 5432,
})
await client.connect()


client.query('create database cyber;')
client.query(`create table attacks(
    id: text not null,
    name: text not null,
    content: text not null,
    foreign key: users(id)
); `)
client.query(`create table protections(
    id: text not null,
    name: text not null,
    content: text not null,
    foreign key: users(id)
); `)
client.query(`create table users (
    id: text not null,
    password: text not null,
    bio: text,
    email: text not null,
);`)




client.end()
