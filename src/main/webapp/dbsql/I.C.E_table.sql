/* ����ī���볻��(�̵��, excel) */
CREATE TABLE cardUsageHistory (
	cardNum VARCHAR2(100) NOT NULL, /* ����ī�� ��ȣ */
	usePlace VARCHAR2(100), /* ���ó */
	useDate DATE DEFAULT sysdate, /* ��¥ */
	price NUMBER, /* �ݾ� */
	empNo VARCHAR2(50) /* �����ȣ */
);

ALTER TABLE cardUsageHistory
	ADD
		CONSTRAINT PK_cardUsageHistory
		PRIMARY KEY (
			cardNum
		);

/* �����ڵ� ��� */
CREATE TABLE TABLE2 (
);

/* ����ī�� */
CREATE TABLE companyCard (
	cardNo VARCHAR2(100) NOT NULL, /* ����ī�� ��ȣ */
	empNo VARCHAR2(50), /* �����ȣ */
	accCode VARCHAR(20), /* �����ڵ� */
	price NUMBER, /* �ݾ� */
	usePlace VARCHAR2(100), /* ���ó */
	useDate DATE DEFAULT sysdate /* ��¥ */
);

ALTER TABLE companyCard
	ADD
		CONSTRAINT PK_companyCard
		PRIMARY KEY (
			cardNo
		);

/* ���ϳ��� */
CREATE TABLE companyCardFile (
	no NUMBER NOT NULL, /* ���ϼ��� */
	fileName VARCHAR2(100), /* �����̸� */
	uploadDate DATE DEFAULT sysdate, /* ���Ͼ��ε� ��¥ */
	isDelete VARCHAR2(10) /* ���� ���� ���� */
);

ALTER TABLE companyCardFile
	ADD
		CONSTRAINT PK_companyCardFile
		PRIMARY KEY (
			no
		);

/* �ּҷ� */
CREATE TABLE addressBook (
	no NUMBER NOT NULL, /* �ּҷϼ��� */
	adbName VARCHAR2(100), /* �ּҷ��̸� */
	company VARCHAR2(100), /* ȸ��� */
	empNo VARCHAR2(50), /* �����ȣ */
	groupNo NUMBER, /* �׷��ȣ */
	adbNo NUMBER, /* �ּҷϹ�ȣ */
	isFavorite VARCHAR2(10), /* ���ã�� ���� */
	isDeleted VARCHAR2(10) /* ����(������) */
);

ALTER TABLE addressBook
	ADD
		CONSTRAINT PK_addressBook
		PRIMARY KEY (
			no
		);

/* �ּҷϱ׷� */
CREATE TABLE adbGroup (
	groupNo NUMBER NOT NULL, /* �׷��ȣ */
	groupName VARCHAR2(100) /* �׷��̸� */
);

ALTER TABLE adbGroup
	ADD
		CONSTRAINT PK_adbGroup
		PRIMARY KEY (
			groupNo
		);

