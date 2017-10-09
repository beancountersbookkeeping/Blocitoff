namespace :todo do
  desc "TODO delete items 7 days old"
  task delete_items: :environment do
    Item.where("created_at <= ?", Time.now - 7.days).destroy_all
  end

end
