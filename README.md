# Modular CV template for both academy and industry

- Single, simple, and modular CV template for any use. 
- 15+ built-in sections.
- Enable the sections you want and here you go.
- Easy to develop new sections by just reusing existing sections.

## Sample


## Documentation

### Commands

```latex
% #1: Title #2: Year
\newcommand{\titleYear}[2]{

% #1: Title #2: Link #3: Year 
\newcommand{\titleLinkYear}[3]{

% #1: Title #2: Year #3: Organization
\newcommand{\titleYearOrg}[3]{

% #1: Title #2: Year #3: Organization #4: Place
\newcommand{\titleYearOrgPlace}[4]{

% #1: Title #2: Link #3: Year #4: Role
\newcommand{\titleLinkYearRole}[4]{

% #1: (Bold) Title #2: Year #3: Organization #4: Link #5: Place
\newcommand{\bTitleYearOrgLinkPlace}[5]{

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

        \bTitleYearOrgLinkPlace
            {Your Title}
            {Year}
            {University}
            {Link to University}
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


