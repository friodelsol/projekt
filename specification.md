# Prague Dreamland Festival 2026
## 1. Basic Festival Identity
- Name: Prague Dreamland Festival
- Edition/Year: 2026 (1st Edition)
- Location: Prague, Czech Republic
- Date Range: 24-26 July 2026
- Duration: 3 days
## 2. Target Audience
- Age group: 18-40
- Audience profile: electronic music fans, international festival visitors, students and young professionals
- Expected attendance: ~30,000 visitors per day
## 3. Event Character
 Main genres: EDM, House, Techno, Trance
- Secondary genres: Hardstyle, Drum & Bass, Progressive House
- Core theme: fantasy "dream world" storytelling with immersive stage design
- Special features:
  - large-scale themed stages with lighting and visual effects
  - evening fireworks/light shows (once per day)
  - side activities (e.g., meet & greet, merch, photo zones)
## 4. Festival Structure (Data Model Requirements)
The XML data model will represent:
- Festival information (name, dates, location, theme, genres)
- Venues/Stages (at least 2 venues; each venue has a name, type, capacity, and address/area)
- Performers (at least 60 performers; each performer has a name, type/role such as DJ/Live Act, genre tags, and country)
- Programme items (at least 60 programme items across 3 days; each item has date, start/end time, venue reference, performer reference(s), and item type)
Minimum constraints for this project:
- At least 3 days
- At least 2 venues
- At least 60 performers
- At least 60 programme items
## 5. Website Structure
The festival website will contain the following sections:
- Introduction: festival concept, theme, dates, and highlights
- Programme: timetable by day and by stage
- Performers: performer list with basic profiles and genres
- Venues: stages/areas, facilities, and maps/addresses
- Practical Information: tickets, transport, opening hours, rules, and contact
