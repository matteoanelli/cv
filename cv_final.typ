// =============================================================================
// CV Matteo Anelli – Final version
// Build: typst compile --font-path . cv_final.typ CV_MatteoAnelli.pdf
// =============================================================================

// --- Import ---
#import "@preview/fontawesome:0.6.0": *

// --- Fonts ---
#let body-font = sys.inputs.at("bodyfont", default: "Roboto")
#let head-font = sys.inputs.at("headfont", default: "Montserrat")

// --- Personal Data ---
#let personal-name      = "Matteo Anelli"
#let personal-phone     = "+39 334 2064 208"
#let personal-email     = "matteanelli.96.11@gmail.com"
#let personal-location  = "Milan, Italy"
#let personal-linkedin  = "https://www.linkedin.com/in/anellim"
#let personal-github    = "https://github.com/matteoanelli"
#let profile-photo-path = "profile.jpg"

// --- Color Palette ---
#let header-green = rgb("#4a7c59")
#let dark-green   = rgb("#2d5a3d")

// --- Component Functions ---

// Section divider: title + inline rule
#let section-divider(title) = {
  grid(
    columns: (auto, 1fr),
    column-gutter: 6pt,
    align: horizon,
    text(font: head-font, weight: "bold", size: 12pt, fill: dark-green)[#title],
    line(length: 100%, stroke: 0.5pt + dark-green),
  )
  v(1pt)
}

// --- Page Configuration ---
#let conf(doc) = {
  set page(paper: "a4", margin: (top: 0cm, bottom: 0cm, left: 1.5cm, right: 1.5cm), fill: white)
  set text(font: body-font, size: 9pt, lang: "en")
  set par(leading: 0.5em)
  show heading: set text(font: head-font, weight: "bold")
  doc
}

#show: conf

// =============================================================================
// HEADER – Green bar with photo, name, contacts, about
// =============================================================================
#move(dx: -1.5cm, dy: 0cm,
  box(
    width: 100% + 3cm,
    fill: header-green,
    inset: (x: 1.5cm, y: 0.35cm),
    {
      set text(fill: white, size: 9pt)
      grid(
        columns: (1fr, auto),
        column-gutter: 18pt,
        align: (center + horizon, right + horizon),
        {
          set par(spacing: 6pt)
          text(font: head-font, size: 34pt, weight: "bold")[#personal-name]
          v(2pt)
          text(size: 12pt, weight: "bold")[Senior Data Engineer & Architect]
          v(2pt)
          text(size: 8.5pt)[
            #fa-phone() #personal-phone #h(10pt)
            #fa-envelope() #personal-email #h(10pt)
            #fa-map-marker() #personal-location #h(10pt)
            #fa-linkedin() #link(personal-linkedin)[LinkedIn] #h(10pt)
            #fa-github() #link(personal-github)[GitHub]
          ]
          v(4pt)
          box(fill: white, stroke: 0.8pt + black, radius: 4pt, inset: (x: 10pt, y: 6pt))[
            #set text(fill: dark-green, size: 9pt, style: "italic")
            Senior Data Architect & Engineer with 5+ years of experience designing scalable data ecosystems (AWS, Databricks, Spark) and coordinating small teams as a Product Owner.
          ]
        },
        box(clip: true, radius: 50%, width: 100pt, height: 100pt,
          image(profile-photo-path, width: 100pt, height: 100pt),
        ),
      )
    }
  )
)

// =============================================================================
// SKILLS
// =============================================================================
#v(4pt)
#section-divider("Skills")

#grid(
  columns: (95pt, 1fr),
  column-gutter: 8pt,
  row-gutter: 4pt,
  text(weight: "bold", size: 9pt, fill: dark-green)[Programming],
  text(size: 9pt)[Python (Proficient), SQL (Advanced), TypeScript (Intermediate)],
  text(weight: "bold", size: 9pt, fill: dark-green)[Data Arch. & Cloud],
  text(size: 9pt)[Databricks, AWS, Lakehouse (Medallion Architecture), PySpark, Spark SQL, Delta Lake, Redshift],
  text(weight: "bold", size: 9pt, fill: dark-green)[MLOps & Data Sci.],
  text(size: 9pt)[SageMaker, MLflow, Kedro, PyTorch, scikit-learn, Pandas, NumPy],
  text(weight: "bold", size: 9pt, fill: dark-green)[DevOps, IaC & BI],
  text(size: 9pt)[AWS CDK, Docker, CI/CD, GitHub Actions, CodePipeline, Kiro, Power BI, Apache Superset],
  text(weight: "bold", size: 9pt, fill: dark-green)[Languages],
  text(size: 9pt)[Italian (Native), English (Fluent), Spanish (Basic)],
)

// =============================================================================
// WORK EXPERIENCE
// =============================================================================
#v(4pt)
#section-divider("Work Experience")

