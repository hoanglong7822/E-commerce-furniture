'use strict';
/** @type {import('sequelize-cli').Migration} */
module.exports = {
  async up(queryInterface, Sequelize) {
    await queryInterface.createTable('Products', {
      id: {
        allowNull: false,
        autoIncrement: true,
        primaryKey: true,
        type: Sequelize.INTEGER
      },
      sanpham_id: {
        type: Sequelize.INTEGER
      },
      id_loaisanpham: {
        type: Sequelize.INTEGER
      },
      sanpham_name: {
        type: Sequelize.STRING
      },
      sanpham_mota: {
        type: Sequelize.TEXT
      },
      sanpham_gia: {
        type: Sequelize.STRING
      },
      sanpham_soluong: {
        type: Sequelize.INTEGER
      },
      anh: {
        type: Sequelize.STRING
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
    await queryInterface.dropTable('Products');
  }
};