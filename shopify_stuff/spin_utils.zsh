function gql() {
  open "https://app.shopify.$(spin show -o fqdn)/services/internal/shops/1/graphql"
}

function admin() {
  open "https://shop1.shopify.$(spin show -o fqdn)/admin"
}

function internal(){
  open "https://app.shopify.$(spin show -o fqdn)/services/internal/shops/1"
}

function gql_e() {
  open "https://email.$(spin show -o fqdn)/graphiql"
}

function internal_e() {
  open "https://email.$(spin show -o fqdn)/management/internal/shops/1"
}

function sidekiq_e() {
  open "https://email.$(spin show -o fqdn)/sidekiq"
}

function letter() {
  open "https://email.$(spin show -o fqdn)/letter_opener"
}