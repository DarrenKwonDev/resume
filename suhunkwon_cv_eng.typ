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

#sectionHeader[Key Past Achievements]

- Led and successfully completed porting project for core strategy generating up to 200M KRW daily revenue with annual return rate of 400%+   
- Ported and operated legacy server from undocumented Free Pascal codebase to C   

////////////////////////////
// sections 
////////////////////////////

#sectionHeader[Technical Skills]

- C : Used for server development within DMA. Developed using pure vim without external plugins   
- Visual C++ : Used for MFC-based client development in Windows environment   
- CPython : Used for strategy PoC and communication with strategy team    
- Typescript : Used for web development and crawling tasks    
- bash : Used for development environment setup and operational automation scripts  

////////////////////////////
// Career Experience 
////////////////////////////
#sectionHeader[Career Experience]

#careerHeader(
  "Ridge Trading Group", 
  "Software Engineer", 
  "Development Team", 
  "2024.02-Present")

- Trading System Development
  - Developed multi-process based real-time market data server (120+ processes operation)
  - Built market data FEP handling and batch/order book/execution/sensitivity processing systems
  - Maintained MFC-based trading monitoring system
- Trading Strategy Development
  - Developed DMA-based equity spot strategies in No IDE environment
  - Legacy system analysis and strategy migration through porting
- Development Environment Setup and Operational Automation  
    - git bare repository management
    - Proxy server operation for external package downloads in closed network


#careerHeader(
  "Business Canvas", 
  "Software Engineer", 
  "Development Team", 
  "2021.09-2023.02")
- Server, Infra
  - Operated relay server for clickstream data collection  
    - node.js multi connection relay server  
  - Architected and operated server for data processing and business metric computation  
    - MQL(Marketing Qualified Lead), SQL(Sales Qualified Lead) aggregation
- Web Programming
  - Removed legacy bundle code (neutrino) and rewrote with webpack. Improved development convenience 
  - Gradually migrated to TypeScript, replacing approximately 80% of codebase
  - Developed and deployed design system using storybook, rollup, svgr (#link("https://www.npmjs.com/package/typed-design-system")[npm link])
  - General web development (UI composition, API integration, feature additions, etc.)


#careerHeader(
  "Freelancer", 
  "", 
  "", 
  "")
- TIPS(Technology Incubator Program for Startup) consulting and presentation preparation (accepted)  


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