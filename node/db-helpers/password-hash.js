import bcrypt from 'bcrypt'

const saltRounds = 10

export const generateHash = async (plainPassword) => {
  return await bcrypt.hash(plainPassword, saltRounds)
}

// 比對註冊用
// hash is store in db
export const compareHash = async (plainPassword, hash) => {
  return await bcrypt.compare(plainPassword, hash)
}
