/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package del;

import jakarta.servlet.http.HttpSession;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.Account;
import model.Cart;
import model.Category;
import model.Order;
import model.OrderDetail;
import model.Product;
import model.Shipping;

/**
 *
 * @author Nguyen Phuc
 */
public class DAO extends DBContext {

    public List<Product> getAll() {
        List<Product> list = new ArrayList<>();
        String sql = "select * from Product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Category> getAllCategory() {
        List<Category> list = new ArrayList<>();
        String sql = "select * from Category";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Category c = new Category(rs.getInt("cid"),
                        rs.getString("cname"),
                        rs.getString("images"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Category getCategoryById(int id) {
        String sql = "select * from Category where cid=?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Category c = new Category(rs.getInt("cid"),
                        rs.getString("cname"),
                        rs.getString("images"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductByCateId(int cid) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "      ,[cateID]\n"
                + "  FROM [dbo].[product]\n"
                + "  where 1=1 ";
        if (cid != 0) {
            sql += " and cateID=" + cid;
        }
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            //st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public Product getProductById(int id) {
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "      ,[cateID]\n"
                + "  FROM [dbo].[product]\n"
                + "  where id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Product> getProductTop10() {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT top 10 * FROM [dbo].[product]\n"
                + "  order by price desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<Product> getProductByName(String search) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "      ,[cateID]\n"
                + "  FROM [dbo].[product]\n"
                + "  where name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + search + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public int createReturnId(Shipping shipping) {
        String sql = "INSERT INTO [dbo].[Shipping]\n"
                + "           ([name]\n"
                + "           ,[phone]\n"
                + "           ,[address])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);
            st.setString(1, shipping.getName());
            st.setString(2, shipping.getPhone());
            st.setString(3, shipping.getAddress());

            st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public int createReturnId1(Order order) {
        String sql = "INSERT INTO [dbo].[Orders]\n"
                + "           ([account_id]\n"
                + "           ,[totalPrice]\n"
                + "           ,[shipping_id])\n"
                + "     VALUES\n"
                + "           (?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql, Statement.RETURN_GENERATED_KEYS);

            st.setInt(1, order.getAccountId());
            st.setDouble(2, order.getTotalPrice());
            st.setInt(3, order.getShippingId());
            st.executeUpdate();
            ResultSet rs = st.getGeneratedKeys();
            if (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public Account login(String username, String password) {
        String sql = "SELECT [uID]\n"
                + "      ,[user]\n"
                + "      ,[pass]\n"
                + "      ,[displayName]\n"
                + "      ,[address]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [user] =? and pass = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            st.setString(2, password);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account c = new Account(rs.getInt("uid"),
                        rs.getString("user"),
                        rs.getString("pass"),
                        rs.getString("displayName"),
                        rs.getString("address"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("role"));
                return c;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public void saveCart(int orderId, Map<Integer, Cart> carts) {
        String sql = "INSERT INTO [dbo].[OrderDetail]\n"
                + "           ([order_id]\n"
                + "           ,[ProductName]\n"
                + "           ,[ProductImage]\n"
                + "           ,[ProductPrice]\n"
                + "           ,[quantity])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, orderId);
            for (Map.Entry<Integer, Cart> entry : carts.entrySet()) {
                Integer pid = entry.getKey();
                Cart cart = entry.getValue();
                st.setString(2, cart.getProduct().getName());
                st.setString(3, cart.getProduct().getImage());
                st.setDouble(4, cart.getProduct().getPrice());
                st.setDouble(5, cart.getQuantity());
                st.executeUpdate();
            }

        } catch (SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void register(Account account) {
        String sql = "INSERT INTO [dbo].[Account]\n"
                + "           ([user]\n"
                + "           ,[pass]\n"
                + "           ,[displayName]\n"
                + "           ,[address]\n"
                + "           ,[email]\n"
                + "           ,[phone])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account.getUsername());
            st.setString(2, account.getPassword());
            st.setString(3, account.getDisplayName());
            st.setString(4, account.getAddress());
            st.setString(5, account.getEmail());
            st.setString(6, account.getPhone());
            st.executeUpdate();

        } catch (SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public boolean check(String username) {
        String sql = "SELECT [uID]\n"
                + "      ,[user]\n"
                + "      ,[pass]\n"
                + "      ,[displayName]\n"
                + "      ,[address]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where [user] = ? ";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, username);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Account c = new Account(rs.getInt("uid"),
                        rs.getString("user"),
                        rs.getString("pass"),
                        rs.getString("displayName"),
                        rs.getString("address"),
                        rs.getString("email"),
                        rs.getString("phone"),
                        rs.getInt("role"));
                return true;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return false;
    }

    public void update(Product product, int op) {
        String sql = "UPDATE [dbo].[product]\n"
                + "   SET [name] = ?\n"
                + "      ,[image] = ?\n"
                + "      ,[price] = ?\n"
                + "      ,[title] = ?\n"
                + "      ,[description] = ?\n"
                + "      ,[cateID] = ?\n"
                + " WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, product.getName());
            st.setString(2, product.getImage());
            st.setDouble(3, product.getPrice());
            st.setString(4, product.getTitle());
            st.setString(5, product.getDescription());
            st.setInt(6, op);
            st.setInt(7, product.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void Add(Product product, int op) {
        String sql = "INSERT INTO [dbo].[product]\n"
                + "           ([name]\n"
                + "           ,[image]\n"
                + "           ,[price]\n"
                + "           ,[title]\n"
                + "           ,[description]\n"
                + "           ,[cateID])\n"
                + "     VALUES\n"
                + "           (?,?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, product.getName());
            st.setString(2, product.getImage());
            st.setDouble(3, product.getPrice());
            st.setString(4, product.getTitle());
            st.setString(5, product.getDescription());
            st.setInt(6, op);
            st.executeUpdate();

        } catch (SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void delete(int id) {
        String sql = "DELETE FROM [dbo].[product]\n"
                + "      WHERE id = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void deleteCategory(int id) {
        String sql = "DELETE FROM [dbo].[Category]\n"
                + "      WHERE cid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public int getTotalProduct() {
        String sql = "select count(id) from product";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    

    public int getTotalAccount() {
        String sql = "select count(uID) from Account";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    public int getTotalPrice(String from, String to) {
        int total = 0;
        try {
            String sql = "select SUM(totalPrice) from Orders o inner join OrderDetail od on o.id = od.order_id\n"
                    + "where o.create_date >= ? and o.create_date <= ?";
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, from);
            st.setString(2, to);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                total = rs.getInt(1);
            }
        } catch (SQLException e) {

        }
        return total;
    }

    public void getSaveCategory(Category category) {
        String sql = "INSERT INTO [dbo].[Category]\n"
                + "           ([cname]\n"
                + "           ,[images])\n"
                + "     VALUES\n"
                + "           (?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, category.getCname());
            st.setString(2, category.getImages());
            st.executeUpdate();

        } catch (SQLException e) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, e);
        }
    }

    public void UpdateCategory(Category category) {
        String sql = "UPDATE [dbo].[Category]\n"
                + "   SET [cname] = ?\n"
                + "      ,[images] = ?\n"
                + " WHERE cid = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, category.getCname());
            st.setString(2, category.getImages());
            st.setDouble(3, category.getCid());

            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public Account getAccountById(int id) {
        String sql = "SELECT [uID]\n"
                + "      ,[user]\n"
                + "      ,[pass]\n"
                + "      ,[displayName]\n"
                + "      ,[address]\n"
                + "      ,[email]\n"
                + "      ,[phone]\n"
                + "      ,[role]\n"
                + "  FROM [dbo].[Account]\n"
                + "  where uID =? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Account acc = new Account();
                acc.setId(rs.getInt("uID"));
                acc.setUsername(rs.getString("user"));
                acc.setPassword(rs.getString("pass"));
                acc.setDisplayName(rs.getString("displayName"));
                acc.setAddress(rs.getString("address"));
                acc.setEmail(rs.getString("email"));
                acc.setPhone(rs.getString("phone"));
                acc.setRole(rs.getInt("role"));
                return acc;
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Order> getAllOrder(int id) {
        List<Order> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[account_id]\n"
                + "      ,[totalPrice]\n"
                + "      ,[create_date]\n"
                + "      ,[shipping_id]\n"
                + "  FROM [dbo].[Orders]\n"
                + "  where account_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Order c = new Order();
                c.setId(rs.getInt("id"));
                c.setAccountId(rs.getInt("account_id"));
                c.setTotalPrice(rs.getFloat("totalPrice"));
                c.setCreateDate(rs.getString("create_date"));
                c.setShippingId(rs.getInt("shipping_id"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public List<OrderDetail> getProductByOrId(int orId) {
        List<OrderDetail> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[order_id]\n"
                + "      ,[ProductName]\n"
                + "      ,[ProductImage]\n"
                + "      ,[ProductPrice]\n"
                + "      ,[quantity]\n"
                + "  FROM [dbo].[OrderDetail]\n"
                + "  where order_id = ?";

        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, orId);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                OrderDetail c = new OrderDetail();
                c.setId(rs.getInt("id"));
                c.setOrderId(rs.getInt("order_id"));
                c.setProductName(rs.getString("ProductName"));
                c.setProductImage(rs.getString("ProductImage"));
                c.setProductPrice(rs.getFloat("ProductPrice"));
                c.setQuantity(rs.getInt("quantity"));
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }

    public void updateAccount(Account account) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET \n"
                + "      [displayName] = ?\n"
                + "      ,[address] = ?\n"
                + "      ,[email] = ?\n"
                + "      ,[phone] = ?\n"
                + " WHERE [uID] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, account.getDisplayName());
            st.setString(2, account.getAddress());
            st.setString(3, account.getEmail());
            st.setString(4, account.getPhone());
            st.setInt(5, account.getId());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public void UpdatePassword(String name, String pass) {
        String sql = "UPDATE [dbo].[Account]\n"
                + "   SET \n"
                + "      [pass] = ?\n"
                + "      \n"
                + " WHERE [user] = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, pass);
            st.setString(2, name);
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }

    public List<Product> getProductByPrice(double from, double to) {
        List<Product> list = new ArrayList<>();
        String sql = "SELECT [id]\n"
                + "      ,[name]\n"
                + "      ,[image]\n"
                + "      ,[price]\n"
                + "      ,[title]\n"
                + "      ,[description]\n"
                + "      ,[cateID]\n"
                + "  FROM [dbo].[product]\n"
                + "  where price >= ? and price <= ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setDouble(1, from);
            st.setDouble(2, to);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                Product c = new Product();
                c.setId(rs.getInt("id"));
                c.setName(rs.getString("name"));
                c.setImage(rs.getString("image"));
                c.setPrice(rs.getDouble("price"));
                c.setTitle(rs.getString("title"));
                c.setDescription(rs.getString("description"));
                Category p = getCategoryById(rs.getInt("cateID"));
                c.setCategory(p);
                list.add(c);
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return list;
    }
public static void main(String[] args) {
        DAO c = new DAO();
        List<Product> list = c.getProductByPrice(1, 1000);
        System.out.println(list.get(1).getId());
    }
}
