# Modular CV template for both academy and industry

- Single, simple, and modular CV template for any use. 
- 15+ built-in sections.
- Enable the sections you want and here you go.
- Easy to develop new sections by just reusing existing sections.

## Sample

- To generate the Education section, it uses the following latex

<p align="center">
    <img alt="ss-latex" src="https://github.com/beyefendi/academistral-cv/assets/7609852/fb33c80f-b3e2-4794-aa4f-7cde7ecabbb3" width="400">
    <img alt="ss-view" src="https://github.com/beyefendi/academistral-cv/assets/7609852/c85ab046-4c9a-4c01-a3fd-3da6ca059ffa" width="400">
</p>

## Quick Start

- Edit CV on https://www.overleaf.com/latex/templates/academistrial-cv/

## Documentation

### Commands

```latex
% #1: (Bold) Title #2: Year #3: Organization #4: Link #5: Place
\newcommand{\educationItem}[5]{

% #1: Title #2: Link #3: Year #4: Role #5: Place 
\newcommand{\cvItem}[5]{

% #1: Authors #2: Paper #3: Journal #4: Pages #5: Year
\newcommand{\publicationsItem}[5]{

% #1: Title #2: Year #3: Agency #4: Amount  # 7:Role #8: Objective @TODO
\newcommand{\fundingItem}[9]{

% #1: Title #2: Year
\newcommand{\teachingItem}[2]{

% #1: Name #2: Title #3: E-mail #4: Organization 
\newcommand{\referenceItem}[4]{

% Takes two parameters. One is mandatory and one is optional
% Optional is the first one and its value is <empty>
% #1 is Label type and #2 is Sub Title
% Optional parameter is passed by using []
% So the final paramaters will be like that []{}
\newcommand{\itemizeCVBegin}[2][]{
```

### A new section development

```latex
\section{Education}

    \itemizeCVBegin[nolabel]{}

        \educationItem
            {Your Title}
            {Link to University}
            {Year}
            {University}
            {Location}
```

## Current sections

- Contact information
- Interests
- Biography
- Education
- Employment
- Publications
- Funding
- Teaching
- Supervising
- Academic service
- Invited talks
- Organized events
- Personal development (certificates etc.)
- Awards
- Hobbies
- Skills
- Projects
- References


