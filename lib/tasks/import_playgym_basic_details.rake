namespace :initial_data do

	task :category_data => :environment do
		#Category.delete_all
		Categories.create(:category_name => 'Program')
		Categories.create(:category_name=> 'Event')
	end

	task :activity_data => :environment do
		Activity.delete_all
		Activity.create(:activity_name=> 'Rope Climbing', :free=> false,:description=> 'test for rope',:image_path=> '/uploads/program/image_path/1/rope-climb.png', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(:activity_name=> 'Wall Climbing', :free=> true,:description=> 'test for wall climbing',:image_path=> '/uploads/program/image_path/1/wall_climbing.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(:activity_name=> 'Trampoline Jumping', :free=> true,:description=> 'test for Trampoline',:image_path=> '/uploads/program/image_path/1/trampoline_jumping.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(:activity_name=> 'Swings & Sllides', :free=> true,:description=> 'test for Swings',:image_path=> '/uploads/program/image_path/1/swing_and_slides.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(:activity_name=> 'Slacklines', :free=> false,:description=> 'test for Slacklines',:image_path=> '/uploads/program/image_path/1/126424_340.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program' )
		Activity.create(:activity_name=> 'Hula Hoops', :free=> true,:description=> 'test for Hula hoops',:image_path=> '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(:activity_name=> 'Birthday', :free=> true,:description=> 'Birthday Parties',:image_path=> '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 2, :category_name => 'Event')
	end	


	task :partner_data => :environment do
		Partner.delete_all
		Partner.create(:name=> 'JustBooks',:contact_number=> 1231231231,:information=> 'info abt justbooks ...',:contact_address=> "Hennur Cross , Bangalore",:partner_type=> 'Reading',:image=> 'justbooks.jpg',:menu=>'justbooks_menu.jpg')
		Partner.create(:name=> 'Crosswords',:contact_number=> 1231231231,:information=> 'info abt crosswords ...',:contact_address=> "Hennur Cross , Bangalore",:partner_type=> 'Reading',:image=> 'crossword_small.jpg',:menu=>'crossword.jpg')
		Partner.create(:name=> 'McDonald',:contact_number=> 1231231232,:information=> 'info abt McDonald ...',:contact_address=> "Hebbal Cross , Bangalore",:partner_type=> 'Dining',:image=> 'mcd.jpg',:menu=>'mcd_menu2.jpg')
		Partner.create(:name=> 'Cafe Coffee Day',:contact_number=> 1231231233,:information=> 'info abt Cafe Coffee Day ...',:contact_address=> "Koramangalla  , Bangalore",:partner_type=> 'Dining',:image=> 'ccd.jpg',:menu=>'mcd_menu1.jpg')
		Partner.create(:name=> 'Dominos Pizza',:contact_number=> 1231231234,:information=> 'info abt Dominos ...',:contact_address=> "Mantri Splendar , Bangalore",:partner_type=> 'Dining',:image=> 'dominos.jpg',:menu=>'dominos_menu.jpg')
		Partner.create(:name=> 'Great Punjab',:contact_number=> 1231231235,:information=> 'info abt Great Punjab ...',:contact_address=> "Bramha county Cross , Bangalore",:partner_type=> 'Dining',:image=> 'great_punjab.jpg',:menu=>'great_punjab_menu.jpg')
	end

	task :skill_data => :environment do
		Skill.delete_all
		Skill.create(:skill_name => 'Balance')
		Skill.create(:skill_name => 'Language')
		Skill.create(:skill_name => 'Confidence')
		Skill.create(:skill_name => 'Agility')
		Skill.create(:skill_name => 'Flexibility')
	end

	task :membership_data => :environment do
		Membership.delete_all
		Membership.create(:membership_type => 'Pay As You Go' , :charge => 200, id: 1)
		# Membership.create(:membership_type => 'Weekly' , :charge => 1000, id: 1)
		Membership.create(:membership_type => 'Monthly' , :charge => 3000, id: 2)
		Membership.create(:membership_type => 'Quarterly' , :charge => 8000, id: 3)
		Membership.create(:membership_type => 'Half Yearly' , :charge => 15000, id: 4)
		Membership.create(:membership_type => 'Yearly' , :charge => 25000, id: 5)
	end

	task :discount_data => :environment do
		Discount.delete_all
		Discount.create(:discount_percent => 10 ,:start_date => Date.today , :end_date => Date.today + 7)
		Discount.create(:discount_percent => 15 ,:start_date => Date.today , :end_date => Date.today + 7)
		Discount.create(:discount_percent => 20 ,:start_date => Date.today , :end_date => Date.today + 7)
		Discount.create(:discount_percent => 25 ,:start_date => Date.today , :end_date => Date.today + 7)
		Discount.create(:discount_percent => 30 ,:start_date => Date.today , :end_date => Date.today + 7)
		Discount.create(:discount_percent => 10 ,:start_date => Date.today , :end_date => Date.today + 7)
	end	

end