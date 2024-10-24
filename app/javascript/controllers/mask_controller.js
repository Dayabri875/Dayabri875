import { Controller } from "@hotwired/stimulus"
import { formatPrice } from 'helpers/formatPrice'

// Connects to data-controller="mask"
export default class extends Controller {

  cpf(e){
    return e.target.value = e.target.value
    .replace(/\D/g,"")
    .replace(/(\d{3})(\d)/,"$1.$2")
    .replace(/(\d{3})(\d)/,"$1.$2")
    .replace(/(\d{3})(\d{1,2})$/,"$1-$2")
  }

}
