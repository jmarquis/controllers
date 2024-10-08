---
title: Stickbox potentiometers
subtitle: The electrical component of the analog stick assembly.
notice: imagery
tags:
  - stick-component
---

**Stickbox potentiometers** are rotational variable resistors moved by the pegs on a [stickbox](/analog-sticks/stick-components/stickboxes). Two potentiometers are responsible for translating the position of each stickbox into values that the GCC processor can interpret as X and Y coordinates.

## Common issues & repairs

### PODE

As a potentiometer wears, it usually develops [Potentiometer Oddity Degradation Effect](/analog-sticks/pode) (PODE). PODE is when a potentiometer no longer accurately reports the position of the stick, particularly during movement, which often results in missed inputs.

Since PODE is caused by the carbon components within the potentiometer wearing out, it cannot feasibly be repaired. Generally, the potentiometers are replaced to fix PODE. Alternatively, a [heartbeat module](/analog-sticks/stick-mods/heartbeat-module) can be installed to suppress the effects of PODE.

### Drift

Potentiometers can also develop drift, which is similar to PODE but manifests as incorrect non-zero values when the stick is at the center/neutral position. Similarly, drift generally cannot be fixed without replacing the affected potentiometers.

It is possible to [clean a potentiometer](https://www.youtube.com/watch?v=lPJ2ST9vTfQ) by unclipping it, removing the wiper, and gently applying isopropyl alcohol. However, this generally will not fix issues caused by wear.

## Replacements

The only place to get new OEM potentiometers is currently [Kadano's shop](https://kadano.biz). [Kadano](https://dol-003.info/modders/kadano) orders them in bulk from one of Nintendo's suppliers.

Used potentiometers can be harvested from other Nintendo controllers, but be wary of how worn they are:

- **Other GCCs**
- **Wii Classic Controllers** (and the Pro variant)
- **Wii Nunchucks**

Some modders sell extra potentiometers, usually on sites like Etsy.

Third-party potentiometers are not recommended.

## Modifications

[Snapback modules](/analog-sticks/stick-mods/snapback-module) attach capacitors to the potentiometer leads to filter out unintentional inputs caused by snapback.

[Heartbeat modules](/analog-sticks/stick-mods/heartbeat-module) build on the idea of a snapback module and add variable resistors that address [PODE](/analog-sticks/pode).
