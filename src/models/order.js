'use strict';
const {
  Model
} = require('sequelize');
module.exports = (sequelize, DataTypes) => {
  class Order extends Model {
    /**
     * Helper method for defining associations.
     * This method is not a part of Sequelize lifecycle.
     * The `models/index` file will call this method automatically.
     */
    static associate(models) {
      // define association here
    }
  }
  Order.init({
    order_id:{
      allowNull: false,
      autoIncrement: true,
      primaryKey: true,
      type: DataTypes.INTEGER,},
    order_fname: DataTypes.STRING,
    order_lname: DataTypes.STRING,
    order_phonenumber: DataTypes.INTEGER,
    order_email: DataTypes.STRING,
    order_address: DataTypes.STRING,
    order_notes: DataTypes.STRING,
    user_id: DataTypes.INTEGER,
    order_total: DataTypes.FLOAT,
    oder_status: DataTypes.STRING,
    order_date: DataTypes.DATE
  }, {
    sequelize,
    modelName: 'Order',
  });
  return Order;
};