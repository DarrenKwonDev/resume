
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
  Seoul, South Korea
]

#v(0cm)

#align(center)[
  #set text(size: personal_info_size)
  #boxText("darrenkwondev46@gmail.com")
  #text(" / ")
  #boxText("github.com/darrenkwondev")
  #text(" / ")
  #boxText("https://darrenkwondev.github.io")
]




////////////////////////////
// intro (optional)
////////////////////////////
#set quote(block: true)

#quote[
  Study and develop tech to make a business impact. 
  #linebreak()
  But also focus on low-level details to avoid pitfalls of leaky abstraction.  
]


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
  #grid(columns: (2.5fr, 1fr), 
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
#sectionHeader[Technical Skills]

- PL
  - C/C++ : socket programming, parallelism, concurrency programming, makefile, CMake
  - javascript/typescript : express, react, redux, styled-components, gulp, storybook, webpack, svgr
  - python : ruff, poetry, pandas, numpy, scikit-learn, fastapi, uvloop, sqlalchemy, mypy, isort
- Infra
  - Database : postgresql, mongodb, sqlite, redis
  - OS, virtualization: linux, containerization(mainly docker)
  - server components : nginx, let's encrpyt, cfssl
  - observability : linux performance metrics 
  - performance : flamegraph  
  - cloud native : k8s
  - aws : vpc, ec2, s3, cloudfront, route53, lambda
  - gcp : cloud run, bigquery
- etc
  - shell scripts and tools : bash
  - mark up language: latex, typst, html
  - git, git hook, pre-commit, husky, lint-staged



////////////////////////////
// Career Experience 
////////////////////////////
#sectionHeader[Career Experience]

#careerHeader(
  "Bisuness Cavas", 
  "Software Engineer", 
  "development dept", 
  "2021.09-2023.02")
- DataOps
  - Operated a proxy server for collecting clickstream data  
  - Architected and managed servers for data processing and computing business metrics  
- Web client
  - Removed legacy bundle code (Neutrino) and rewrote it using Webpack, thereby enhancing DX (Development Experience)
  - Progressively migrated to TypeScript, replacing about 80% of the code  
  - Developed and deployed a design system using Storybook, Rollup, and SVGR (#link("https://www.npmjs.com/package/typed-design-system")[npm link])


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
  "2014.03-2022.09"
)


////////////////////////////
// Personal Projects 
////////////////////////////

#let projectBox = (contents) => [
  #box(
    stroke: 1pt + rgb("#F3F4F6"),
      inset: 4pt,
      radius: 4pt,
      width: 95%, // 차지할 수 있는 영역의 95%만. 100%면 상자끼리 딱 맞아 떨어져버림
  )[
    
      #text(contents)
  ]
]

#sectionHeader[Personal Projects]

#grid(columns: (1fr, 1fr), 
  align(left)[
    #projectBox()[
      *2d game engine* : ECS pattern based event driven game engine core  
        - C++, SDL2, lua(binding)
        - #link("https://github.com/DarrenKwonDev/simple_2d_game_engine")
    ]

    #projectBox()[
      *ko-fuzzy* : korean consonant matching, and fuzzy search
        - korean regex, tsup, typescript
        - #link("https://github.com/DarrenKwonDev/ko-fuzzy")
    ]

    #projectBox()[
      *style-journey*  : personalize fashion recommendation service  
        - fastapi, docker, airflow, nginx, postgresql, s3  
        - #link("https://github.com/Lv2-Recsys-01/styl-backend") 
    ]
  ],
  align(left)[
    #projectBox()[
      *redis-like server* : redis-like server implementation  
        - C/C++, poll multiplexing base event loop 
        - #link("https://github.com/DarrenKwonDev/redis-like")
    ]

    #projectBox()[
      *other trivial projects*
        - fuze : one on one english tutor matching service
          - react, react-spring, s3
        - cineps : cinephiles web community
          - Next.js, nginx, express, mongodb
        - edu-popkorn : korean learning app by video clips
          - flutter
    ]
  ]
)

////////////////////////////
// OSS Contributions 
////////////////////////////
// #sectionHeader[OSS Contributions]

////////////////////////////
// Other Experiences 
////////////////////////////
#sectionHeader[Other Experiences]

#grid(columns: (1fr, 1fr), 
  align(left)[
    - Graduated from the PSWC Accelerating Program by the Korea Venture Business Association  
    - Successfully completed the government-supported Preliminary Startup Package program with distinction  
  ],
  align(left)[
    - Provided advisory support and was successfully accepted into the TIPS (Tech Incubator Program for Startup)
    - SQLD (SQL Developer) certification  
  ]
)