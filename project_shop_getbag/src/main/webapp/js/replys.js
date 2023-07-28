//숫자 영어로 변환해주는 함수
function numberToWord(num) {
  try {
    return new Intl.NumberFormat('en', { style: 'spellout' }).format(num);
  } catch (error) {
    return "unknown";
  }
}



