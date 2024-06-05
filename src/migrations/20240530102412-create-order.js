'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Orders', {
      order_id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      order_fname: {
        type: Sequelize.STRING
      },
      order_lname: {
        type: Sequelize.STRING
      },
      order_phonenumber: {
        type: Sequelize.INTEGER
      },
      order_email: {
        type: Sequelize.STRING
      },
      order_address: {
        type: Sequelize.STRING
      },
      order_notes: {
        type: Sequelize.STRING
      },
      user_id: {
        type: Sequelize.INTEGER
      },
      order_total: {
        type: Sequelize.FLOAT
      },
      oder_status: {
        type: Sequelize.STRING
      },
      order_date: {
        type: Sequelize.DATE
      },
      createdAt: {
        allowNull: false,
        type: Sequelize.DATE
      },
      updatedAt: {
        allowNull: false,
        type: Sequelize.DATE
      }
    });
  },
  async down(queryInterface, Sequelize) {
    await queryInterface.dropTable('Orders');
  }
};