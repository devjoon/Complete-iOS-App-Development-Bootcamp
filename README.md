# Complete-iOS-App-Development-Bootcamp
Udemy 스터디 저장소

[23.9.20] (섹션1,섹션2 완료)
> xcode도구 사용, 레이블 사용, 이미지 뷰 사용, 아이콘 제작, 아이콘 적용, 기종별 픽셀, 배율은 왜 있는가(1x,2x,3x), 앱 시뮬레이터 사용, 앱 직접 디바이스에 넣어서 사용,
> 런치 스크린은 앱이 실행될 때 보이는 화면

[23.9.21] (섹션3 완료)
> 섹션 2의 앱 만들기에서 만든 앱과 동일 한 앱 직접 구현 ( 복습 )

[23.9.21] (섹션4 완료)
> 깃 허브의 다양한 앱들 클론해서 구경해보기 (FlappySwift), Dice 앱 구현중 @IBOutlet 연결과 해제 image View의 어트리뷰트 인스펙터 코드로의 접근법, #imageLiteral() 이용, 알파값 다루기 , 변수와 상수 , 기본자료형 다루기 , 배열 (셔플, 랜덤)

> 버튼을 코드와 연결할때 버튼의 모양을 바꿀 생각이 있다면 Connection은 outlet으로 그게 아니라 동작을 수행하려는거면 Action으로 설정<br>IBAction은 디자인화면에서 코드로, IBOutlet은 코드에서 디자인으로 신호를 보낸다

> 에러가 발생했을때는 디버그 메시지 영역에서 맨 위로 스크롤해서 충돌 이유 확인 후 검색을 통해서 해결하자

> 케밥케이스 , 스네이크케이스 등이 있지만 스위프트는 카멜케이스만 생각하자

> ViewDidLoad는 필수는 아니다 필요없으면 지워도 상관없음

[23.9.22] (섹션5 완료)
> 섹션 4의 앱 만들기에서 만든 앱과 기능상 동일한 앱 직접 구현 (복습)

[23.9.22] (섹션6 완료)
> 오토레이아웃, 가로세로 화면 디자인 다루기 , Safe Area 란 , Safe Area 에 의한 짤림 해결 (Superview) , 제약조건 다루기, 뷰를 이용하여 컨테이너방식으로 레이아웃 조정, Embed In, 

> 슈퍼뷰나 세이프에어리어로 제약을 변경할때 Constant 설정 0 로 바꿔주는걸 잊지말자

> 스택 뷰 안에 각각의 뷰들을 넣어주고 스택뷰의 Distribution을 Fill Equally로 하면 동일한 크기로 구역을 나눠준다

> 각 위치적인제약을 추가하다보면 내용물 크기가 해당제약에 맞춰 변동될수있다 그래서 크기(height,width)제약을 따로 걸어줘야 크기의 변화를 막을수 있다

> 제약을 걸때 글씨가 들어가있는경우 오토 레이아웃 문제가 발생할 수 있는데 고정된 너비 제약 조건이 있을경우 안에 글씨가 길어지면 글씨가 잘려버리는 모습이 발생할수 있기때문, 너비 제약조건을 제거 하거나 넓이보다 적은 글씨가 들어있어도 100을 유지하게 하는 미니멈 맥시멈 제약을 추가해줄수있다

> 섹션 6의 앱 만들기에서 배운 레이아웃을 계산기 UI에 직접 구현 , 스택뷰 활용

[23.9.25] (섹션7 진행중)
> 구글, 스택오버플로우, 공식자료를 이용한 문제 접근법, AVFoundation

> AVFoundation : 시청각 기반모듈, 오디오 하드웨어와의 상호작용 기능 제공

> 버튼을 만들었을때 sender의 정보를 알아낼 많은 방법이 있는데 그중 sender.currentTitle을 이용하면
해당 sender의 타이틀값(옵셔널)을 가지고 올 수 있다 , 이것을 이용해서 여러 버튼을 제어가 가능

[23.9.27] (섹션7 완료)
> 섹션7 boss Challenge 완료

> DispatchQueue를 이용한 지연기능 활용

[23.9.28] (섹션8 진행중)
> Arributes inspector에서 Line을 0으로 만들면 해당하는 Label의 줄 제한이 없어진다<br>
> 1 이상부터는 줄 수 의 제한을 주며 폰트 사이즈를 줄임<br>
> AutoShrink에서 미니멈 폰트를 설정해 줄 수도 있다 

[23.10.5] (섹션8 완료)
> progressBar 의 사용, 타이머의 사용

[23.10.6] (섹션9 진행중)
> 타이머를 이용하여 색상변경에 지연하는법 구현, MVC패턴을 이용한 파일 리팩토링

[23.10.11] (섹션9 완료)
> setTitle을 이용하여 타이틀 값을 변경가능

[23.10.11] (섹션10 완료)
> 섹션 9에서 배운 내용들로 스토리 기반 선택게임 앱 직접 구현

[23.10.12] (섹션11 진행중)
> Slider 사용, String(format:) 구문을 이용하여 소숫점 처리 ,pow(,) 를 이용한 제곱사용

[23.11.5] (섹션11 진행중)
> segue 화면 전환 사용, CGRect를 이용하여 코드로 오브젝트의 크기와 위치를 정할수 있다

> segue.destination as! ResultViewController의 해석

> as는 데스티네이션의 뷰 컨트롤러가 (!) 를사용하여 확실히 ResultViewController일 것이다 라는 것을 나타내주어

> ResultViewController안에있는 프로퍼티인 bmiValue에 접근을 할 수 있게 해준다

[23.11.6] (섹션 11 완료)

[23.11.7] (섹션 12 완료)
> UIButton의 .isSelected를 이용하여 선택상태 표시

> UITextField의 .endEditing(true) 이용하여 글씨 입력 허용가능

> String(format: "%.2f", data) // .숫자f 를 이용하여 소숫점 어디까지 보여줄 것인가 정하고 String 반환

> prepare를 이용하여 다음 뷰 컨트롤러에 데이터 전달가능

> performSegue(withIdentifier:, sender:) 이용하여 세그방식 화면전환가능

> .dismiss 이용하여 push된 화면 pop 해줄수 있다.
