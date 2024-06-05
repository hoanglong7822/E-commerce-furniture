'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class OrderDetail extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  OrderDetail.init({
    order_id:{
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER,},
    product_id: DataTypes.INTEGER,
    product_name: DataTypes.STRING,
    orderdetail_quantity: DataTypes.STRING,
    product_price: DataTypes.FLOAT
  }, {
    sequelize,
    modelName: 'OrderDetail',
  });
  return OrderDetail;
};