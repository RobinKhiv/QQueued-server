const bcrypt = require('bcryptjs');

const usersService = {

  hashPassword(password) {
    return bcrypt.hash(password, 12);
  },

  getUsers(db) {
    return db
      .select('*')
      .from('user');
  },

  validateUserName(db, username) {
    return db('user')
      .where({ username })
      .first()
      .then(user => !!user);
  },

  insertUser(db, newUser) {
    return db
      .insert(newUser)
      .into('user')
      .returning('*')
      .then(([user]) => user );
  },

  serializeUser(user) {
    return {
      id: user.id,
      name: user.name,
      username: user.username
    };
  }
};

module.exports = usersService;