# WILD SIGNAL - Project Specification

## 1. Festival identity

- Name : WILD SIGNAL
- Edition / year : First edition, 2027
- Location : Fictional Riverside Art Grounds, Prague, Czechia
- Dates : 18-20 June 2027 (Friday-Sunday)
- Type / character : Ecology, sound art, and experimental music festival
- Main genres / themes : Field recording, ambient and experimental music, electroacoustic art, acoustic ecology, environmental storytelling, listening practices
- Main stages : River Stage and Canopy Lab

WILD SIGNAL is a fictional three-day festival about listening to landscapes and noticing the sounds of everyday environments. Its programme combines performances, listening sessions, sound walks, workshops, and installation-based activities.

## 2. Purpose of the website

The website is the main information and planning tool for festival visitors. It should help people understand the festival, discover artists and activities, compare events by day and stage, and prepare a personal visit.

### Main objectives

- Explain the festival concept and provide essential event information.
- Make the three-day programme easy to browse and understand.
- Help visitors discover performers and read their profiles.
- Explain the two stages and their characteristics.

### Important user actions

Visitors should be able to:
- browse the programme by date, stage, and activity type;
- search for a performer or programme title;
- understand where and when an event takes place;
- open a performer detail page from a programme item;

## 3. Target groups

| Target group | Needs and expectations | Website information / functions |
|---|---|---|
| First-time festival visitors | Quickly understand what the festival is, when it happens, and how to attend. | Clear home page, dates, festival description, practical information, stage overview. |
| Visitors planning a day | Build a realistic plan and know which event is on which stage and at what time. | Day-by-day schedule, stage and type filters, clear event times. |
| Artist and sound-art enthusiasts | Discover unfamiliar artists and understand their practice. | Searchable performer list, genre labels, performer detail pages, links from programme items to profiles. |
| Visitors with access needs | Find access information before arriving and identify whom to contact if details are unclear. | Accessibility information on the practical-information page and stage descriptions. |

## 4. Information architecture

### Sitemap

- **Home**
  - Festival introduction and dates
  - Featured programme items
  - Calls to action: Explore programme / Meet performers / Plan your visit
- **Programme**
  - Programme overview
  - Day filter: Friday 18 June / Saturday 19 June / Sunday 20 June
  - Stage filter: River Stage / Canopy Lab
  - Activity-type filter
  - Programme item detail or expandable event information
- **Performers**
  - Searchable performer list
  - Performer detail page for each performer
  - Related programme items
- **Stages & Venues**
  - River Stage - Riverside Pavilion
  - Canopy Lab - Old Greenhouse
  - Stage descriptions and access notes
- **Practical Information**
  - Dates and location
  - Getting there
  - Accessibility
  - Contact / help information
- **About WILD SIGNAL**
  - Festival concept and themes

### Main navigation

Use a persistent, clearly labelled primary navigation:
**Home . Programme . Performers . Stages & Venues . Practical Info . About**

On smaller screens, the same destinations should be available in a compact menu. The current page should be visually identifiable. Pages should have clear headings and meaningful links back to parent sections. Breadcrumbs will be used for detail pages, for example: `Home > Performers > Juniper Fieldworks`.

### Relationships between sections

- Programme items reference one or more performers and exactly one stage.
- Performer detail pages list the programme items associated with that performer.
- Stage pages list the programme items scheduled at that stage.
- Practical Information is accessible from the main navigation and the home page.
- The Home page links users into the programme, performers, and visit-planning paths.

### Section purposes

| Section | Purpose |
|---|---|
| Home | Introduce the festival and route visitors to the most common tasks. |
| Programme | Find events by date, stage, activity type. |
| Performers | Browse and search artists; open profiles and related events. |
| Performer detail | Show the artist name, short bio, genres, and linked programme items. |
| Stages & Venues | Explain the character and location of each festival stage. |
| Practical Information | Answer common visit-planning questions. |
| About | Explain the festival concept. |

## 5. User scenarios

### Key scenario 1 - Find an event at a particular stage

- **User type:** Visitor planning a day at the festival.
- **Goal:** Find events at River Stage on Saturday.
- **Initial situation:** The visitor opens the website on the home page and does not know the detailed schedule.
- **Expected outcome:** The visitor opens Programme, selects Saturday 19 June and River Stage, and sees only the matching programme items with readable start and end times.

### Key scenario 2 - Learn about an artist and their scheduled event

- **User type:** Artist / sound-art enthusiast.
- **Goal:** Understand an unfamiliar performer's work and find their festival appearance.
- **Initial situation:** The visitor searches by performer name or browses the performer list.
- **Expected outcome:** The visitor opens a performer detail page, reads the short bio and genre labels, and can follow a link to the performer's scheduled programme item.

### Key scenario 3 - Check access information

- **User type:** Visitor with access requirements.
- **Goal:** Find the available access information before visiting.
- **Initial situation:** The visitor is considering attending but has not visited the festival site before.
- **Expected outcome:** The visitor finds the accessibility section and stage notes. Any details that have not been established are marked as needing confirmation rather than being invented.

## 6. Data foundation

The companion file `data.json` contains these entities:

- `festival`: one object with identity, dates, location, type, and themes;
- `stages`: stage identifiers, names, venue names, descriptions, and access notes;
- `performers`: unique performer IDs, names, genres, and biographies;
- `programme`: unique event IDs, titles, performer references, stage references, dates, times, activity types, and descriptions.

### Relationship rules

- Every `performerIds` value must match an existing `performers[].id`.
- Every `stageId` must match an existing `stages[].id`.
- Every programme date must fall within 18-20 June 2027.
- IDs must be unique within their entity collection.
- Start times must be earlier than end times.
- Programme items at the same stage must not overlap.

### Minimum scope and current dataset

The provided dataset is designed to include 3 festival days, 2 stages, 60 fictional performers, and 60 programme items. It schedules 10 items per stage per day. Each item lasts 45 minutes, with a 15-minute gap before the next scheduled item on the same stage.
