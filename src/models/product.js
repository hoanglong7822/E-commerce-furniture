'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Product extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Product.init({
    sanpham_id: DataTypes.INTEGER,
    id_loaisanpham: DataTypes.INTEGER,
    sanpham_name: DataTypes.STRING,
    sanpham_mota: DataTypes.TEXT,
    sanpham_gia: DataTypes.STRING,
    sanpham_soluong: DataTypes.INTEGER,
    anh: DataTypes.STRING
  }, {
    sequelize,
    modelName: 'Product',
  });
  return Product;
};