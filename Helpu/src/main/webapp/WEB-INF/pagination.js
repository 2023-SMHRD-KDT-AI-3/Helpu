const data = [
  { img: 'imgs/cookbase0.jpg', productName: "새우깡", purchaseDate:"2023-10-10", payment:"신용카드"},
  { img: 'imgs/쿡베이스1.jpg', productName: "닭고기아스파라거스양파진밥 밀키트", purchaseDate:"2023-10-10", payment:"계좌이체"},
  { img: '패턴3', productName: "3", purchaseDate:"3", payment:"3"},
  { img: '패턴4', productName: "4", purchaseDate:"4", payment:"4"},
  { img: '패턴5', productName: "5", purchaseDate:"5", payment:"5"},
  { img: '패턴6', productName: "6", purchaseDate:"6", payment:"6"},
  { img: '패턴7', productName: "7", purchaseDate:"7", payment:"7"},
  { img: '패턴8', productName: "8", purchaseDate:"8", payment:"8"},
  { img: '패턴9', productName: "9", purchaseDate:"9", payment:"9"},
  { img: '패턴10', productName: "10", purchaseDate:"10", payment:"10"},
  { img: '패턴11', productName: "11", purchaseDate:"11", payment:"11"},
  { img: '패턴12', productName: "12", purchaseDate:"12", payment:"12"},
  { img: '패턴13', productName: "13", purchaseDate:"13", payment:"13"},
  { img: '패턴14', productName: "14", purchaseDate:"14", payment:"14"}
];

const COUNT_PER_PAGE = 3; // 페이지 당 보여줄 게시물 수
const numberButtonWrapper = document.querySelector('.number-button-wrapper'); // 페이지네이션 버튼 wrapper
const ul = document.querySelector('ul'); // 게시물을 담을 unordered list
const prevButton = document.querySelector('.prev-button'); // 이전 페이지 버튼
const nextButton = document.querySelector('.next-button'); // 이후 페이지 버튼

let pageNumberButtons; // 페이지 버튼들

let currentPage = 1; // 초기 페이지 번호

// 필요한 페이지 번호 개수 구하기
const getTotalPageCount = function(){
  // Math.ceil() → 소수점 올림함수
  return Math.ceil(data.length/COUNT_PER_PAGE);
};

// 필요한 페이지 번호 수에 맞게 페이지 버튼 구성하기
const setPageButtons = function(){
  numberButtonWrapper.innerHTML = '';

  for (let i = 1; i <= getTotalPageCount(); i++) {
    numberButtonWrapper.innerHTML += `<span class="number-button"> ${i} </span>`;
  }
  // 첫 페이지에 ('selected')클래스넣기
  numberButtonWrapper.firstChild.classList.add('selected');
  
  pageNumberButtons = document.querySelectorAll('.number-button');
};

/**
 * 페이지에 해당하는 게시물 ul에 넣어주기
 * @param {number} pageNumber - 이동할 페이지 번호
 */
const setPageOf = function(pageNumber){
  ul.innerHTML = '';

  for (
    let i = COUNT_PER_PAGE * (pageNumber - 1) + 1; i <= COUNT_PER_PAGE * (pageNumber - 1) + 3 && i <= data.length; i++) {
    const li = document.createElement('li');
	
	const container = document.createElement('div');
	container.className='post-container';
    
    // 컨테이너
    const imgContainer = document.createElement('div');

    // 이미지
    const productImg = document.createElement('img');
    productImg.className = 'product_img';

	// 제품 이름 div
	const product_name_div = document.createElement('div');
    product_name_div.className = 'product_name';
    
    // 제품이름
    const pro_name = document.createElement('a');
    
    // 제품가격
    const pro_price = document.createElement('p');

    // 구매일자 div
    const date_div = document.createElement('div');
    date_div.className = 'post-title purchase_date';

    // 구매 갯수 div
    const cnt_div = document.createElement('div');
    cnt_div.className = 'payment';

	// 리뷰작성 버튼
	const review_div = document.createElement('div');
	review_div.className='reviewContainer';
    
    // 리뷰 버튼
    const review_btn = document.createElement('button');
    review_btn.className='reviewBtn';
    
    // 구매내역 삭제버튼
   	const close_button = document.createElement('button');
   	close_button.className='close';
   	
   	// 구매버튼 내 span태그
   	const close_span = document.createElement('span');
   	close_span.className='material-symbols-outlined'
    
    // 값 집어넣기
    productImg.setAttribute('src',data[i - 1].pro_img); 
    pro_name.textContent = data[i - 1].pro_name;
    pro_price.textContent = data[i - 1].pro_price;
    date_div.textContent = data[i - 1].order_at;
    cnt_div.textContent=data[i-1].od_cnt;
    review_btn.textContent="리뷰작성"
    review_btn.setAttribute('onclick',"location.href='productServie.do?num="+data[i-1].pro_code+"'");
    
    imgContainer.append(productImg);
    product_name_div.append(pro_name,pro_price);
    review_div.append(review_btn);
    close_button.append(close_span);
    container.append(imgContainer,product_name_div,date_div,cnt_div,review_div,close_button);
    li.append(container);
    ul.append(li);
  }
};

// 페이지 이동에 따른 css 클래스 적용
const moveSelectedPageHighlight = function(){
  const pageNumberButtons = document.querySelectorAll('.number-button'); // 페이지 버튼들

  pageNumberButtons.forEach(function(numberButton){
    // 'selected'클래스 지우기
    if (numberButton.classList.contains('selected')) {
      numberButton.classList.remove('selected');
    }
  });

  pageNumberButtons[currentPage - 1].classList.add('selected');
};

setPageButtons();
setPageOf(currentPage);

// 페이지 번호 버튼 클릭 리스너
pageNumberButtons.forEach(function(numberButton){
  numberButton.addEventListener('click', function(e){
    currentPage = e.target.innerHTML;
    console.log(currentPage);
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  })
});

// 이전 버튼 클릭 리스너
prevButton.addEventListener('click', function(){
  if (currentPage > 1) {
    currentPage -= 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});

/**
 * 이후 버튼 클릭 리스너
 */
nextButton.addEventListener('click', function(){
  if (currentPage < getTotalPageCount()) {
    currentPage += 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});