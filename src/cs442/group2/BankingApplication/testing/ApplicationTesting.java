package cs442.group2.BankingApplication.testing;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Scanner;

import cs442.group2.BankingApplication.Account;
import cs442.group2.BankingApplication.BankConnect;
import cs442.group2.BankingApplication.Cart;
import cs442.group2.BankingApplication.Customer;
import cs442.group2.BankingApplication.Item;
import cs442.group2.BankingApplication.Order;
import cs442.group2.BankingApplication.Reporting;
import cs442.group2.BankingApplication.Transaction;
import cs442.group2.BankingApplication.helpers.AccountChoice;

@SuppressWarnings({ "unused" })
public class ApplicationTesting{
	public static void main(String[] args) throws IOException {
		Scanner in = new Scanner(System.in);
		int choice = -1;
		while (choice != 8) {
			System.out.println("\nBank Application and Shopping Portal");
			System.out.println("1. TRANSFER FROM SAVINGS TO CHECKINGS");
			System.out.println("2. LIST ALL ACCOUNTS OF CUSTOMER");
			System.out.println("3. LIST ACCOUNT BY ID");
			System.out.println("4. GET TRANSACTIONHISTORY");
			System.out.println("5. MAKEORDER");
			System.out.println("6. GET ORDERHISTORY");
			System.out.println("7. GET ACCOUNT BY CREDITCARD NAME AND NUMBER");
			System.out.println("8. EXIT");
			System.out.print("Enter Choice: ");
			choice = Integer.parseInt(in.nextLine());
			switch (choice) {
				case 1:
						          
					transferFromSavingsToCheckings();
					break;
				case 2:
					listAllAccountsOfCustomer();
					break;
				case 3:
					listAccountByID();
					break;
				case 4:
					getTransactionHistory();
					break;
				case 5:
					makeOrder();
					break;
				case 6:
					getOrderHistory();
					break;
				case 7:
					getAccountByCreditCard();
					break;
				case 8:
					break;
				default:
					break;
			}
			
		}

		// Reporting.showLog();
	}

	private static void getAccountByCreditCard() {
		String s2=null,s=null;
		s = getUserName();
		s2 = getPassword();
		Customer me = Customer.authenticate(s, s2);
		//Customer abhishekKanchan = Customer.authenticate("akanch4", "password");
		Account account = Account.getAccountByCreditCardNumber(
				"8888888888888882", "888");
		System.out.println("Account: "+account);

	}

	private static void makeOrder() {

		ArrayList<Account> listAcc = new ArrayList<Account>();
		Account acc1 = Account.getAccount(2);

		Account acc2 = Account.getAccount(14);

		String s2=null,s=null;
		s = getUserName();
		s2 = getPassword();
		Customer abhishekKanchan = Customer.authenticate(s, s2);
		//Customer abhishekKanchan = Customer.authenticate("akanch4", "password");

		if (abhishekKanchan.getCart().getAllItems().size() == 0) {
			List<Item> items = Item.getAllItems();
			for (int i = 0; i < 3; i++) {
				abhishekKanchan.addItemToCart(items.get(i), i + 1);
			}
		}

		// Choose option for payment

		ArrayList<AccountChoice> accChoices = new ArrayList<AccountChoice>();
		AccountChoice choice1 = new AccountChoice(acc1, abhishekKanchan
				.getCart().getItemTotalCost() - 2);
		AccountChoice choice2 = new AccountChoice(acc2, 2);

		accChoices.add(choice1);
		accChoices.add(choice2);

		boolean orderstatus = abhishekKanchan.order(accChoices);
		System.out.println("Order Status is : " + orderstatus);

	}

	private static void getOrderHistory() {
		String s2=null,s=null;
		s = getUserName();
		s2 = getPassword();
		Customer me = Customer.authenticate(s, s2);
		//Customer me = Customer.authenticate("akanch4", "password");
		List<Order> orders = me.orderHistory();
		for (Order order : orders) {
			Reporting.out.println("Order: "+order);
		}
	}

	private static void getTransactionHistory() {
		String s2=null,s=null;
		s = getUserName();
		s2 = getPassword();
		Customer me = Customer.authenticate(s, s2);
		//Customer me = Customer.authenticate("apatil4", "password");
		List<Account> accounts = me.getAccounts();
		Account account = accounts.get(0);
		List<Transaction> accountHistory = account.accountHistory();
		System.out.println("---Transaction List---");
		
		for (Transaction transaction : accountHistory) {
			System.out.println("Transaction: "+transaction);
		}
	}

	private static void listAccountByID() {
		int accountIDs[] = { 7, 13, 19, 25 };
		System.out.println("---Accounts--- ");
		
		for (int accountID : accountIDs) {
			Account account = Account.getAccount(accountID);
			System.out.println("Account: "+account);

		}

	}

	private static void listAllAccountsOfCustomer() {
		// TODO: Change database schema, update balance for credits to 1500
		String s2=null,s=null;
		s = getUserName();
		s2 = getPassword();
		Customer me = Customer.authenticate(s, s2);
		//Customer me = Customer.authenticate("apatil4", "password");
		List<Account> accounts = me.getAccounts();
		String accountHistory = Arrays.toString(accounts
				.toArray(new Account[0]));
		Reporting.out.println("---Account History---\n"+accountHistory);

	}

	private static String getUserName(){
		String s=null;
		System.out.println("Enter Username: ");
		BufferedReader br = new BufferedReader( new InputStreamReader(System.in));
		try {
			s = br.readLine();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		return s;
	}
	
	private static String getPassword(){
			String s2=null;
		System.out.println("Enter Password: ");
		BufferedReader br2 = new BufferedReader( new InputStreamReader(System.in));
		try {
			 s2 = br2.readLine();
			
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return s2;
		}
	
	
	
	private static void transferFromSavingsToCheckings() {
		String s2=null,s=null;
//		System.out.println("Enter Username");
//		BufferedReader br = new BufferedReader( new InputStreamReader(System.in));
//		try {
//			s = br.readLine();
//			
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//		
//		System.out.println("Enter Password");
//		BufferedReader br2 = new BufferedReader( new InputStreamReader(System.in));
//		try {
//			 s2 = br2.readLine();
//			
//		} catch (IOException e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
		s = getUserName();
		s2 = getPassword();
		Customer me = Customer.authenticate(s, s2);

		List<Account> accounts = me.getAccounts();

		Account savings = null, checkings = null;
		for (Account account : accounts) {
			if (account.getAccountType().equals("Savings"))
				savings = account;
			if (account.getAccountType().equals("Checkings"))
				checkings = account;
		}

		Reporting.out.println("Account: "+checkings);

		boolean transfer = me.transfer(savings, checkings, 10);
		Reporting.out.println("Transfer status: " + transfer);
		Reporting.out.println("Checkings updated balance: "
				+ checkings.getBalance());

	}
}
