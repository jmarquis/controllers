document.addEventListener("DOMContentLoaded", () => {
  // Section anchors
  const linkIcon = document.querySelector("#link-icon")
  document
    .querySelectorAll("section.page > h2, section.page > h3")
    .forEach((heading) => {
      const link = document.createElement("a")
      const icon = linkIcon.cloneNode(true)
      icon.id = null
      link.appendChild(icon)
      link.href = `#${heading.id}`
      link.classList.add("section-anchor")
      heading.appendChild(link)
    })

  // Image links
})
