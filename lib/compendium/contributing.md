---
title: Contributing guidelines
subtitle: Want to contribute to the Compendium? Great! We ask everyone to read these guidelines before getting started.
---

## Compendium vision

The end goal of the Compendium is to have a single hub of knowledge related to GameCube controllers, particularly pertaining to modding and repairing. This means documenting every component (along with common issues, repairs and replacements), every mod (other than one-offs or meme mods), common recommendations, etc.

The term "hub" is important to distinguish that not all documentation needs to live in the Compendium itself; many community members have created their own guides and other resources that should not be copied or plagiarized into the Compendium. Instead, they should be summarized and linked to, giving appropriate credit to their authors.

Looking for somewhere to get started? Check out the [open Compendium issues](https://github.com/dol-003/dol-003-web/issues?q=is%3Aissue+is%3Aopen+label%3Acompendium).

## Process

The code for DOL-003.info, including Compendium content, lives in [GitHub](https://github.com/dol-003/dol-003-web). Simply fork the repo, push up your changes to your fork, and open a pull request.

Pull requests are accepted on a case-by-case basis entirely at the admin team's discretion. We welcome everyone's contributions, but take responsibility for curating Compendium content to keep it consistent, useful, and aligned to the vision spelled out above.

Here are some general guidelines for pull requests:

- Keep scope small. Several small pull requests are preferable to one large one, unless all the changes are closely related.
- Write a good PR description explaining why you're making the change, and linking any supporting documentation for the topic you're writing about.
- Feel free to share your PR in [Discord](https://discord.gg/HwtPU7tkCT) for discussion!

Note that pull requests that do not follow these guidelines will not be accepted.

## Content guidelines

- Do not use first person language.
- Use an objective tone for factual information, and explicitly characterize the basis of all subjective recommendations.
  - For instance, "Many community members recommend..." or "The general consensus of most modders..."
- Speak in present tense unless describing specific historical or upcoming events. The Compendium is meant to represent the current state of GCC modding.
- Do not use hyperbolic language.
- Use American English standards for spelling and grammar by default.

### Organization

Similar to a wiki, all pages are top-level and should have slugs based on their titles. Titles should be singular by default, or plural if the term is primarily used as a plural in the context of GCCs. For instance, the [Buttons](/buttons) and [Triggers](/triggers) pages have plural titles because a GCC has multiple of each of them, and conceptually they are usually referred to as "buttons" and "triggers" in GCC parlance rather than "button" or "trigger." In contrast, the [Motherboard](/motherboard) and [Cable](/cable) pages have singular titles because a GCC only has a single instance of each, and they are often referred to in both a singular and plural sense. Likewise, mod pages should use singular titles unless the most common name of the mod is in plural form, such as [Digital triggers](/digital-triggers).

Pages may describe child concepts within the page, or split child information out into subpages if the amount of detail warrants it. For instance, the [Buttons](/buttons) page describes all button types inline since there isn't much to say about them, but the [Analog sticks](/analog-sticks) page has subpages for each different part of the analog stick assembly since each subcomponent has a large amount of related information. These organizational decisions can change as the amount of information related to each topic increases or decreases.

The navigation menu is a standalone construct meant to provide contextual structure for increased discoverability. Not all pages need to be present in the navigation, but should be added if an appropriate place exists. All subpages should be reflected under their respective parent pages, and mod pages should be listed under a **Mods** page under their relative component to distinguish them from other subpages.

### Pages

Every page should be explanatory in tone, and generally go from more general to more detailed information.

Component-related pages should cover, in roughly this order:

- Introductory information (i.e. what is this thing?)
- High-level breakdown (e.g. what variants of this thing exist? what components does it consist of?)
- What are the common issues with this component, and how can you fix them? (title: **Common issues & repairs**)
- Where can you source replacements of this component? (title: **Replacements**)
- What are some common mods related to this component? (title: **Modifications**)

Mod pages should cover, in roughly this order:

- What does this mod accomplish?
- What are some variations of this mod? (if any)
- What parts are needed/available? (title: **Parts**)
- How do you do the mod? (title: **Process**)
- What are some guides or other resources for this mod? (title: **Resources**)

Pages covering other topics can use headings as needed to similarly structure their contents, similar to a Wikipedia article.

Incomplete pages that do not follow this structure should be marked as stubs.

Captioned photos are encouraged for all pages and subsections, especially to illustrate examples of different components and mods.

When in doubt, try to make your contributions consistent with the other content in the Compendium. And don't be afraid to discuss your changes in [Discord](https://discord.gg/HwtPU7tkCT)!
