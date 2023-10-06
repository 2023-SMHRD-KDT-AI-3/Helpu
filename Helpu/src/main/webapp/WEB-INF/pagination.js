const data = [
  { title: '패턴', postNumber: 1 },
  { title: '마음가짐', postNumber: 2 },
  { title: 'HTML 기초', postNumber: 3 },
  { title: 'css 기초', postNumber: 4 },
  { title: 'CSSflex', postNumber: 5 },
  { title: 'Mac 계산기 클론하기', postNumber: 6 },
  { title: 'CSS grid', postNumber: 7 },
  { title: 'slice? splice', postNumber: 8 },
  { title: '함수를 정의하는 방법', postNumber: 9 }
];

const COUNT_PER_PAGE = 3; // 페이지 당 보여줄 게시물 수
const numberButtonWrapper = document.querySelector('.number-button-wrapper'); // 페이지네이션 버튼 wrapper
const ul = document.querySelector('ul'); // 게시물을 담을 unordered list
const prevButton = document.querySelector('.prev-button'); // 이전 페이지 버튼
const nextButton = document.querySelector('.next-button'); // 이후 페이지 버튼

let pageNumberButtons; // 페이지 버튼들

let currentPage = 1; // 초기 페이지 번호

/**
 * 필요한 페이지 번호 개수 구하기
 * 
 */
const getTotalPageCount = () => {
  return Math.ceil(data.length/COUNT_PER_PAGE);
};

/**
 * 필요한 페이지 번호 수에 맞게 페이지 버튼 구성하기
 */
const setPageButtons = () => {
  numberButtonWrapper.innerHTML = '';

  for (let i = 1; i <= getTotalPageCount(); i++) {
    numberButtonWrapper.innerHTML += `<span class="number-button"> ${i} </span>`;
  }

  numberButtonWrapper.firstChild.classList.add('selected');
  pageNumberButtons = document.querySelectorAll('.number-button');
};

/**
 * 페이지에 해당하는 게시물 ul에 넣어주기
 * @param {number} pageNumber - 이동할 페이지 번호
 */
const setPageOf = (pageNumber) => {
  ul.innerHTML = '';

  for (
    let i = COUNT_PER_PAGE * (pageNumber - 1) + 1;
    i <= COUNT_PER_PAGE * (pageNumber - 1) + 3 && i <= data.length;
    i++
  ) {
    const li = document.createElement('li');

    // 컨테이너
    const postContainer = document.createElement('div');
    postContainer.className = 'post-container';

    // 글 번호
    const postNumber = document.createElement('p');
    postNumber.className = 'post-number';

    // 글 제목
    const postTitle = document.createElement('p');
    postTitle.className = 'post-title';

    postNumber.textContent = data[i - 1].postNumber;
    postTitle.textContent = data[i - 1].title;

    postContainer.append(postNumber, postTitle);
    li.append(postContainer);
    ul.append(li);
  }
};

/**
 * 페이지 이동에 따른 css 클래스 적용
 */
const moveSelectedPageHighlight = () => {
  const pageNumberButtons = document.querySelectorAll('.number-button'); // 페이지 버튼들

  pageNumberButtons.forEach((numberButton) => {
    if (numberButton.classList.contains('selected')) {
      numberButton.classList.remove('selected');
    }
  });

  pageNumberButtons[currentPage - 1].classList.add('selected');
};

setPageButtons();
setPageOf(currentPage);

/**
 * 페이지 번호 버튼 클릭 리스너
 */
pageNumberButtons.forEach((numberButton) => {
  numberButton.addEventListener('click', (e) => {
    currentPage = +e.target.innerHTML;
    console.log(currentPage);
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  });
});

/**
 * 이전 버튼 클릭 리스너
 */
prevButton.addEventListener('click', () => {
  if (currentPage > 1) {
    currentPage -= 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});

/**
 * 이후 버튼 클릭 리스너
 */
nextButton.addEventListener('click', () => {
  if (currentPage < getTotalPageCount()) {
    currentPage += 1;
    setPageOf(currentPage);
    moveSelectedPageHighlight();
  }
});