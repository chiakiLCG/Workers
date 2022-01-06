function set(num) {
  // 桁数が1桁だったら先頭に0を加えて2桁に調整する
  let ret;
  if (num < 10) { ret = "0" + num; }
  else { ret = num; }
  return ret;
}
function showClock() {
  const nowTime = new Date(); //現在日時

  // 年・月・日・曜日を取得
  const year = nowTime.getFullYear();
  const month = nowTime.getMonth() + 1;
  const date = nowTime.getDate();
  const day = nowTime.getDay();
  const weekday = ["日","月","火","水","木","金","土"];

  // 時間を取得
  const nowHour = set(nowTime.getHours());
  const nowMin = set(nowTime.getMinutes());
  const nowSec = set(nowTime.getSeconds());
  const DateTime = year + "年" + month + "月" + date + "日" + "(" + weekday[day] + ")" + nowHour + ":" + nowMin + ":" + nowSec;
  document.getElementById("showTime").innerHTML = DateTime;
}
setInterval('showClock()', 1000);