// — Senior Data Engineer & Architect (current) —
#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[Senior Data Engineer & Architect],
  text(size: 8.5pt, fill: rgb("#444444"))[Jan. 2024 – Present],
)
#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9pt, fill: dark-green, style: "italic")[Plenitude On The Road (#link("https://eniplenitude.eu/")[Website])],
  text(size: 8.5pt, fill: dark-green, style: "italic")[Milan, Italy],
)
#v(2pt)
#text(size: 9pt)[
  • Co-leading the company-wide data platform migration to Databricks and Delta Lake.
  #v(1pt)
  • Designed the lakehouse Medallion architecture end-to-end: ingestion, transformation, governance, security, CI/CD.
  #v(1pt)
  • Standardized the data stack and engineering best practices, freeing analysts from infrastructure work.
  #v(1pt)
  • Led internal technology scouting: built PoCs and championed adoption of new tools and workflows across the team.
  #v(1pt)
  • Led a Competitor Intelligence project end-to-end, turning raw data into executive dashboards.
  #v(1pt)
  • Supervised small teams to deliver data products, owning stakeholder relationships and requirements.
  #v(1pt)
  • Built a Power BI self-service framework to democratize data and cutting ad-hoc data requests by 40%.
  #v(1pt)
  • Created and promoted an agent-based development framework using Kiro to speed up development and migration process.
]
#v(3pt)

// — Data Engineer (earlier role, same company) —
#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[Data Engineer],
  text(size: 8.5pt, fill: rgb("#444444"))[Oct. 2021 – Dec. 2023],
)
#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9pt, fill: dark-green, style: "italic")[Plenitude On The Road (#link("https://eniplenitude.eu/")[Website])],
  text(size: 8.5pt, fill: dark-green, style: "italic")[Milan, Italy],
)
#v(2pt)
#text(size: 9pt)[
  • Built end-to-end ETL pipelines daily using Spark SQL and PySpark.
  #v(1pt)
  • Deployed cloud-native AWS services as IaC with CDK: Lambda, Step Functions, CodePipeline, AWS Batch.
  #v(1pt)
  • Product Owner for a Location Intelligence ML product; coordinated a hybrid team.
  #v(1pt)
  • Delivered MLOps workflows with Kedro and SageMaker for deployment and tracking.
  #v(1pt)
  • Engineered an Apache Superset customer-faced BI solution on AWS, owning infrastructure and dashboards.
]
#v(4pt)

// — Research Assistant —
#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[Research Assistant],
  text(size: 8.5pt, fill: rgb("#444444"))[Jun. 2020 – May 2021],
)
#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9pt, fill: dark-green, style: "italic")[Aalto University],
  text(size: 8.5pt, fill: dark-green, style: "italic")[Espoo, Finland],
)
#v(2pt)
#text(size: 9pt)[
  • DL decoder (PyTorch, MLflow) predicting hand kinematics from MEG data, beating state-of-the-art models. [#link("https://github.com/matteoanelli/MEG-prediction")[Github] | #link("https://aaltodoc.aalto.fi/handle/123456789/103046")[PDF]]
]
#v(4pt)

// — NLP Engineer Intern —
#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[NLP Engineer Intern],
  text(size: 8.5pt, fill: rgb("#444444"))[Feb. 2019 – Jun. 2019],
)
#grid(columns: (1fr, auto), align: (left, right),
  text(size: 9pt, fill: dark-green, style: "italic")[Taiger],
  text(size: 8.5pt, fill: dark-green, style: "italic")[Madrid, Spain],
)
#v(2pt)
#text(size: 9pt)[
  • Built a lexicon-based NLP pipeline to auto-correct OCR errors in banking documents.
]

// =============================================================================
// CERTIFICATIONS
// =============================================================================
#v(4pt)
#section-divider("Certifications")

#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[Designing and Building AI Products and Services – MITxPRO],
  text(size: 8.5pt, fill: rgb("#444444"))[Jul. 2025 – Sep. 2025],
)
#v(1pt)
#h(10pt)#text(size: 9pt)[• Product strategy for AI: aligning business design, stakeholders, and roadmap into an AI product proposal.]
#v(3pt)

#grid(columns: (1fr, auto), align: (left, right),
  text(weight: "bold", size: 10pt, fill: dark-green)[Machine Learning Engineer Nanodegree – Udacity],
  text(size: 8.5pt, fill: rgb("#444444"))[Mar. 2020 – May 2020],
)
#v(1pt)
#h(10pt)#text(size: 9pt)[• Deploying ML models on SageMaker and automating workflows with Lambda and Step Functions.]

// =============================================================================
// EDUCATION
// =============================================================================
#v(4pt)
#section-divider("Education")

#grid(
  columns: (1fr, auto),
  align: (left + horizon, right + horizon),
  row-gutter: 5pt,
  [#text(weight: "bold", size: 10pt, fill: dark-green)[Aalto University]#text(size: 9pt)[, Double M.Sc. Degree in Data Science, CGPA: 4.06/5]],
  text(size: 8.5pt, fill: rgb("#444444"))[2019 – 2020 · Espoo, Finland],
  grid.cell(colspan: 2)[#h(10pt)#text(size: 9pt)[• Minor in Innovation & Entrepreneurship]],
  [#text(weight: "bold", size: 10pt, fill: dark-green)[Universidad Politécnica de Madrid]#text(size: 9pt)[, Double M.Sc. Degree in Data Science]],
  text(size: 8.5pt, fill: rgb("#444444"))[2018 – 2020 · Madrid, Spain],
  [#text(weight: "bold", size: 10pt, fill: dark-green)[University of Trento]#text(size: 9pt)[, B.Sc. in Information & Business Organisation Engineering, CGPA: 105/110]],
  text(size: 8.5pt, fill: rgb("#444444"))[2015 – 2018 · Trento, Italy],
)
