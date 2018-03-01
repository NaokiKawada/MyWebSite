package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import beans.BuyDataBeans;

public class BuyDAO {
	private static final BuyDataBeans BuyDataBeans = null;

	//インスタンスオブジェクトを返却させてコードの簡略化
	public static BuyDAO getInstance() {
		return new BuyDAO();
	}

	/**
	 * 購入情報登録処理
	 * @param bdb 購入情報
	 * @throws SQLException 呼び出し元にスローさせるため
	 */
	public static int insertBuy(BuyDataBeans bdb) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		int autoIncKey = -1;
		try {
			con = DBManager.getConnection();
			st = con.prepareStatement(
					"INSERT INTO buy(user_id,total_price,delivery_method_id,create_date) VALUES(?,?,?,?)",
					Statement.RETURN_GENERATED_KEYS);
			st.setInt(1, bdb.getUserId());
			st.setInt(2, bdb.getTotalPrice());
			st.setInt(3, bdb.getDelivertMethodId());
			st.setTimestamp(4, new Timestamp(System.currentTimeMillis()));
			st.executeUpdate();

			ResultSet rs = st.getGeneratedKeys();
			if (rs.next()) {
				autoIncKey = rs.getInt(1);
			}
			System.out.println("inserting buy-datas has been completed");

			return autoIncKey;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

	/**
	 * 購入IDによる購入情報検索
	 * @param buyId
	 * @return BuyDataBeans
	 * 				購入情報のデータを持つJavaBeansのリスト
	 * @throws SQLException
	 * 				呼び出し元にスローさせるため
	 */
	public static BuyDataBeans getBuyDataBeansByBuyId(int buyId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT * FROM buy"
							+ " JOIN delivery_method"
							+ " ON buy.delivery_method_id = delivery_method.id"
							+ " WHERE buy.id = ?");
			st.setInt(1, buyId);

			ResultSet rs = st.executeQuery();

			BuyDataBeans bdb = new BuyDataBeans() ;
			if (rs.next()) {
				bdb.setId(rs.getInt("id"));
				bdb.setTotalPrice(rs.getInt("total_price"));
				bdb.setBuyDate(rs.getTimestamp("create_date"));
				bdb.setDelivertMethodId(rs.getInt("delivery_method_id"));
				bdb.setUserId(rs.getInt("user_id"));
				bdb.setDeliveryMethodPrice(rs.getInt("price"));
				bdb.setDeliveryMethodName(rs.getString("name"));
			}

			System.out.println("searching BuyDataBeans by buyID has been completed");

			return bdb;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}


	/**
　　リストを作って値を渡すメソッド
　　useridから値を取得してwhileで回してリストへ値を追加している。
	 */
	public  List<BuyDataBeans> findAll(int userid) throws SQLException{
		Connection con = null;
        List<BuyDataBeans> userdataList = new ArrayList<BuyDataBeans>();

		try {
			con = DBManager.getConnection();

			String sql =
					"SELECT * FROM buy"
							+ " JOIN delivery_method"
							+ " ON buy.delivery_method_id = delivery_method.id"
							+ " WHERE buy.user_id = ? ORDER BY buy.id DESC";
            PreparedStatement pStmt = con.prepareStatement(sql);
            pStmt.setFloat(1, userid);
			ResultSet rs = pStmt.executeQuery();

			while (rs.next()) {
				int buyIdData = rs.getInt("id");
				Date buyDateData = rs.getTimestamp("create_date");
				String deliveryMethodnameData = rs.getString("name");
				int totalPriceData = rs.getInt("total_price");
				BuyDataBeans userdatainfo = new BuyDataBeans(buyIdData,buyDateData,deliveryMethodnameData,totalPriceData);
				userdataList.add(userdatainfo);
			}

			System.out.println("findall() completed!!!!!!!!!!!!!!!!!");

		} catch (SQLException e) {
            e.printStackTrace();
            return null;
		} finally {
            // データベース切断
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
		return userdataList;
	}

	public  BuyDataBeans userhistoryByuserId(int userid) throws SQLException{
		Connection con = null;

		try {
			con = DBManager.getConnection();

			String sql =
					"SELECT * FROM buy"
							+ " JOIN delivery_method"
							+ " ON buy.delivery_method_id = delivery_method.id"
							+ " WHERE buy.user_id = ?";
            PreparedStatement pStmt = con.prepareStatement(sql);
            pStmt.setFloat(1, userid);
			ResultSet rs = pStmt.executeQuery();

			if (!rs.next()) {
                return null;
            }
			int buyIdData = rs.getInt("id");
				System.out.println(buyIdData);
				Date buyDateData = rs.getDate("create_date");
				String deliveryMethodnameData = rs.getString("name");
				int totalPriceData = rs.getInt("total_price");
				return new BuyDataBeans(buyIdData,buyDateData,deliveryMethodnameData,totalPriceData);



		} catch (SQLException e) {
            e.printStackTrace();
            return null;
		} finally {
            // データベース切断
            if (con != null) {
                try {
                    con.close();
                } catch (SQLException e) {
                    e.printStackTrace();
                    return null;
                }
            }
        }
	}


	public static BuyDataBeans getBuyDataBeansByBuyId(String buyId) throws SQLException {
		Connection con = null;
		PreparedStatement st = null;
		try {
			con = DBManager.getConnection();

			st = con.prepareStatement(
					"SELECT * FROM buy"
							+ " JOIN delivery_method"
							+ " ON buy.delivery_method_id = delivery_method.id"
							+ " WHERE buy.id = ?");
			st.setString(1, buyId);

			ResultSet rs = st.executeQuery();

			BuyDataBeans bdb = new BuyDataBeans() ;
			if (rs.next()) {
				bdb.setId(rs.getInt("id"));
				bdb.setTotalPrice(rs.getInt("total_price"));
				bdb.setBuyDate(rs.getTimestamp("create_date"));
				bdb.setDelivertMethodId(rs.getInt("delivery_method_id"));
				bdb.setUserId(rs.getInt("user_id"));
				bdb.setDeliveryMethodPrice(rs.getInt("price"));
				bdb.setDeliveryMethodName(rs.getString("name"));
			}

			System.out.println("searching BuyDataBeans by buyID has been completed");

			return bdb;
		} catch (SQLException e) {
			System.out.println(e.getMessage());
			throw new SQLException(e);
		} finally {
			if (con != null) {
				con.close();
			}
		}
	}

}
