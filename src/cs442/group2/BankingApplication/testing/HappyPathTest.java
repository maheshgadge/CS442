package cs442.group2.BankingApplication.testing;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import org.junit.Test;

import cs442.group2.BankingApplication.Account;
import cs442.group2.BankingApplication.Customer;
import cs442.group2.BankingApplication.Item;
import cs442.group2.BankingApplication.Order;
import cs442.group2.BankingApplication.Reporting;
import cs442.group2.BankingApplication.helpers.AccountChoice;

public class HappyPathTest {

	
	@Test
	public final void CUSTOMER_LOGIN() {
		Reporting.out.println("CUSTOMER_LOGIN");
		Customer me = Customer.authenticate("apatil4", "password");
		Reporting.out.println(me);
		assertNotNull(me);
	}
	
	@Test
	public final void LIST_CUSTOMER_ACCOUNTS() {
		Reporting.out.println("LIST_CUSTOMER_ACCOUNTS");
		Customer me = Customer.authenticate("apatil4", "password");
		List<Account> accounts = me.getAccounts();
		String accountdescription = Arrays.toString(accounts
				.toArray(new Account[0]));
		Reporting.out.println(accountdescription);
		assertTrue(accounts.size()!=0);
	}

	@Test
	public final void ACCOUNT_TRANSFER() {
		Reporting.out.println("ACCOUNT_TRANSFER");
		
	}
	
	@Test
	public final void LIST_CUSTOMERTRANSACTIONS() {
		Reporting.out.println("LIST_CUSTOMERTRANSACTIONS");
		Customer me = Customer.authenticate("apatil4", "password");

		List<Account> accounts = me.getAccounts();

		Account savings = null, checkings = null;
		for (Account account : accounts) {
			if (account.getAccountType().equals("Savings"))
				savings = account;
			if (account.getAccountType().equals("Checkings"))
				checkings = account;
		}

		Reporting.out.println(checkings);

		boolean transfer = me.transfer(savings, checkings, 10);
		Reporting.out.println("Transfer status: " + transfer);
		Reporting.out.println("Checkings updated balance: "
				+ checkings.getBalance());
		assertNotNull(checkings.getBalance());
	}

	
	@Test
	public final void MAKE_ORDER() {
		Reporting.out.println("*************************");
		Reporting.out.println("MAKE_ORDER");
		ArrayList<Account> listAcc = new ArrayList<Account>();
		Account acc1 = Account.getAccount(2);

		Account acc2 = Account.getAccount(14);

		Customer abhishekKanchan = Customer.authenticate("akanch4", "password");

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
		assertTrue(orderstatus);
	}

	@Test
	public final void ORDER_HISTORY() {
		Reporting.out.println("ORDER_HISTORY");
		
		Customer me = Customer.authenticate("akanch4", "password");
		List<Order> orders = me.orderHistory();
		for (Order order : orders) {
			Reporting.out.println(order);
		}
		assertTrue(orders.size()>0);
		
	}
}
