package controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public interface Command {
	// Command의 역할
	// : 수행해야 하는 각 기능의 구체적인 내용을 서로 다르게 작성하지만
	// 똑같은 메소드의 이름과 공통적으로 필요한 객체들을 틀로 만들어 제공하는 역할

	// 추상 메소드
	// return → 어디로 이동할 것인지 string 값
	public abstract String execute(HttpServletRequest request, HttpServletResponse response);

	// 어떤 기능을 만나더라도 공통적으로 excute()라는 이름으로 호출이 되며
	// 서블릿이 가지고 있떤 request, response 기능을 사용할 수 있다.
	// 해당 기능을 다 수행한다면 마지막으로 이동해야하는 페이지위치를 String타입으로 리턴 받는다.
}
