import java.util.ArrayList;
import java.util.Date;

import com.myapp.dao.entities.Employee;
import com.myapp.dao.oracleImpl.EmployeeOracleDao;

public class TestMain {
	public static void main(String[] args) {
		EmployeeOracleDao eod = new EmployeeOracleDao();
		ArrayList<Employee> eList = eod.getAllEmployees();
		
		for(Employee e :  eList) {
			System.out.println(e);
		}
	
		/*Employee e = new Employee(9179, "SUGNANA", "G S", "sugnana", "91919191", new Date(), 10000	, .10, 100, 90);
		eod.insertEmployee(e);*/
	}
}
