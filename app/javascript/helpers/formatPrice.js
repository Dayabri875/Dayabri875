export function formatPrice(price){
  return new Intl.NumberFormat('pt-BR', { 
    style: 'currency', 
    currency: 'BRL', 
   })
    .format(parseFloat(String(price).replace(/[^0-9]/g, '') / 100)).replace("R$", '').trim()
}