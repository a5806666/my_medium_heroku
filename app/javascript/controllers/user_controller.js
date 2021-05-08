import { Controller } from "stimulus"
import axios from "axios"

export default class extends Controller {
  static targets = [ "followButton", "bookmark" ]

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

  bookmark(event) {
    event.preventDefault();
    let link = event.currentTarget
    let slug = link.dataset.slug
    // console.log(slug)
    let icon = this.bookmarkTarget

    axios.post(`/api/stories/${slug}/bookmark`)
         .then(function(res){
            // console.log(res.data)
            switch (res.data.status) {
              case 'Bookmarked':
                icon.classList.add('fas')
                icon.classList.remove('far')
                break;
            
              case 'Unbookmarked':
                icon.classList.add('far')
                icon.classList.remove('fas')
                break;
            }
         })
         .catch(function(err){
            console.log(err)
         })
  }
}