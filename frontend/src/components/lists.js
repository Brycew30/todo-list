class Lists {
  constructor() {
    this.lists = []
    this.adapter = new ListsAdapter()
    this.formSubmit = document.getElementById("form-submit")
    this.formButtons = document.getElementById("form-show-buttons")
    this.addListButton = document.getElementById("add-list")
    this.dropDownButton = document.getElementById("filter-button")
    this.itemDropDown = document.getElementById("filter-dropdown")
    this.cardContainer = document.getElementById("list-card-container")
    this.bindEventListeners()
    this.fetchAndLoadLists()
  }
  fetchAndLoadLists() {
    this.adapter.getLists().then(lists => this.createLists(lists)).then(() => this.addListsToDom())
  }
  bindEventListeners() {
    this.formSubmit.addEventListener("click", function() {
      event.preventDefault()
      this.addList()
    }.bind(this))
    this.addListButton.addEventListener("click", function() {
      this.toggleForm()
      this.toggleButtons()
    }.bind(this))
    this.dropDownButton.addEventListener("click", function() {
      this.toggleDropDown()
      this.toggleButtons()
    }.bind(this))
    this.itemDropDown.addEventListener("change", function() {
      this.getAndLoadListByName()
    }.bind(this))
  }
  createArrayOfListItems(items) {
    let itemArray = []
    for (let item of items) {
      itemArray.push(item.name)
    }
    return itemArray
  }
  createLists(lists) {
    for (let list of lists) {
      let items = this.createArrayOfListItems(list.attributes.items)
      this.lists.push(new List(list.attributes.title, list.attributes.image_link, list.attributes.list_link, items))
    }
  }
  addListsToDom() {
    for (let list of this.lists) {
      list.createListCard()
    }
  }
  addList() {
    const form = event.target.parentElement
    const items = form[3].value.split(', ')
    const list = new List(form[0].value, form[1].value, form[2].value, items)
    const configurationObject = {
      method: "POST",
      headers: {
        "Content-Type": "application/json",
        "Accept": "application/json"
      },
      body: JSON.stringify({
        "title": form[0].value,
        "image_link": form[1].value,
        "list_link": form[2].value,
        "items": items
      })
    }
    this.adapter.postListToApi(configurationObject).then(function(json) {
      list.createListCard()
      this.toggleButtons()
      this.toggleForm()
    }.bind(this))
  }
  hideOrShowElement(element) {
    if (element.classList.contains("hidden")) {
      element.classList.remove("hidden")
    } else {
      element.className += " hidden"
    }
  }
  toggleForm() {
    const form = this.formSubmit.parentElement
    this.hideOrShowElement(form)
  }
  toggleButtons() {
    this.hideOrShowElement(this.formButtons)
  }
  toggleDropDown() {
    const dropDown = document.getElementById("filter-drop-down")
    this.hideOrShowElement(dropDown)
    new MenuDropDown()
  }
  clearLists() {
    this.cardContainer.innerHTML = ""
  }
  getAndLoadListByName() {
    this.clearLists()
    const list = event.target.value
    this.adapter.getListByItem(list).then(json => this.loadList(json.data.attributes))
    debugger
  }
  loadList(list) {
    let items = this.createArrayOfListItems(list.items)
    const l = new List(list.title, list.image_link, list.list_link, items)
    l.createListCard()
  }

}
