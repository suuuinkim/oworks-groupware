package com.kh.oworks.admin.model.vo;

import java.sql.Date;

import lombok.AllArgsConstructor;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Setter @Getter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Admin {
	
	private Date workDate;		// 근무일
	private String deptName;	// 부서명
	private int empNo;			// 사원번호
	private String empName;		// 사원명
	private Date startTime;		// 출근시간
	private Date endTime;		// 퇴근시간
	private String workTime;	// 근무시간
	private String afterTime;	// 연장시간
	private String workStatus;	// 출결상태
	
	// 관리자 휴가분류
	private int offCateNo;			// 휴가분류번호
	private String offCateName;		// 휴가분류명
	private int offCateDay;			// 휴가일수
	
	// 관리자 휴가현황
	private int offNo;				// 휴가번호
	private String jobName;			// 직급명
	private String offGiven;		// 발생휴가
	private String offUsed;			// 사용휴가
	private String offAvailable;	// 잔여휴가
	private Date hireDate;			// 입사일
	private int workYear;			// 근무연수
	private Date offStart;			// 휴가시작일

}
