const { Pool } = require('pg');

const OK = 0;
const ERROR_NO_SUCH_BATTERY = -1;
const ERROR_OUT_OF_STOCK = -2;

require('dotenv').config();

const pool = new Pool({
  connectionString: "postgresql://batterydb_ot31_user:пароль@dpg-d35belgdl3ps738hgk20-a.frankfurt-postgres.render.com/batterydb_ot31",
  ssl: { rejectUnauthorized: false }
});

exports.initialise = function () {

}

exports.getBatteryList = async function(marka) {
  const client = await pool.connect();
  try {
    const res = await client.query('SELECT * FROM battery WHERE marka = $1', [marka]);
    return res.rows;
  } finally {
    client.release();
  }
};

  exports.buyBattery = async function (anID) {
    try {
      const result = await pool.query(
        `UPDATE battery
         SET available = available - 1
         WHERE id = $1 AND available > 0
         RETURNING *`,
        [anID]
      );
  
      if (result.rowCount === 0) {
        return ERROR_OUT_OF_STOCK;
      }
  
      return OK;
    } catch (err) {
      console.error('Error buying battery:', err);
      return ERROR_OUT_OF_STOCK;
    }
  };

  exports.addBatteryType = async function (brand, price, available, length, width, height, ampere, amp, image) {
    try {
      const result = await pool.query(
        `SELECT id FROM battery
         WHERE marka = $1 AND amper = $2 AND amp = $3
           AND length = $4 AND width = $5 AND height = $6`,
        [brand, ampere, amp, length, width, height]
      );
  
      if (result.rows.length > 0) {
        await pool.query(
          `UPDATE battery
           SET available = available + $1, price = $2, image = $3
           WHERE id = $4`,
          [available, price, image, result.rows[0].id]
        );
      } else {
        await pool.query(
          `INSERT INTO battery
          (marka, price, available, length, width, height, amper, amp, image)
          VALUES ($1, $2, $3, $4, $5, $6, $7, $8, $9)`,
          [brand, price, available, length, width, height, ampere, amp, image]
        );
      }
  
      return OK;
    } catch (err) {
      console.error('Error adding battery type:', err);
      return err;
    }
  };
