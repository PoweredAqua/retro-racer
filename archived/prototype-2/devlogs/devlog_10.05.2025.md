# 📓 devlog 10.05.2025

## Prototype 2 — Dealership System Begins

---

### ✅ Progress Summary:
- Created the **Dealership scene** with working scene transitions
- Built and wired up **DealershipEntry.tscn**:
  - Displays car name, year, and a **Buy** button
  - Instanced dynamically into a scrollable list
- Successfully connected **Buy** button to `GarageData`:
  - Clicking it adds cars to the player's garage
  - Verified garage displays new cars immediately

---

### 🧪 Debug Improvements:
- Removed automatic RX-7 spawn from the Main Menu
- Added a **Debug button** to manually spawn test cars
- Improved understanding of string formatting using `%s` and variables in `print()` statements

---

### 🧠 Learning Highlights:
- Gained a strong grasp of:
  - `for i in range(count)` loop structure
  - The role and behavior of **singletons (autoloads)** like `GarageData`
  - Godot’s layout system (including `ScrollContainer`, `VBoxContainer`, and `MarginContainer`)
- Identified and investigated a persistent **UI layout issue** where dealership entries display correctly but appear in the top-left corner — to be resolved with fresh eyes in the next session

---

### 💬 Reflections:
> "I’m amazed I’ve already made something. Clicking through the menus I built feels *real* — and imagining what playing the finished game might feel like is deeply motivating. I’ve started to see past the temporary high of starting something new, and instead look forward to the steady burn of shaping it into something playable."
