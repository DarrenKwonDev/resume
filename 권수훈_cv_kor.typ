
////////////////////////////
// global settings
////////////////////////////

#let default_font_size = 10pt
#let name_size = 12pt
#let personal_info_size = 10pt

//  https://typst.app/docs/reference/layout/page/
#set page(
  paper: "a4",
  margin: 1cm,
  numbering: "1 / 1",
)

// english version
#set text(
  font: "Times New Roman",
  size: default_font_size,
  cjk-latin-spacing: none,
)
// korean version
#set text(
  font: "Apple SD Gothic Neo",
  size: default_font_size
)

#set heading(level: 1, supplement: none)
#set heading(level: 2, supplement: none)


#let sectionHeader = (title) => [
  #align(left)[
    #set text(size: section_size)
    == #title
    #v(-0.2cm) 
    #line(length: 100%, stroke: 1pt + black)
  ]
]

#let boxText = (txt) => [
  #box(
    stroke: 1pt + rgb("#F3F4F6"),
    fill: rgb("#F3F4F6"),
    outset: 3pt,
    radius: 3pt,
  )[
    #text(weight: "bold")[
    #text(txt)
    ]
  ]
]

////////////////////////////
// top of cv
////////////////////////////
#align(center)[
  #set text(size: name_size)
  = SUHUN KWON
]

#v(0cm)

#align(center)[
  #set text(size: personal_info_size)
  
]

#v(0.2cm)

#align(center)[
  #set text(size: personal_info_size)
  // #boxText(link("https://darrenkwondev.github.io/")[darrenkwondev.github.io])
  // #text(" | ")
  #boxText(
    link("https://github.com/DarrenKwonDev")[github.com/darrenkwondev]
    )
  #v(0.02cm)
  #boxText("Seoul, South Korea")
  #text(" | ")
  #boxText("+82 10-6707-4624")
  #text(" | ")
  #boxText("darrenkwondev46@gmail.com")
]




////////////////////////////
// intro (optional)
////////////////////////////
#set quote(block: true)

// #quote[
//   Mainly focus on server, infra
//   #linebreak()
//   focus on low-level details to avoid pitfalls of leaky abstraction.  
// ]


////////////////////////////
// sections related helpers
////////////////////////////

#let section_size = 11pt

#let sectionHeader = (title) => [
  #align(left)[
    #set text(size: section_size)
    == #title
    #v(-0.2cm) 
    #line(length: 100%, stroke: 1pt + black)
  ]
]


// justify-content: space-between 와 같은 기능은 없음.
// 양쪽 정렬을 위해서 grid의 왼쪽은 align left로, 오른쪽은 align right로 설정하는게 최선.
// grid : https://typst.app/docs/reference/layout/grid
#let educationEntity = (title, subtitle, where, when) => [
  #grid(columns: (2.5fr, 1.5fr), 
    align(left)[
      *#title*
      #linebreak()
      #subtitle
    ],
    align(right)[
      #where
      #linebreak()
      #when
    ]
  )
]

#let careerHeader = (title, subtitle, department, when) => [
  #grid(columns: (2.5fr, 1fr), 
    align(left)[
      *#title*
      #linebreak()
      #subtitle
    ],
    align(right)[
      #department
      #linebreak()
      #when
    ]
  )
]

////////////////////////////
// sections 
////////////////////////////

#sectionHeader[과거 핵심 성과]

- 일 최대 2억 수익, 연간 수익률 400% 이상의 핵심 전략의 포팅 프로젝트 리드 및 성공적으로 마무리   
- 문서, 코드를 확인할 수 없는 free pascal 기반의 레거시 서버를 C 로 포팅, 운영   

////////////////////////////
// sections 
////////////////////////////

#sectionHeader[Technical Skills]

- C : DMA 내의 서버 개발에 활용. 외부 플러그인 없이 pure vim만을 활용해 개발   
- Visual C++ : Windows 환경에서 MFC 기반 클라이언트 개발을 위해 사용   
- CPython : 전략의 PoC 및 전략팀과의 의사소통을 위해 활용    
- Typescript : 웹 개발 및 크롤링 업무를 위해 활용    
- bash : 개발 환경 구축 및 운영 자동화 스크립트 작성  

////////////////////////////
// Career Experience 
////////////////////////////
#sectionHeader[Career Experience]

#careerHeader(
  "Ridge Trading Group", 
  "Software Engineer", 
  "개발팀", 
  "2024.02-Present")

- 트레이딩 시스템 개발
  - 멀티프로세스 기반 실시간 시세 서버 개발 (120+ 프로세스 운영)
  - 시세 FEP 대응 및 배치/호가/체결/민감도 처리 시스템 구축
  - MFC 기반 트레이딩 모니터링 시스템 유지보수
