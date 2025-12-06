# Pakistan Bus Services — Frontend-only (Local demo)

This workspace now contains a frontend-only demo of a bus booking portal. The project uses static HTML/CSS/JS and browser `localStorage` for persistence, so you do not need Node.js to run the UI.

What remains in the folder:
- `admin_portal.html` — Admin dashboard (uses `localStorage` for services, cities, bookings, and blocked seats).
- `customer_portal.html` — Customer booking UI (uses `localStorage`).
- `images/` — Local SVG images used by the UI.
- `database_schema.sql` — Reference SQL schema (kept for reference only).

How to use (no server required):
1) Open `admin_portal.html` and `customer_portal.html` in your browser (double-click or use `File → Open`).
2) The admin UI stores data in your browser's `localStorage` under keys like `pakBusServices`, `pakBusCities`, `pakBusBookings`, and `pakBusBlockedSeats`.
3) To reset data, clear site data / localStorage from your browser devtools.

If you'd like later, I can:
- Restore a lightweight Node.js backend and re-wire the frontends to call it, or
- Export/import data as JSON files for sharing between browsers.
