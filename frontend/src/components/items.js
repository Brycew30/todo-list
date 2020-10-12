class MenuDropDown {
  constructor() {
    this.adapter = new ListsAdapter()
    this.itemDropDown = document.getElementById("filter-dropdown")
    this.fetchAndPopulateDropDown()
  }
  fetchAndPopulateDropDown() {
    this.adapter.getLists().then(json => this.populateListDropDown(json))
  }
  populateListDropDown(data) {
    data.sort((a, b) => (a.attributes.title > b.attributes.title) ? 1 : -1)
    for (let list of data) {
      let option = document.createElement("option")
      option.value = list.attributes.title
      option.innerHTML = list.attributes.title
      this.itemDropDown.appendChild(option)
    }
  }
}
