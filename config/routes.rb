ActionController::Routing::Routes.draw do |map|
  map.resources :visaapps
  map.resources :reges
  map.resources :secmorapps
  map.resources :secmoragrees
  map.resources :loanapps
  map.resources :helocapps
  map.resources :atmdebitcardapps
  map.resources :shareapps
  map.resources :ccdisclosures
  map.resources :helocagrees
  map.resources :pinrequests
  map.resources :membershipagrees

  # The priority is based upon order of creation: first created -> highest priority.

  # Sample of regular route:
  #   map.connect 'products/:id', :controller => 'catalog', :action => 'view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   map.purchase 'products/:id/purchase', :controller => 'catalog', :action => 'purchase'
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   map.resources :products

  # Sample resource route with options:
  #   map.resources :products, :member => { :short => :get, :toggle => :post }, :collection => { :sold => :get }

  # Sample resource route with sub-resources:
  #   map.resources :products, :has_many => [ :comments, :sales ], :has_one => :seller
  
  # Sample resource route with more complex sub-resources
  #   map.resources :products do |products|
  #     products.resources :comments
  #     products.resources :sales, :collection => { :recent => :get }
  #   end

  # Sample resource route within a namespace:
  #   map.namespace :admin do |admin|
  #     # Directs /admin/products/* to Admin::ProductsController (app/controllers/admin/products_controller.rb)
  #     admin.resources :products
  #   end

  # You can have the root of your site routed with map.root -- just remember to delete public/index.html.
  # map.root :controller => "welcome"

  # See how all your routes lay out with "rake routes"

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
  map.connect '/', :controller => 'home', :action => 'index'
  map.root :controller => 'home'
  map.contact '/contact', :controller => 'home', :action => 'contact'
  map.security '/security', :controller => 'home', :action => 'security'
  map.disclosures '/disclosures', :controller => 'home', :action => 'disclosures'  
  map.about_inx '/about_inx', :controller => 'home', :action => 'about_inx'
  map.whoweare '/whoweare', :controller => 'home', :action => 'whoweare'
  map.forms_new_member '/forms_new_member', :controller => 'home', :action => 'forms_new_member'
  map.atmlocations '/atmlocations', :controller => 'home', :action => 'atmlocations'
  map.locations '/locations', :controller => 'home', :action => 'locations'
  map.member_groups '/member_groups', :controller => 'home', :action => 'member_groups'
  map.newsletter_inx '/newsletter_inx', :controller => 'home', :action => 'newsletter_inx'
  map.phone '/phone', :controller => 'home', :action => 'phone'
  map.netbranch '/netbranch', :controller => 'home', :action => 'netbranch'
  map.mobilebanking '/mobilebanking', :controller => 'home', :action => 'mobilebanking'
  map.billpay '/billpay', :controller => 'home', :action => 'billpay'
  map.faqs '/faqs', :controller => 'home', :action => 'faqs'
  map.forms_app_inx '/forms_app_inx', :controller => 'home', :action => 'forms_app_inx'
  map.loans_auto '/loans_auto', :controller => 'home', :action => 'loans_auto'
  map.loans_saveasyoupay '/loans_saveasyoupay', :controller => 'home', :action => 'loans_saveasyoupay'
  map.loans_homeequity '/loans_homeequity', :controller => 'home', :action => 'loans_homeequity'
  map.checking_accts '/checking_accts', :controller => 'home', :action => 'checking_accts'
  map.teen '/teen', :controller => 'home', :action => 'teen'
  map.scorecard '/scorecard', :controller => 'home', :action => 'scorecard'
  map.checking_checkcard '/checking_checkcard', :controller => 'home', :action => 'checking_checkcard'
  map.checking_overdraft '/checking_overdraft', :controller => 'home', :action => 'checking_overdraft'
  map.estatements '/estatements', :controller => 'home', :action => 'estatements'
  map.lost '/lost', :controller => 'home', :action => 'lost'
  map.checking_switch '/checking_switch', :controller => 'home', :action => 'checking_switch'
  map.rates_loan_consumer '/rates_loan_consumer', :controller => 'home', :action => 'rates_loan_consumer'
  map.holidaysched '/holidaysched', :controller => 'home', :action => 'holidaysched'
  map.insuredbyncua '/insuredbyncua', :controller => 'home', :action => 'insuredbyncua'
  map.savings_directdeposit '/savings_directdeposit', :controller => 'home', :action => 'savings_directdeposit'
  map.savings_payroll '/savings_payroll', :controller => 'home', :action => 'savings_payroll'
  map.loans_inx '/loans_inx', :controller => 'home', :action => 'loans_inx'
  map.rates_inx '/rates_inx', :controller => 'home', :action => 'rates_inx'
  map.rates_share '/rates_share', :controller => 'home', :action => 'rates_share'
  map.rates_loan_business '/rates_loan_business', :controller => 'home', :action => 'rates_loan_business'
  map.loans_creditcard '/loans_creditcard', :controller => 'home', :action => 'loans_creditcard'
  map.calculators '/calculators', :controller => 'home', :action => 'calculators'
  map.loans_mortgages '/loans_mortgages', :controller => 'home', :action => 'loans_mortgages'  
  map.loans_second_mortgages '/loans_second_mortgages', :controller => 'home', :action => 'loans_second_mortgages'  
  map.loans_studentloans '/loans_studentloans', :controller => 'home', :action => 'loans_studentloans'  
  map.loans_signature '/loans_signature', :controller => 'home', :action => 'loans_signature'  
  map.loans_sharesecured '/loans_sharesecured', :controller => 'home', :action => 'loans_sharesecured'
  map.rates_loan '/rates_loan', :controller => 'home', :action => 'rates_loan'
  map.products_inx '/products_inx', :controller => 'home', :action => 'products_inx'
  map.savings_inx '/savings_inx', :controller => 'home', :action => 'savings_inx'
  map.savings_regular '/savings_regular', :controller => 'home', :action => 'savings_regular'
  map.savings_youngadults '/savings_youngadults', :controller => 'home', :action => 'savings_youngadults'
  map.savings_kids '/savings_kids', :controller => 'home', :action => 'savings_kids'
  map.savings_ira '/savings_ira', :controller => 'home', :action => 'savings_ira'
  map.savings_club '/savings_club', :controller => 'home', :action => 'savings_club'
  map.products_younameit '/products_younameit', :controller => 'home', :action => 'products_younameit'
  map.savings_certificates '/savings_certificates', :controller => 'home', :action => 'savings_certificates'
  map.savings_moneymarket '/savings_moneymarket', :controller => 'home', :action => 'savings_moneymarket'
  map.card_inx '/card_inx', :controller => 'home', :action => 'card_inx'
  map.loans_other '/loans_other', :controller => 'home', :action => 'loans_other'
  map.checking_inx '/checking_inx', :controller => 'home', :action => 'checking_inx'
  map.loans_onlinepurchsec '/loans_onlinepurchsec', :controller => 'home', :action => 'loans_onlinepurchsec'
  map.mbi '/mbi', :controller => 'home', :action => 'mbi'
  map.gap '/gap', :controller => 'home', :action => 'gap'
  map.services_inx '/services_inx', :controller => 'home', :action => 'services_inx'
  map.carbuying '/carbuying', :controller => 'home', :action => 'carbuying'
  map.idtheft '/idtheft', :controller => 'home', :action => 'idtheft'
  map.links '/links', :controller => 'home', :action => 'links'
  map.enterprise '/enterprise', :controller => 'home', :action => 'enterprise'
  map.wiringfunds '/wiringfunds', :controller => 'home', :action => 'wiringfunds'
  map.business_inx '/business_inx', :controller => 'home', :action => 'business_inx'
  map.business_requirements '/business_requirements', :controller => 'home', :action => 'business_requirements'  
  map.business_loans '/business_loans', :controller => 'home', :action => 'business_loans'  
  map.business_quickbooks '/business_quickbooks', :controller => 'home', :action => 'business_quickbooks'
  map.business_checking '/business_checking', :controller => 'home', :action => 'business_checking'
  map.business_payroll '/business_payroll', :controller => 'home', :action => 'business_payroll'
  map.business_merchant '/business_merchant', :controller => 'home', :action => 'business_merchant'  
  map.business_courier '/business_courier', :controller => 'home', :action => 'business_courier'
  map.business_savings '/business_savings', :controller => 'home', :action => 'business_savings'
  map.directdeposit '/directdeposit', :controller => 'home', :action => 'directdeposit'
  map.apps '/apps', :controller => 'home', :action => 'apps'
  
end
