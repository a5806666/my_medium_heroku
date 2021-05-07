import { Controller } from "stimulus"
import axios from "axios"

export default class extends Controller {
  static targets = [ "followButton" ]

  follow(event) {
      event.preventDefault();
      let user = this.followButtonTarget.dataset.user
      let button = this.followButtonTarget
      
      // /users/:id/follow
      axios.post(`/api/users/${user}/follow`)
           .then(function(response){
                let status = response.data.status
                switch (status) {
                    case 'sign_in_first':
                      alert('ログインしてください')
                      break
                    default:
                      button.innerHTML = status
                  }
           })
           .catch(function(error){
                console.log(error)
           })
  }
}