/**
 * Author: Philipp Fleischer
 * email: philipp.fleischer0@gmail.com
 * 
 * This Software is under the GPLV3.0 license. It may be freely distributed and or changed
 */

import { PrismaClient } from '@prisma/client'

const prisma = new PrismaClient()

// A `main` function so that you can use async/await

async function main() {


}

main()

  .catch(e => {

    throw e

  })

  .finally(async () => {

    await prisma.$disconnect()

  })