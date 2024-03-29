/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dao;

import connection.SQLServerConnection;
import entity.ProductSize;
import entity.Size;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author DELL
 */
public class ProductSizeDAO {

    public List<ProductSize> getAll(int productId) {

        String sql = ""
                + "select \n"
                + "	ps.productSizeId,\n"
                + "	ps.productId,\n"
                + "	ps.productSizeQuantity,\n"
                + "	s.sizeId,\n"
                + "	s.sizeValue \n"
                + "from ProductSize ps \n"
                + "	join Size s On ps.sizeId = s.sizeId where ps.productId = ?";//

        try ( Connection connection = SQLServerConnection.getConnection();  PreparedStatement ps = connection.prepareStatement(sql);) {
            ps.setObject(1, productId);
            ResultSet rs = ps.executeQuery();

            List<ProductSize> list = new ArrayList<>();//
            while (rs.next()) {
                ProductSize s = ProductSize.builder()
                        .productSizeId(rs.getInt("productSizeId"))
                        .productId(rs.getInt("productId"))
                        .size(Size.builder()
                                .sizeId(rs.getInt("sizeId"))
                                .sizeValue(rs.getString("sizeValue"))
                                .build())
                        .productSizeQuantity(rs.getInt("productSizeQuantity"))
                        .build();
                list.add(s);
            }
            return list;
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return null;
    }

    public int ProductQuantity(int productId, int sizeValue) {

        String sql = "select ps.productSizeQuantity from ProductSize ps join Size s On ps.sizeId = s.sizeId  where productId = ? And sizeValue = ?";//

        try ( Connection connection = SQLServerConnection.getConnection();  PreparedStatement ps = connection.prepareStatement(sql);) {
            ps.setObject(1, productId);
            ps.setObject(2, sizeValue);
            ResultSet rs = ps.executeQuery();
            int quantity = 0;
            
            while (rs.next()) {
                
                quantity = rs.getInt("productSizeQuantity");
            }
            return quantity;
            
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return 0;
    }
    public boolean add(int productId, int sizeId) {
        int check = 0;
        String sql = "INSERT INTO ProductSize(productId, sizeId, productSizeQuantity)"
                + " VALUES(?, ?, ?)";
        try ( Connection con = SQLServerConnection.getConnection();  PreparedStatement ps = con.prepareStatement(sql);) {
            ps.setObject(1, productId);
            ps.setObject(2, sizeId);
            ps.setObject(3, 0);
            check = ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace(System.out);
        }
        return check > 0;
    }

    public static void main(String[] args) {
        System.out.println(new ProductSizeDAO().ProductQuantity(5,7));
    }
}