/* ȸ�����ٰ������ִ��ּҷ� */
CREATE TABLE personalAdb (
	adbNo NUMBER NOT NULL, /* �ּҷϹ�ȣ */
	empNo VARCHAR2(50), /* �����ȣ */
	purpose VARCHAR2(10 /* ȸ���/���ο� */
);

ALTER TABLE personalAdb
	ADD
		CONSTRAINT PK_personalAdb
		PRIMARY KEY (
			adbNo
		);

/* ���������� */
CREATE TABLE TABLE8 (
	COL2 <���� ���� ����> NOT NULL, /* ������ȣ */
	COL <���� ���� ����>, /* �������� */
	COL3 <���� ���� ����>, /* �������� */
	COL4 <���� ���� ����>, /* ��¥ */
	COL5 <���� ���� ����>, /* ����ȸ����ȣ* */
	COL6 <���� ���� ����> /* �޴�ȸ����ȣ* */
);

ALTER TABLE TABLE8
	ADD
		CONSTRAINT PK_TABLE8
		PRIMARY KEY (
			COL2
		);

/* ���������� */
CREATE TABLE TABLE9 (
	COL <���� ���� ����> NOT NULL, /* �� �÷� */
	COL4 <���� ���� ����>, /* �������� */
	COL5 <���� ���� ����>, /* �������� */
	COL2 <���� ���� ����>, /* ����ȸ����ȣ* */
	COL3 <���� ���� ����> /* �޴�ȸ����ȣ* */
);

ALTER TABLE TABLE9
	ADD
		CONSTRAINT PK_TABLE9
		PRIMARY KEY (
			COL
		);

/* �系�Խ��� �亯or ��� */
CREATE TABLE TABLE10 (
	COL <���� ���� ����> NOT NULL, /* ���* ��۹�ȣ */
	COL2 <���� ���� ����>, /* �Խñ۹�ȣ* */
	COL3 <���� ���� ����>, /* �ۼ���* */
	COL4 <���� ���� ����>, /* ���� */
	COL5 <���� ���� ����> /* �ۼ��� */
);

ALTER TABLE TABLE10
	ADD
		CONSTRAINT PK_TABLE10
		PRIMARY KEY (
			COL
		);

/* �系�Խ�����õ */
CREATE TABLE TABLE11 (
	COL2 <���� ���� ����> NOT NULL, /* ��õ��ȣ */
	COL <���� ���� ����>, /* �����ȣ* */
	COL3 <���� ���� ����> /* �Խñ۹�ȣ* */
);

ALTER TABLE TABLE11
	ADD
		CONSTRAINT PK_TABLE11
		PRIMARY KEY (
			COL2
		);

/* �������� */
CREATE TABLE TABLE12 (
	NOTI_NO <���� ���� ����> NOT NULL, /* �������װԽñ۹�ȣ */
	NOTI_TITLE VARCHAR NOT NULL, /* ������ */
	COL3 <���� ���� ����> NOT NULL, /* �۾���* */
	NOTI_CONTENT CLOB NOT NULL, /* �۳��� */
	NOTI_REGDATE TIMESTAMP NOT NULL, /* ����� */
	NOTI_FILENAME VARCHAR, /* ���ε����ϸ� */
	NOTI_FILESIZE VARCHAR, /* ���ϻ����� */
	NOTI_ORFILENAME VARCHAR, /* ������ ���ε� ���ϸ� */
	NOTI_DOWNCOUNT <���� ���� ����>, /* �ٿ�� */
	NOTI_READCOUNT <���� ���� ����>, /* ��ȸ�� */
	NOTI_CATEGORY VARCHAR NOT NULL /* ī�װ� */
);

ALTER TABLE TABLE12
	ADD
		CONSTRAINT NOTICE
		PRIMARY KEY (
			NOTI_NO
		);

/* �系�Խ��� */
CREATE TABLE TABLE13 (
	COL2 <���� ���� ����> NOT NULL, /* �Խñ۹�ȣ */
	COL <���� ���� ����>, /* ������ */
	COL3 <���� ���� ����>, /* �����ȣ*���� */
	COL4 <���� ���� ����>, /* �۳��� */
	COL5 <���� ���� ����>, /* ����� */
	COL6 <���� ���� ����>, /* �̹����̸� */
	COL7 <���� ���� ����>, /* ��ȸ�� */
	COL8 <���� ���� ����>, /* ��õ */
	COL9 <���� ���� ����> /* ���ο��� */
);

ALTER TABLE TABLE13
	ADD
		CONSTRAINT PK_TABLE13
		PRIMARY KEY (
			COL2
		);

/* ���� */
CREATE TABLE position (
	pCode NUMBER NOT NULL, /* �����ڵ� */
	pName VARCHAR2(100) /* ���޸� */
);

ALTER TABLE position
	ADD
		CONSTRAINT PK_position
		PRIMARY KEY (
			pCode
		);

/* �μ� */
CREATE TABLE department (
	deptNo NUMBER NOT NULL, /* �μ��ڵ� */
	deptName VARCHAR2(100) /* �μ��� */
);

ALTER TABLE department
	ADD
		CONSTRAINT PK_department
		PRIMARY KEY (
			deptNo
		);

/* ��� */
CREATE TABLE employee (
	empNo VARCHAR2(50) NOT NULL, /* �����ȣ */
	name VARCHAR2(50), /* ����� */
	pwd VARCHAR2(50), /* ��й�ȣ */
	hp1 VARCHAR2(20), /* ��ȭ��ȣ1 */
	hp2 VARCHAR2(20), /* ��ȭ��ȣ2 */
	hp3 VARCHAR2(20), /* ��ȭ��ȣ3 */
	email1 VARCHAR2(50), /* �̸���1 */
	email2 VARCHAR2(50), /* �̸���2 */
	ssn1 VARCHAR2(50), /* �ֹι�ȣ1 */
	ssn2 VARCHAR2(50), /* �ֹι�ȣ2 */
	zipcode VARCHAR2(50), /* �����ȣ */
	addr VARCHAR2(100), /* �ּ� */
	addrDetail VARCHAR2(100), /* ���ּ� */
	salary NUMBER, /* ���� */
	hiredate DATE, /* �Ի��� */
	firedate DATE, /* ����� */
	gender VARCHAR2(10), /* ���� */
	profileURL VARCHAR2(100), /* ���� */
	originalFileName VARCHAR2(100), /* �������������̸� */
	fileSize LONG, /* ���ϻ����� */
	deptNo NUMBER, /* �μ��ڵ� */
	pCode NUMBER /* �����ڵ� */
);

ALTER TABLE employee
	ADD
		CONSTRAINT PK_employee
		PRIMARY KEY (
			empNo
		);

/* �ڸ�Ʈ */
CREATE TABLE payComment (
	commentNo NUMBER NOT NULL, /* �ڸ�Ʈ��ȣ */
	empNo VARCHAR2(50), /* �����ȣ */
	content CLOB, /* ���� */
	docNo NUMBER, /* ������ȣ */
	regdate DATE DEFAULT sysdate /* �ۼ��� */
);

ALTER TABLE payComment
	ADD
		CONSTRAINT PK_payComment
		PRIMARY KEY (
			commentNo
		);

/* ������� */
CREATE TABLE docForm (
	formNo NUMBER NOT NULL, /* ��Ĺ�ȣ */
	formName VARCHAR2(50), /* ��ĸ� */
	typeNo NUMBER, /* ����Ÿ�Թ�ȣ */
	content CLOB /* ���� */
);

ALTER TABLE docForm
	ADD
		CONSTRAINT PK_docForm
		PRIMARY KEY (
			formNo
		);

/* ���繮�� */
CREATE TABLE payment (
	docNo NUMBER NOT NULL, /* ������ȣ */
	empNo VARCHAR2(50), /* �����ȣ */
	formNo NUMBER, /* ��Ĺ�ȣ */
	title VARCHAR2(100), /* ���� */
	content CLOB, /* ���� */
	hasFile VARCHAR2(10), /* ���Ͽ��� */
	progress VARCHAR2(100), /* �����Ȳ */
	writeDate VARCHAR2(100) DEFAULT sysdate, /* ����� */
	keep DATE /* �����Ⱓ */
);

ALTER TABLE payment
	ADD
		CONSTRAINT PK_payment
		PRIMARY KEY (
			docNo
		);

/* ���� */
CREATE TABLE referenceLine (
	docNo NUMBER NOT NULL, /* ������ȣ */
	refNo NUMBER, /* �����ǹ�ȣ */
	empNo VARCHAR2(50) /* �����ȣ */
);

ALTER TABLE referenceLine
	ADD
		CONSTRAINT PK_referenceLine
		PRIMARY KEY (
			docNo
		);

/* ���缱 */
CREATE TABLE paymentLine (
	docNo NUMBER NOT NULL, /* ������ȣ */
	payNo NUMBER, /* ����ǹ�ȣ */
	payDate VARCHAR2(100) DEFAULT sysdate, /* ���纯���� */
	empNo VARCHAR2(50) /* �����ȣ */
);

ALTER TABLE paymentLine
	ADD
		CONSTRAINT PK_paymentLine
		PRIMARY KEY (
			docNo
		);

/* ����÷������ */
CREATE TABLE paymentFile (
	fileNo NUMBER NOT NULL, /* ���Ϲ�ȣ */
	fileName VARCHAR2(100), /* �����̸� */
	originalFileName VARCHAR2(100), /* �����̸� */
	fileSize LONG, /* ���Ͽ뷮 */
	docNo NUMBER /* ������ȣ */
);

ALTER TABLE paymentFile
	ADD
		CONSTRAINT PK_paymentFile
		PRIMARY KEY (
			fileNo
		);

/* ����Ÿ�� */
CREATE TABLE docType (
	typeNo NUMBER NOT NULL, /* ����Ÿ�Թ�ȣ */
	typeName VARCHAR2(50), /* Ÿ�Ը� */
	pCode NUMBER /* �����ڵ� */
);

ALTER TABLE docType
	ADD
		CONSTRAINT PK_docType
		PRIMARY KEY (
			typeNo
		);

/* �系�Խ��� ��� */
CREATE TABLE boardComment (
	BOR_NO NUMBER NOT NULL, /* �Խñ۹�ȣ */
	BCOM_NUM NUMBER NOT NULL, /* ��۹�ȣ */
	BCOM_CONUM NUMBER, /* ��ۼ�����ȣ */
	empNo VARCHAR2(50) NOT NULL, /* �����ȣ* */
	BCOM_CONTENT CLOB NOT NULL, /* ���� */
	BCOM_REGDATE DATE DEFAULT sysdate NOT NULL /* �ۼ��� */
);

ALTER TABLE boardComment
	ADD
		CONSTRAINT PK_boardComment
		PRIMARY KEY (
			BCOM_NUM
		);

/* ������ */
CREATE TABLE receivedNote (
	NOTE_NO NUMBER NOT NULL, /* ������ȣ */
	NO_TITLE VARCHAR2(100) NOT NULL, /* �������� */
	NO_CONTENT CLOB NOT NULL, /* �������� */
	NO_REGDATE DATE DEFAULT sysdate NOT NULL, /* ��¥ */
	NO_RECEIVER VARCHAR2(50) NOT NULL, /* �޴»����ȣ */
	NO_SENDER VARCHAR2(50) NOT NULL /* ���������ȣ */
);

ALTER TABLE receivedNote
	ADD
		CONSTRAINT PK_receivedNote
		PRIMARY KEY (
			NOTE_NO
		);

/* ���������� */
CREATE TABLE sentNote (
	noteNo NUMBER NOT NULL, /* �߽�������ȣ */
	title VARCHAR2(100), /* �������� */
	content CLOB, /* �������� */
	regdate DATE, /* ��¥ */
	empNo2 VARCHAR2(50), /* ���������ȣ */
	empNo VARCHAR2(50) /* ���������ȣ */
);

ALTER TABLE sentNote
	ADD
		CONSTRAINT PK_sentNote
		PRIMARY KEY (
			noteNo
		);

/* �������� */
CREATE TABLE notice (
	NOTI_NO NUMBER NOT NULL, /* �������װԽñ۹�ȣ */
	NOTI_TITLE VARCHAR2(100) NOT NULL, /* ������ */
	empNo VARCHAR2(50), /* �����ȣ* */
	NOTI_CONTENT CLOB NOT NULL, /* �۳��� */
	NOTI_REGDATE DATE NOT NULL, /* ����� */
	NOTI_FILENAME VARCHAR2(100), /* ���ε����ϸ� */
	NOTI_FILESIZE LONG, /* ���ϻ����� */
	NOTI_ORFILENAME VARCHAR2(100), /* ������ ���ε� ���ϸ� */
	NOTI_DOWNCOUNT NUMBER, /* �ٿ�� */
	NOTI_READCOUNT NUMBER, /* ��ȸ�� */
	NOTI_CATEGORY VARCHAR2(100) NOT NULL /* ī�װ� */
);

ALTER TABLE notice
	ADD
		CONSTRAINT PK_notice
		PRIMARY KEY (
			NOTI_NO
		);

/* �系�Խ�����õ */
CREATE TABLE companyBoard_recommend (
	REC_NO NUMBER NOT NULL, /* ��õ��ȣ */
	empNo VARCHAR2(50) NOT NULL, /* �����ȣ */
	BOR_NO NUMBER NOT NULL /* �Խñ۹�ȣ */
);

ALTER TABLE companyBoard_recommend
	ADD
		CONSTRAINT PK_companyBoard_recommend
		PRIMARY KEY (
			REC_NO
		);

/* �系�Խ��� */
CREATE TABLE companyBoard (
	BOR_NO NUMBER NOT NULL, /* �Խñ۹�ȣ */
	BOR_TITLE VARCHAR2(100) NOT NULL, /* ������ */
	empNo VARCHAR2(50) NOT NULL, /* �����ȣ */
	BOR_CONTENT CLOB NOT NULL, /* �۳��� */
	BOR_REGDATE DATE DEFAULT sysdate NOT NULL, /* ����� */
	BOR_IMAGE VARCHAR2(100), /* �̹����̸� */
	BOR_READCOUNT NUMBER, /* ��ȸ�� */
	BOR_RECOMMEND NUMBER, /* ��õ */
	BOR_MAIN VARCHAR2(10) /* ���ο��� */
);

ALTER TABLE companyBoard
	ADD
		CONSTRAINT PK_companyBoard
		PRIMARY KEY (
			BOR_NO
		);

/* ���������� */
CREATE TABLE mypage (
	no NUMBER, /* ��� */
	name VARCHAR2(100), /* �̸� */
	pwd NUMBER, /* ��й�ȣ */
	rank VARCHAR2(100), /* ���� */
	gender VARCHAR2(100), /* ���� */
	add_date TIMESTAMP, /* �Ի��� */
	address VARCHAR2(100), /* �ּ� */
	addressdetail VARCHAR2(100), /* ���ּ� */
	zipcode NUMBER, /* �����ȣ */
	duty VARCHAR2(100), /* ���� */
	hp1 VARCHAR2(100), /* �ڵ���1 */
	hp2 VARCHAR2(100), /* �ڵ���2 */
	hp3 VARCHAR2(100), /* �ڵ���3 */
	filename VARCHAR2(100), /* ���� */
	fileorigin VARCHAR2(100), /* �������������̸� */
	filesize LONG /* ���ϻ����� */
);

/* ���� */
CREATE TABLE note (
	no NUMBER NOT NULL, /* ��� */
	title VARCHAR2(100), /* ���� */
	content CLOB, /* ���� */
	regdate TIMESTAMP DEFAULT sysdate /* ��¥ */
);

ALTER TABLE note
	ADD
		CONSTRAINT PK_note
		PRIMARY KEY (
			no
		);

/* ���� */
CREATE TABLE TABLE14 (
	COL <���� ���� ����> NOT NULL, /* �����ڵ� */
	security VARCHAR2(50) /* ���� */
);

ALTER TABLE TABLE14
	ADD
		CONSTRAINT PK_TABLE14
		PRIMARY KEY (
			COL
		);

/* ������ */
CREATE TABLE schedule (
	title VARCHAR2(100) DEFAULT sysdate, /* ���� */
	content CLOB, /* ���� */
	scheduleStart VARCHAR2(100), /* ���۳�¥ */
	scheduleEnd VARCHAR2(100), /* ���ᳯ¥ */
	scheduleNo NUMBER, /* �����ٹ�ȣ */
	empNo VARCHAR2(50) NOT NULL /* �����ȣ */
);

/* ���°��� */
CREATE TABLE workRecord (
	startTime TIMESTAMP DEFAULT sysdate, /* ��ٽð� */
	endTime TIMESTAMP DEFAULT sysdate, /* ��ٽð� */
	empNo VARCHAR2(50) /* �����ȣ */
);

/* �������� ��� */
CREATE TABLE noticeComment (
	NOTI_NO NUMBER, /* �Խñ۹�ȣ */
	NOTICO_NUM NUMBER NOT NULL, /* ��۹�ȣ */
	NOTICO_CONUM NUMBER, /* ��ۼ�����ȣ */
	empNo VARCHAR2(50), /* �����ȣ */
	NOTICO_CONTENT CLOB, /* ���� */
	NOTICO_REGDATE DATE DEFAULT sysdate /* �ۼ��� */
);

ALTER TABLE noticeComment
	ADD
		CONSTRAINT PK_noticeComment
		PRIMARY KEY (
			NOTICO_NUM
		);

/* �����ڵ� */
CREATE TABLE accountCode (
	accCode VARCHAR(20) NOT NULL, /* �ڵ� */
	accGroup VARCHAR2(50), /* �з� */
	accTitle VARCHAR2(50), /* �������� */
	accContent CLOB /* ���� */
);

ALTER TABLE accountCode
	ADD
		CONSTRAINT PK_accountCode
		PRIMARY KEY (
			accCode
		);

/* �ڿ�������Ȳ */
CREATE TABLE resourceReservation (
	reservationNo NUMBER NOT NULL, /* ���������ȣ */
	resourceNo NUMBER NOT NULL, /* �ڿ���ȣ */
	empNo VARCHAR2(50) NOT NULL, /* ������(�����ȣ) */
	reservationDate DATE NOT NULL, /* ���೯¥ */
	startHour DATE, /* ������۽ð� */
	endHour DATE, /* ���ೡ�ð� */
	takeOverDate DATE DEFAULT SYSDATE, /* ������¥ */
	empNo2 VARCHAR2(50), /* ������(�����ȣ) */
	approveDate DATE DEFAULT SYSDATE /* ���γ�¥ */
);

ALTER TABLE resourceReservation
	ADD
		CONSTRAINT PK_resourceReservation
		PRIMARY KEY (
			reservationNo
		);

/* �ڿ����� */
CREATE TABLE resourceManagement (
	resourceNo NUMBER NOT NULL, /* �ڿ���ȣ */
	resourceName VARCHAR2(100) NOT NULL, /* �ڿ��� */
	resourcePlace VARCHAR2(50), /* �ڿ���ġ */
	resourceDescription VARCHAR2(1000), /* �ڿ��ΰ����� */
	resourceStatus VARCHAR2(50) /* �ڿ����� */
);

ALTER TABLE resourceManagement
	ADD
		CONSTRAINT PK_resourceManagement
		PRIMARY KEY (
			resourceNo
		);

/* �ڿ��̿��� */
CREATE TABLE resourceUser (
	reservationNo NUMBER NOT NULL, /* ���������ȣ */
	empNo VARCHAR2(50) NOT NULL /* �̿���(�����ȣ) */
);

/* �ڿ�������� */
CREATE TABLE resourceReservationApprove (
	reservationNo NUMBER NOT NULL, /* ���������ȣ */
	empNo VARCHAR2(50) NOT NULL /* ������(�����ȣ) */
);

ALTER TABLE resourceReservationApprove
	ADD
		CONSTRAINT PK_resourceReservationApprove
		PRIMARY KEY (
			reservationNo
		);

/* �ڿ�����2 */
CREATE TABLE ResourceManagement2 (
	resourceNo <���� ���� ����> NOT NULL, /* �ڿ���ȣ */
	resourceName <���� ���� ����> NOT NULL, /* �ڿ��� */
	resourcePlace <���� ���� ����>, /* �ڿ���ġ */
	resourceDescription <���� ���� ����>, /* �ڿ��ΰ����� */
	resourceStatus <���� ���� ����> /* �ڿ����� */
);

ALTER TABLE ResourceManagement2
	ADD
		CONSTRAINT PK_ResourceManagement2
		PRIMARY KEY (
			resourceNo
		);

ALTER TABLE cardUsageHistory
	ADD
		CONSTRAINT FK_employee_TO_cardUsageHistory
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE companyCard
	ADD
		CONSTRAINT FK_employee_TO_companyCard
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE companyCard
	ADD
		CONSTRAINT FK_accountCode_TO_companyCard
		FOREIGN KEY (
			accCode
		)
		REFERENCES accountCode (
			accCode
		);

ALTER TABLE addressBook
	ADD
		CONSTRAINT FK_adbGroup_TO_addressBook
		FOREIGN KEY (
			groupNo
		)
		REFERENCES adbGroup (
			groupNo
		);

ALTER TABLE addressBook
	ADD
		CONSTRAINT FK_personalAdb_TO_addressBook
		FOREIGN KEY (
			adbNo
		)
		REFERENCES personalAdb (
			adbNo
		);

ALTER TABLE addressBook
	ADD
		CONSTRAINT FK_employee_TO_addressBook
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE personalAdb
	ADD
		CONSTRAINT FK_employee_TO_personalAdb
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_position_TO_employee
		FOREIGN KEY (
			pCode
		)
		REFERENCES position (
			pCode
		);

ALTER TABLE employee
	ADD
		CONSTRAINT FK_department_TO_employee
		FOREIGN KEY (
			deptNo
		)
		REFERENCES department (
			deptNo
		);

ALTER TABLE payComment
	ADD
		CONSTRAINT FK_payment_TO_payComment
		FOREIGN KEY (
			docNo
		)
		REFERENCES payment (
			docNo
		);

ALTER TABLE payComment
	ADD
		CONSTRAINT FK_employee_TO_payComment
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE docForm
	ADD
		CONSTRAINT FK_docType_TO_docForm
		FOREIGN KEY (
			typeNo
		)
		REFERENCES docType (
			typeNo
		);

ALTER TABLE payment
	ADD
		CONSTRAINT FK_docForm_TO_payment
		FOREIGN KEY (
			formNo
		)
		REFERENCES docForm (
			formNo
		);

ALTER TABLE payment
	ADD
		CONSTRAINT FK_employee_TO_payment
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE referenceLine
	ADD
		CONSTRAINT FK_payment_TO_referenceLine
		FOREIGN KEY (
			docNo
		)
		REFERENCES payment (
			docNo
		);

ALTER TABLE referenceLine
	ADD
		CONSTRAINT FK_employee_TO_referenceLine
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE paymentLine
	ADD
		CONSTRAINT FK_employee_TO_paymentLine
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE paymentLine
	ADD
		CONSTRAINT FK_payment_TO_paymentLine
		FOREIGN KEY (
			docNo
		)
		REFERENCES payment (
			docNo
		);

ALTER TABLE paymentFile
	ADD
		CONSTRAINT FK_payment_TO_paymentFile
		FOREIGN KEY (
			docNo
		)
		REFERENCES payment (
			docNo
		);

ALTER TABLE docType
	ADD
		CONSTRAINT FK_position_TO_docType
		FOREIGN KEY (
			pCode
		)
		REFERENCES position (
			pCode
		);

ALTER TABLE boardComment
	ADD
		CONSTRAINT FK_employee_TO_boardComment
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE boardComment
	ADD
		CONSTRAINT FK_companyBoard_TO_boardComment
		FOREIGN KEY (
			BOR_NO
		)
		REFERENCES companyBoard (
			BOR_NO
		);

ALTER TABLE receivedNote
	ADD
		CONSTRAINT FK_employee_TO_receivedNote
		FOREIGN KEY (
			NO_RECEIVER
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE receivedNote
	ADD
		CONSTRAINT FK_employee_TO_receivedNote2
		FOREIGN KEY (
			NO_SENDER
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE sentNote
	ADD
		CONSTRAINT FK_employee_TO_sentNote
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE sentNote
	ADD
		CONSTRAINT FK_employee_TO_sentNote2
		FOREIGN KEY (
			empNo2
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE notice
	ADD
		CONSTRAINT FK_employee_TO_notice
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE companyBoard_recommend
	ADD
		CONSTRAINT FK_employee_TO_companyBoard_recommend
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE companyBoard_recommend
	ADD
		CONSTRAINT FK_companyBoard_TO_companyBoard_recommend
		FOREIGN KEY (
			BOR_NO
		)
		REFERENCES companyBoard (
			BOR_NO
		);

ALTER TABLE companyBoard
	ADD
		CONSTRAINT FK_employee_TO_companyBoard
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE mypage
	ADD
		CONSTRAINT FK_note_TO_mypage
		FOREIGN KEY (
			no
		)
		REFERENCES note (
			no
		);

ALTER TABLE schedule
	ADD
		CONSTRAINT FK_employee_TO_schedule
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE workRecord
	ADD
		CONSTRAINT FK_employee_TO_workRecord
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE noticeComment
	ADD
		CONSTRAINT FK_notice_TO_noticeComment
		FOREIGN KEY (
			NOTI_NO
		)
		REFERENCES notice (
			NOTI_NO
		);

ALTER TABLE noticeComment
	ADD
		CONSTRAINT FK_employee_TO_noticeComment
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE resourceReservation
	ADD
		CONSTRAINT FK_resourceManagement_TO_resourceReservation
		FOREIGN KEY (
			resourceNo
		)
		REFERENCES resourceManagement (
			resourceNo
		);

ALTER TABLE resourceReservation
	ADD
		CONSTRAINT FK_employee_TO_resourceReservation
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE resourceReservation
	ADD
		CONSTRAINT FK_employee_TO_resourceReservation2
		FOREIGN KEY (
			empNo2
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE resourceUser
	ADD
		CONSTRAINT FK_rsrcRsrvtn_TO_rsrcsr
		FOREIGN KEY (
			reservationNo
		)
		REFERENCES resourceReservation (
			reservationNo
		);

ALTER TABLE resourceUser
	ADD
		CONSTRAINT FK_employee_TO_resourceUser
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);

ALTER TABLE resourceReservationApprove
	ADD
		CONSTRAINT FK_rsrcRsrvtn
		FOREIGN KEY (
			reservationNo
		)
		REFERENCES resourceReservation (
			reservationNo
		);

ALTER TABLE resourceReservationApprove
	ADD
		CONSTRAINT FK_employee_TO_resourceReservationApprove
		FOREIGN KEY (
			empNo
		)
		REFERENCES employee (
			empNo
		);