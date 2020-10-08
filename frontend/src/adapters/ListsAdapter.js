class ListsAdapter {
  constructor() {
    this.baseURL = "http://localhost:3000/lists"
  }
  getLists() {
    return fetch(this.baseURL).then(response => response.json()).then(json => json.data)
  }
  postListToApi(configurationObject) {
    return fetch(this.baseURL, configurationObject)
      .then(response => response.json())
      .catch(error => console.log("Error: " + error))
  }
  getListByItem(item) {
    return fetch(this.baseURL + `/${item}`).then(response => response.json())
  }
}
