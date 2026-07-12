// =============================================================================
// CV Matteo Anelli – ATS-friendly version (single column, no photo, no icons)
// Build: typst compile --font-path . cv_ats.typ CV_MatteoAnelli_ATS.pdf
// =============================================================================

// --- Fonts ---
#let body-font = "Roboto"
#let head-font = "Montserrat"

// --- Personal Data ---
#let name     = "Matteo Anelli"
#let role     = "Senior Data Engineer & Architect"
#let phone    = "+39 334 2064 208"
#let email    = "matteanelli.96.11@gmail.com"
#let location = "Milan, Italy"
#let linkedin = "https://www.linkedin.com/in/anellim"
#let github   = "https://github.com/matteoanelli"
#let summary  = "Senior Data Architect & Engineer with 5+ years of experience designing scalable data ecosystems (AWS, Databricks, Spark) and coordinating small teams as a Product Owner."

// --- Colors (subtle, print-safe) ---
#let ink   = rgb("#2d5a3d")
#let body  = rgb("#1f2937")
#let muted = rgb("#555555")
#let hair  = rgb("#cfd6dd")

// --- Helpers ---
#let section(title) = {
  v(3pt)
  grid(
    columns: (auto, 1fr),
    column-gutter: 6pt,
    align: horizon,
    text(font: head-font, weight: "bold", size: 11pt, fill: ink)[#upper(title)],
    line(length: 100%, stroke: 0.6pt + hair),
  )
  v(2pt)
}

#let job(title, org, place, dates) = {
  grid(columns: (1fr, auto), column-gutter: 8pt, align: (left, right),
    [#text(weight: "bold", size: 10pt, fill: body)[#title] #text(size: 9pt, fill: body)[– #org]],
    text(size: 9pt, fill: muted)[#dates],
  )
  text(size: 9pt, fill: muted, style: "italic")[#place]
  v(2pt)
}

#let b(content) = {
  grid(columns: (10pt, 1fr), column-gutter: 2pt, align: (left + top, left),
    text(fill: body)[•],
    content,
  )
  v(1pt)
}

// --- Page Setup ---
#set page(paper: "a4", margin: (x: 1.6cm, y: 1.0cm), fill: white)
#set text(font: body-font, size: 9pt, fill: body, lang: "en")
#set par(leading: 0.5em, justify: false)

// =============================================================================
// HEADER
// =============================================================================
#align(center, {
  text(font: head-font, weight: "bold", size: 20pt, fill: ink)[#name]
  text(size: 12pt, fill: muted)[  –  ]
  text(size: 12pt, fill: body, weight: "bold")[#role]
  v(3pt)
  text(size: 9pt, fill: muted)[
    #phone  ·  #link("mailto:" + email)[#email]  ·  #location  ·  #link(linkedin)[linkedin.com/in/anellim]  ·  #link(github)[github.com/matteoanelli]
  ]
})

// =============================================================================
// SUMMARY
// =============================================================================
#section("Summary")
#text(size: 9pt, fill: body)[#summary]

// =============================================================================
// TECHNICAL SKILLS
// =============================================================================
#section("Technical Skills")
#grid(
  columns: (95pt, 1fr),
  column-gutter: 8pt,
  row-gutter: 3pt,
  text(size: 9pt, weight: "bold", fill: ink)[Programming],
  text(size: 9pt)[Python (Proficient), SQL (Advanced), TypeScript (Intermediate)],
  text(size: 9pt, weight: "bold", fill: ink)[Data Arch. & Cloud],
  text(size: 9pt)[Databricks, AWS, Lakehouse (Medallion Architecture), PySpark, Spark SQL, Delta Lake, Redshift],
  text(size: 9pt, weight: "bold", fill: ink)[MLOps & Data Sci.],
  text(size: 9pt)[SageMaker, MLflow, Kedro, PyTorch, scikit-learn, Pandas, NumPy],
  text(size: 9pt, weight: "bold", fill: ink)[DevOps, IaC & BI],
  text(size: 9pt)[AWS CDK, Docker, CI/CD, GitHub Actions, CodePipeline, Kiro, Power BI, Apache Superset],
  text(size: 9pt, weight: "bold", fill: ink)[Languages],
  text(size: 9pt)[Italian (Native), English (Fluent), Spanish (Basic)],
)

