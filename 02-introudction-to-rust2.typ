// Get Polylux from the official package repository
#import "@preview/polylux:0.4.0": *

#let themecolor = rgb(242, 176, 98)

// Make the paper dimensions fit for a presentation and the text larger
#set page(paper: "presentation-16-9")
#set text(size: 25pt, font: ("IBM Plex Sans KR", "IBM Plex Mono"), lang: "ko")
#set page(margin: 0em)

#set quote(block: true)

// Use #polylux-slide to create a slide and style it using your favourite Typst functions
#slide[
  #place(top + left)[
    #rect(fill: themecolor, width: 100%, height: 60%)
  ]
  #v(60% - 6em)
  #pad(x: 3em, y: 3em, [
  #text(2em, weight: "black", fill: white, [\#2 Intro. to Rust (2)])

  #pad(
    top: 0.7em,
    right: 20%,
    [#strong[\@aaaadev]]
  )

    #text(size: 0.8em)[May 14, 2025]
  ])
]

#set page(
  paper: "presentation-16-9",
  margin: 2cm,
  footer: [
    #set text(size: .6em)
    #set align(horizon)

    \#2 Introduction to Rust (2) - \@aaaadev #toolbox.slide-number
  ],
)

#pagebreak()

#slide[
  == 앞으로의 스터디 방향
  - Rust By Example 한국어 번역판 (#link("https://doc.rust-kr.org/"))을 기반으로 진행됨.
  - 강의자료 만드는데 들어가는 비용이 생각보다 크기도 하고, 만들었는데 그게 Rust By Example보다 나은 것 같진 않아서...
]

#slide[
  == 오늘 주제
  - 일반적인 프로그래밍 컨셉 (#link("https://doc.rust-kr.org/ch03-00-common-programming-concepts.html")) 리뷰하기
  - 소유권 이해하기 (#link("https://doc.rust-kr.org/ch04-00-understanding-ownership.html"))
]

#pagebreak()

#slide[
  == 과제
  - 문자열을 생성하고 함수에 전달하여 소유권이 이동되는 과정을 실험해보기
  + 참조자(`&str` 또는 `&String`)를 함수에 넘겨서 소유권이 유지되는 방식도 실험.
  + 함수에서 값을 리턴하여 소유권을 다시 돌려주는 방식도 실험.
  ```rs
  fn main() {
    let s = String::from("hello");

    takes_ownership(s);
    // println!("{}", s); // COMPILE ERROR

    let x = 5;
    makes_copy(x);

    let s2 = String::from("world");
    print_length(&s2);

    let s3 = give_ownership_back(String::from("hi"));
    println!("{}", s3);
  }
  ```
]