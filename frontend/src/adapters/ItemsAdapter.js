class ItemsAdapter {
  constructor() {
    this.baseURL = "http://localhost:3000/items"
  }
  getItems() {
    return fetch(this.baseURL).then(response => response.json()).then(json => (json.data))
  }
}
