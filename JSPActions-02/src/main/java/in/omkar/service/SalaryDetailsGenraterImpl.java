package in.omkar.service;

import in.omkar.dto.Employee;

public class SalaryDetailsGenraterImpl implements SalaryDetailsGenrater {

	@Override
	public void genrateSalaryDetails(Employee dto) {
		dto.setgSalary( dto.getbSalary()+(dto.getbSalary()*0.3f));
		dto.setnSalary(dto.getgSalary() - dto.getbSalary()*0.2f);
	}

}