// =============================================================================
// PROFESSIONAL EXPERIENCE
// =============================================================================
#section("Professional Experience")

#job("Senior Data Engineer & Architect",
  [Plenitude On The Road (#link("https://eniplenitude.eu/")[website])],
  "Milan, Italy – Full-time", "Jan 2024 – Present")
#b[Co-leading the company-wide data platform migration to Databricks and Delta Lake.]
#b[Designed the lakehouse Medallion architecture end-to-end: ingestion, transformation, governance, security, CI/CD.]
#b[Standardized the data stack and engineering best practices, freeing analysts from infrastructure work.]
#b[Led internal technology scouting: built PoCs and championed adoption of new tools and workflows across the team.]
#b[Led a Competitor Intelligence project end-to-end, turning raw data into executive dashboards.]
#b[Supervised small teams to deliver data products, owning stakeholder relationships and requirements.]
#b[Built a Power BI self-service framework to democratize data, cutting ad-hoc data requests by 40%.]
#b[Created and promoted an agent-based development framework using Kiro to speed up development and migration.]

#v(2pt)
#job("Data Engineer",
  [Plenitude On The Road (#link("https://eniplenitude.eu/")[website])],
  "Milan, Italy – Full-time", "Oct 2021 – Dec 2023")
#b[Built end-to-end ETL pipelines using Spark SQL and PySpark.]
#b[Deployed cloud-native AWS services as IaC with CDK: Lambda, Step Functions, CodePipeline, AWS Batch.]
#b[Product Owner for a Location Intelligence ML product; coordinated a hybrid team.]
#b[Delivered MLOps workflows with Kedro and SageMaker for deployment and tracking.]
#b[Engineered an Apache Superset customer-facing BI solution on AWS, owning infrastructure and dashboards.]

#v(2pt)
#job("Research Assistant", "Aalto University", "Espoo, Finland – Full-time", "Jun 2020 – May 2021")
#b[DL decoder (PyTorch, MLflow) predicting hand kinematics from MEG data, beating state-of-the-art. (#link("https://github.com/matteoanelli/MEG-prediction")[GitHub], #link("https://aaltodoc.aalto.fi/handle/123456789/103046")[thesis])]

#v(2pt)
#job("NLP Engineer Intern", "Taiger", "Madrid, Spain – Part-time", "Feb 2019 – Jun 2019")
#b[Built a lexicon-based NLP pipeline to auto-correct OCR errors in banking documents.]

// =============================================================================
// CERTIFICATIONS
// =============================================================================
#section("Certifications")
#b[Designing and Building AI Products and Services – MITxPRO (2025)]
#h(10pt)#text(size: 8.5pt, fill: muted)[Product strategy for AI: aligning business design, stakeholders, and roadmap into a product proposal.]
#v(2pt)
#b[Machine Learning Engineer Nanodegree – Udacity (2020)]
#h(10pt)#text(size: 8.5pt, fill: muted)[Deploying ML models on SageMaker and automating workflows with Lambda and Step Functions.]

// =============================================================================
// EDUCATION
// =============================================================================
#section("Education")
#grid(columns: (1fr, auto), align: (left, right), row-gutter: 4pt,
  [#text(weight: "bold", size: 9pt, fill: ink)[Aalto University]#text(size: 9pt)[, Double M.Sc. in Data Science, CGPA: 4.06/5]],
  text(size: 8.5pt, fill: muted)[2019 – 2020 · Espoo, Finland],
  grid.cell(colspan: 2)[#h(10pt)#text(size: 9pt)[• Minor in Innovation & Entrepreneurship]],
  [#text(weight: "bold", size: 9pt, fill: ink)[Universidad Politécnica de Madrid]#text(size: 9pt)[, Double M.Sc. in Data Science]],
  text(size: 8.5pt, fill: muted)[2018 – 2020 · Madrid, Spain],
  [#text(weight: "bold", size: 9pt, fill: ink)[University of Trento]#text(size: 9pt)[, B.Sc. in Information & Business Organisation Engineering, CGPA: 105/110]],
  text(size: 8.5pt, fill: muted)[2015 – 2018 · Trento, Italy],
)
