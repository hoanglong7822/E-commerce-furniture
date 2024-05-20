'use strict';

module.exports = {
  up: async (queryInterface, Sequelize) => {
    await queryInterface.createTable('tbl_sanpham', {
      sanpham_id: {
        type: Sequelize.INTEGER,
        autoIncrement: true,
        primaryKey: true
      },
      id_loaisanpham: {
        type: Sequelize.INTEGER,
        allowNull: false,
        references: {
          model: 'tbl_loaisanpham',
          key: 'id_loaisanpham'
        }
      },
      sanpham_name: {
        type: Sequelize.STRING(255),
        allowNull: false
      },
      sanpham_mota: {
        type: Sequelize.TEXT
      },
      sanpham_gia: {
        type: Sequelize.STRING(100)
      },
      sanpham_soluong: {
        type: Sequelize.INTEGER
      },
      anh: {
        type: Sequelize.STRING(50)
      }
    });
  },

  down: async (queryInterface, Sequelize) => {
    await queryInterface.dropTable('tbl_sanpham');
  }
};
