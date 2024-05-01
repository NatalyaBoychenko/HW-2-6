package org.boichenko.services;

import org.boichenko.Database;

import java.io.FileReader;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.sql.Statement;

public class DatabaseInitService {

    public static final String SQL_INIT_DB = "sql/init_db.sql";

    public static void main(String[] args) {

        Connection connection = Database.getInstance().getConnection();
        String sql = getSqlInitFromFile();
        initDb(connection, sql);

        Database.getInstance().closeConnection();

    }

    private static void initDb(Connection connection, String sql) {
        Statement statement;
        try {
            statement = connection.createStatement();
            statement.executeUpdate(sql);
        } catch (SQLException e) {
            throw new RuntimeException(e);
        }

        try {
            statement.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    private static String getSqlInitFromFile() {
        StringBuilder sql = new StringBuilder();

        try (FileReader fr = new FileReader(SQL_INIT_DB);){
            int reader = fr.read();
            while (reader != -1){
                sql.append((char) reader);
                reader = fr.read();
            }
        } catch (IOException e) {
            return null;
        }
        return sql.toString();
    }
}
