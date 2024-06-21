package bank.management.system;

import javax.swing.*;
import java.awt.*;
import java.time.LocalDateTime;
import java.time.OffsetDateTime;
import java.time.ZoneOffset;
import java.time.format.DateTimeFormatter;
import java.sql.ResultSet;

public class MiniStatement extends JFrame {

    private static MiniStatement instance;
    private static JButton showTransactionsButton;
    String pinnumber;

    public MiniStatement(String pin) {
        setTitle("Mini Statement");
        setLayout(null);

        JLabel mini = new JLabel();
        add(mini);

        JLabel bank = new JLabel("CVL Machine");
        bank.setBounds(150, 20, 100, 20);
        add(bank);

        JLabel card = new JLabel();
        card.setBounds(20, 80, 300, 20);
        add(card);

        JLabel balance = new JLabel();
        balance.setBounds(20, 400, 300, 20);
        add(balance);

        showTransactionsButton = new JButton("Show Transactions");
        showTransactionsButton.setBounds(20, 500, 150, 30);
        add(showTransactionsButton);

        showTransactionsButton.addActionListener(e -> {
            new Transactions(pinnumber).setVisible(true);
            dispose();
        });

        try {
            Conn conn = new Conn();
            ResultSet rs = conn.getData("select * from login where pin = '" + pin + "'");
            if (rs.next()) {
                card.setText("Card Number: " + rs.getString("cardnumber").substring(0, 4) + "xxxxxxxx" + rs.getString("cardnumber").substring(12));
            }
        } catch (Exception e) {
            System.out.println(e);
        }

        try {
            Conn conn = new Conn();
            int bal = 0;
            Session sess = Session.getInstance();
            ResultSet rs = conn.getData("select * from bank where signID = '" + sess.getSignID() + "'");
            while (rs.next()) {
                OffsetDateTime currentDate = LocalDateTime.now().atOffset(ZoneOffset.UTC).withOffsetSameInstant(ZoneOffset.ofHours(-8));
                String formattedDate = currentDate.format(DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm:ss 'PST'"));

                mini.setText(mini.getText() + "<html>" + formattedDate + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + rs.getString("type") + "&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;" + rs.getString("amount") + "<br><br><html>");
                if (rs.getString("type").equals("Deposit")) {
                    bal += Integer.parseInt(rs.getString("amount"));
                } else if (rs.getString("type").equals("Withdraw")) {
                    bal -= Integer.parseInt(rs.getString("amount"));
                }
            }
            balance.setText("Your Current Account Balance is ₱ " + bal);
        } catch (Exception e) {
            System.out.println(e);
        }

        mini.setBounds(20, 140, 400, 200);

        setSize(400, 600);
        setLocation(20, 20);
        getContentPane().setBackground(Color.WHITE);

        addWindowListener(new java.awt.event.WindowAdapter() {
            @Override
            public void windowClosing(java.awt.event.WindowEvent windowEvent) {
                dispose();
            }
        });
    }

    public static void showMiniStatement(String pin) {
        if (instance == null) {
            instance = new MiniStatement(pin);
            instance.setVisible(true);
        } else {
            instance.toFront();
        }
    }

    @Override
    public void dispose() {
        super.dispose();
        instance = null;
    }

    public static void main(String[] args) {
        SwingUtilities.invokeLater(() -> {
            showMiniStatement("");
        });
    }
}
