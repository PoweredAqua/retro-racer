# Devlog 13.05.25

## ✅ Completed Today
- Created `prototype-3/` folder and initialized it with the base template.
- Set up the new **Events scene** and integrated it with the **Start Game** flow.
- Added navigation: implemented **Back** button to return to the main menu.
- Decided on event system structure: events will only give **credit rewards** for now.
- Added new CSV file: `events.csv` to store event data.
- Successfully wrote and debugged the **event CSV loader**, including error handling.
- Created and autoloaded `EventsData.gd` to store parsed event data globally.
- Designed a modular `EventsEntry.tscn` scene (inspired by `DealershipEntry`) to display each event.
- Confirmed plan to defer **prize cars** and **entry restrictions** to Prototype 4.

## 🧠 Lessons & Insights
- `instantiate()` now makes more sense: it's like taking a blueprint scene and building a real object from it.
- Placement of `return` statements is critical inside loops—returning early was the reason only one CSV line was loading.
- Using CSVs for both cars and events creates a consistent and scalable data structure.

## 📅 Next Steps
- Populate the Event UI dynamically using `EventsData.events`.
- Add interactivity: clicking an event will trigger car selection.
- Begin laying the foundation for credit reward logic (and later, prize cars in P4).
- Hook up the save/load system and game mode toggle.

---

_Another solid foundation laid. Prototype 3 is off the line and already accelerating._ 🏁🚗💨