- 매매 전략 개발
  - No IDE 환경에서 DMA 기반 주식 현물 전략 개발
  - 레거시 시스템 분석 및 포팅을 통한 전략 이식
- 개발 환경 구축 및 운영 자동화  
    - git bare repo 관리
    - 폐쇄망 내 외부 패키지 다운로드를 위한 프록시 서버 운영


#careerHeader(
  "Business Canvas", 
  "Software Engineer", 
  "개발팀", 
  "2021.09-2023.02")
- Server, Infra
  - clickstream data 수집을 위한 중계 서버 운영  
    - node.js multi connection relay server  
  - data processing 및 business metric 연산용 서버 아키텍쳐링 및 운영  
    - MQL(Marketing Qualified Lead), SQL(Sales Qualified Lead) 집계
- Web Programming
  - 레거시 번들 코드(neutrino)를 제거하고 webpack으로 재작성. 개발 편의성 향상 
  - typescript을 점진적 마이그레이션하여 80% 정도의 코드를 교체
  - storybook, rollup, svgr을 활용하여 design system 개발 및 배포 (#link("https://www.npmjs.com/package/typed-design-system")[npm link])
  - 웹 개발 일반 (화면 구성, API 연동, 기능 추가 등)


#careerHeader(
  "Freelancer", 
  "", 
  "", 
  "")
- TIPS(민간투자주도형 기술창업지원) 컨설팅 및 장표 작성 (합격)  


////////////////////////////
// Education 
////////////////////////////
// #sectionHeader[Posts]

// - #link("https://darrenkwondev.github.io/posts/2023-12-28_kernel_study_03.md/")[Inside the Kernel - How Load Average is Calculated]
// #v(0.2cm)
// - #link("https://darrenkwondev.github.io/posts/2024-01-06-cheap_k8s/")[
//   GCP에서 저렴하게 교육용 쿠버네티스를 운용하는 방법
// ]

// #v(5.5cm)


#v(0.5cm)

////////////////////////////
// Education 
////////////////////////////
#sectionHeader[Education]
#educationEntity(
  "Naver Connect Foundation",
  "boostcamp AI Tech, Recommender System",
  "Seoul, South Korea",
  "2023.03-2023.08"
)
#educationEntity(
  "Seoul National University",
  "B.S in Venture Business Management & Korean literature",
  "Seoul, South Korea",
  "2014.03-2022.09 (+ 2 year of military service)"
)



////////////////////////////
// Personal Projects 
////////////////////////////

// #let projectBox = (contents) => [
//   #box(
//     stroke: 1pt + rgb("#F3F4F6"),
//       inset: 4pt,
//       radius: 4pt,
//       width: 95%, // 차지할 수 있는 영역의 95%만. 100%면 상자끼리 딱 맞아 떨어져버림
//   )[
    
//       #text(contents)
//   ]
// ]

// #sectionHeader[Personal Projects]

// #grid(columns: (1fr, 1fr), 
//   align(left)[
//     #projectBox()[
//       *2d game engine* : ECS pattern based event driven game engine core  
//         - C++, SDL2, lua(binding), game loop
//         - #link("https://github.com/DarrenKwonDev/simple_2d_game_engine")
//     ]

//     #projectBox()[
//       *ko-fuzzy* : korean consonant matching, and fuzzy search
//         - korean regex, tsup, typescript
//         - #link("https://github.com/DarrenKwonDev/ko-fuzzy")
//     ]

//     #projectBox()[
//       *style-journey*  : personalize fashion recommendation service  
//         - fastapi, docker, airflow, nginx, postgresql, s3  
//         - #link("https://github.com/Lv2-Recsys-01/styl-backend") 
//     ]
//   ],
//   align(left)[
//     #projectBox()[
//       *redis-like server* : redis-like server implementation  
//         - C/C++, poll multiplexing base event loop 
//         - #link("https://github.com/DarrenKwonDev/redis-like")
//     ]

//     #projectBox()[
//       *other trivial projects*
//         - naver-vod-dl : transport stream merger and downloader
//           - bash
//         - fuze : one on one english tutor matching service
//           - react, react-spring, s3
//         - cineps : cinephiles web community
//           - nginx, express, mongodb, logrotate, Next.js
//         - edu-popkorn : korean learning app by video clips
//           - flutter
//     ]
//   ]
// )

////////////////////////////
// OSS Contributions 
////////////////////////////
// #sectionHeader[OSS Contributions]

////////////////////////////
// Other Experiences 
////////////////////////////
// #sectionHeader[Other Experiences]

// #grid(columns: (1fr, 1fr), 
//   align(left)[
//     - 한국벤처협회 PSWC 엑셀러레이팅 프로그램 수료 
//     - 예비창업패키지 우수 등급 수료
//   ],
//   align(left)[
//     - SQLD
//   ]
// )