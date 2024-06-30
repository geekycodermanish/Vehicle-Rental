const { DataTypes } = require("sequelize");
const { sequelize } = require("../config/db.connect");
const { Booking } = require("./booking.model");

const Wheel = sequelize.define(
  "Wheel",
  {
    noOfWheels: {
      type: DataTypes.NUMBER,
      allowNull: false,
    },
  },
  {
    timestamps: false,
  }
);
const VehicleType = sequelize.define(
  "VehicleType",
  {
    vehicleType: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    wheelId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Wheel,
        key: "id",
      },
    },
  },
  {
    timestamps: false,
  }
);
const VehicleModel = sequelize.define(
  "VehicleModel",
  {
    vehicleModel: {
      type: DataTypes.STRING,
      allowNull: false,
    },
    vehicleTypeId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: VehicleType,
        key: "id",
      },
    },
    wheelId: {
      type: DataTypes.INTEGER,
      allowNull: false,
      references: {
        model: Wheel,
        key: "id",
      },
    },
  },
  {
    timestamps: false,
  }
);

module.exports = { Wheel, VehicleModel, VehicleType };
