class Items {
  constructor() {
    this.adapter = new ItemsAdapter()
    this.itemDropDown = document.getElementById("filter-dropdown")
    this.fetchAndPopulateDropDown()
  }
  fetchAndPopulateDropDown() {
    this.adapter.getItems().then(json => this.populateItemDropDown(json))
  }
  populateItemDropDown(data) {
    data.sort((a, b) => (a.attributes.name > b.attributes.name) ? 1 : -1)
    for (let item of data) {
      let option = document.createElement("option")
      option.value = item.attributes.name
      option.innerHTML = item.attributes.name
      this.itemDropDown.appendChild(option)
    }
  }
}
