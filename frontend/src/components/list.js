class List {
  constructor(title, imageLink, listLink, items) {
    this.title = title
    this.imageLink = imageLink
    this.listLink = listLink
    this.items = items
  }
  createListCard() {
    const card = document.createElement('div')
    card.className = "card"
    const img = document.createElement('img')
    img.src = this.imageLink
    card.appendChild(img)
    const cardInfo = document.createElement('div')
    cardInfo.className = "card-info"
    const title = document.createElement('h1')
    title.innerHTML = this.title
    cardInfo.appendChild(title)
    const itemHeader = document.createElement('h3')
    itemHeader.innerHTML = "Items:"
    cardInfo.appendChild(itemHeader)
    const ul = document.createElement('ul')
    for (let item of this.items) {
      let li = document.createElement('li')
      li.innerHTML = item
      ul.appendChild(li)
    }
    cardInfo.appendChild(ul)
    const footer = document.createElement('div')
    footer.className = "card-footer"
    const link = document.createElement('a')
    link.href = this.listLink
    link.innerHTML = "View List Here"
    footer.appendChild(link)
    card.appendChild(cardInfo)
    card.appendChild(footer)
    document.getElementById('list-card-container').appendChild(card)
  }

}
