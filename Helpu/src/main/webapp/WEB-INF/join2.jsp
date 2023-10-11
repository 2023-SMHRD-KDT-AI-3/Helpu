<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style type="text/css">
* {
	margin: 0;
	padding: 10px;
	box-sizing: border-box;
}

.HELFU {
	display: flex;
	justify-content: center;
}

.HELFU2 {
	display: flex;
	justify-content: center;
}

.table {
	display: flex;
	justify-content: center;
	border-collapse: collapse;
	border: 2px solid #d7d7d7;
	border-radius: 50px;
}

.btn {
	display: flex;
	justify-content: center;
}

#btn2 {
	background-color: lightgreen;
	width: 200px;
	font-size: 30px;
	color: white;
	border: none;
	border-radius: 50px;
}
</style>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="JoinService.do" method="post">
	<div class="HELFU">
		<h2>HELFU'</h2>
	</div>
	<div class="HELFU2">
		<p>가지고 있는 알레르기의 정보를 설정해주세요!</p>
	</div>
	<table class="table">
		<tr>
			<td><input type="checkbox" name="m_allergy" value="eggs"></td>
			<td>난류(가금류)</td>

			<td><input type="checkbox" name="m_allergy" value="beef"></td>
			<td>소고기</td>

			<td><input type="checkbox" name="m_allergy" value="pork"></td>
			<td>돼지고기</td>

			<td><input type="checkbox" name="m_allergy" value="chicken"></td>
			<td>닭고기</td>

			<td><input type="checkbox" name="m_allergy" value="shrimp"></td>
			<td>새우</td>
		</tr>

		<tr>
			<td><input type="checkbox" name="m_allergy" value="crab"></td>
			<td>게</td>

			<td><input type="checkbox" name="m_allergy" value="squid"></td>
			<td>오징어</td>

			<td><input type="checkbox" name="m_allergy" value="mackerel"></td>
			<td>고등어</td>

			<td><input type="checkbox" name="m_allergy" value="clam"></td>
			<td>조개류</td>

			<td><input type="checkbox" name="m_allergy" value="milk"></td>
			<td>우유</td>
		</tr>

		<tr>
			<td><input type="checkbox" name="m_allergy" value="peanut"></td>
			<td>땅콩</td>

			<td><input type="checkbox" name="m_allergy" value="walnut"></td>
			<td>호두</td>

			<td><input type="checkbox" name="m_allergy" value="pinenut"></td>
			<td>잣</td>

			<td><input type="checkbox" name="m_allergy" value="soybean"></td>
			<td>대두</td>

			<td><input type="checkbox" name="m_allergy" value="peach"></td>
			<td>복숭아</td>
		</tr>

		<tr>
			<td><input type="checkbox" name="m_allergy" value="tomato"></td>
			<td>토마토</td>

			<td><input type="checkbox" name="m_allergy" value="wheat"></td>
			<td>밀</td>

			<td><input type="checkbox" name="m_allergy" value="buckwheat"></td>
			<td>메밀</td>

			<td><input type="checkbox" name="m_allergy" value="acids"></td>
			<td>이황산류</td>
		</tr>

	</table>


	<div class="btn">
		<table>
			<tr>
				<td><input type="submit" value="완료"> </script></td>

			</tr>
		</table>
	</div>
	</form>
</body>
</html>