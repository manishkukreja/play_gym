namespace :initial_data do

	task :category_data => :environment do
		#Category.delete_all
		Categories.create(:category_name => 'Program')
		Categories.create(:category_name=> 'Event')
	end

	task :activity_data => :environment do
		Activity.delete_all
		Activity.create(id: 1, activity_name: 'Boxing', free: true, :description=> 'Boxing', :image_path=> '/uploads/program/image_path/1/football.png', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 2, activity_name: 'Climbing Wall', free: true, :description=> 'Climbing Wall', :image_path=> '/uploads/program/image_path/1/climbing_wall.png', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 3, activity_name: 'Hopping Ball', free: true, :description=> 'Hopping Ball', :image_path=> '/uploads/program/image_path/1/hopping_ball.png', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 4, activity_name: 'Hula Hoops', free: true, :description=> 'Hula Hoops', :image_path => '/uploads/program/image_path/1/wall_climbing.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 5, activity_name: 'Swings & Slides', free: true, :description=> 'Swings & Slides', :image_path => '/uploads/program/image_path/1/trampoline_jumping.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 6, activity_name: 'Tug of War', free: true, :description=> 'Tug of War', :image_path => '/uploads/program/image_path/1/swing_and_slides.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 7, activity_name: 'Ribbin Dance', free: true, :description=> 'Ribbin Dance', :image_path => '/uploads/program/image_path/1/126424_340.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 8, activity_name: 'Rope Bridge', free: true, :description=> 'Rope Bridge', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 9, activity_name: 'Slackline', free: true, :description=> 'Slackline', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 10, activity_name: 'Ziplining', free: true, :description=> 'Ziplining', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 11, activity_name: 'Trampolin Jump', free: true, :description=> 'Trampolin Jump', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 12, activity_name: 'Football', free: false, :description=> 'Football', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 13, activity_name: 'Tennis', free: false, :description=> 'Tennis', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 14, activity_name: 'Yoga', free: false, :description=> 'Yoga', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 15, activity_name: 'Karate', free: false, :description=> 'Karate', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 16, activity_name: 'Gymnastics', free: false, :description=> 'Gymnastics', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 17, activity_name: 'Art & Craft', free: false, :description=> 'Art & Craft', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 18, activity_name: 'Water Play', free: false, :description=> 'Water Play', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 19, activity_name: 'Archery', free: false, :description=> 'Archery', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :category_id => 1, :category_name => 'Program')
		Activity.create(id: 20, activity_name: 'Birthday', free: true, :description=> 'Birthday', :image_path => '/uploads/program/image_path/1/girl-exercise-hula-hoop-28855899.jpg', :video_path => 'www.youtube.com/embed/MsWkNeBDa1s', :category_id => 2, :category_name => 'Event')
	end

	task :activity_charges_data => :environment do
		Charge.delete_all
		Charge.create(id: 1, activity_id: 1, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 2, activity_id: 2, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 3, activity_id: 3, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 4, activity_id: 4, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 5, activity_id: 5, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 6, activity_id: 6, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 7, activity_id: 7, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 8, activity_id: 8, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 9, activity_id: 9, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 10, activity_id: 10, charge: 200, freq_flag: 'DEFAULT_FLAT_200')
		Charge.create(id: 12, activity_id: 11, charge: 200, freq_flag: 'DEFAULT_FLAT_200')

		Charge.create(id: 13, activity_id: 12, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 14, activity_id: 13, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 15, activity_id: 14, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 16, activity_id: 15, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 17, activity_id: 16, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 18, activity_id: 17, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 19, activity_id: 18, charge: 200, freq_flag: 'PER_HR_200')
		Charge.create(id: 20, activity_id: 19, charge: 200, freq_flag: 'PER_HR_200')

		Charge.create(id: 21, activity_id: 15, charge: 800, freq_flag: 'SUMMER_1_PER_HR_PER_WEEK')
		Charge.create(id: 22, activity_id: 16, charge: 600, freq_flag: 'SUMMER_1_PER_HR_PER_WEEK')
		Charge.create(id: 23, activity_id: 17, charge: 1000, freq_flag: 'SUMMER_1_PER_HR_PER_WEEK')
		Charge.create(id: 24, activity_id: 18, charge: 800, freq_flag: 'SUMMER_1_PER_HR_PER_WEEK')

		Charge.create(id: 25, activity_id: 15, charge: 1500, freq_flag: 'SUMMER_2_PER_HR_PER_WEEK')
		Charge.create(id: 26, activity_id: 16, charge: 1000, freq_flag: 'SUMMER_2_PER_HR_PER_WEEK')
		Charge.create(id: 27, activity_id: 17, charge: 2000, freq_flag: 'SUMMER_2_PER_HR_PER_WEEK')
		Charge.create(id: 28, activity_id: 18, charge: 1500, freq_flag: 'SUMMER_2_PER_HR_PER_WEEK')

		Charge.create(id: 29, activity_id: 15, charge: 2000, freq_flag: 'SUMMER_3_PER_HR_PER_WEEK')
		Charge.create(id: 30, activity_id: 16, charge: 1500, freq_flag: 'SUMMER_3_PER_HR_PER_WEEK')
		Charge.create(id: 31, activity_id: 17, charge: 2500, freq_flag: 'SUMMER_3_PER_HR_PER_WEEK')
		Charge.create(id: 32, activity_id: 18, charge: 2000, freq_flag: 'SUMMER_3_PER_HR_PER_WEEK')

		Charge.create(id: 33, activity_id: 1, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 34, activity_id: 2, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 35, activity_id: 3, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 36, activity_id: 4, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 37, activity_id: 5, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 38, activity_id: 6, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 39, activity_id: 7, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 40, activity_id: 8, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 41, activity_id: 9, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 42, activity_id: 10, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')
		Charge.create(id: 43, activity_id: 11, charge: 2000, freq_flag: 'DEFAULT_FLAT_2000')

		Charge.create(id: 44, activity_id: 12, charge: 2500, freq_flag: 'MEMBER_3_PER_WEK')
		Charge.create(id: 45, activity_id: 13, charge: 2500, freq_flag: 'MEMBER_3_PER_WEK')
		Charge.create(id: 46, activity_id: 14, charge: 2500, freq_flag: 'MEMBER_3_PER_WEK')

		Charge.create(id: 47, activity_id: 12, charge: 3000, freq_flag: 'MEMBER_4_PER_WEK')
		Charge.create(id: 48, activity_id: 13, charge: 3000, freq_flag: 'MEMBER_4_PER_WEK')
		Charge.create(id: 49, activity_id: 14, charge: 3000, freq_flag: 'MEMBER_4_PER_WEK')

		Charge.create(id: 50, activity_id: 12, charge: 3500, freq_flag: 'MEMBER_5_PER_WEK')
		Charge.create(id: 51, activity_id: 13, charge: 3500, freq_flag: 'MEMBER_5_PER_WEK')
		Charge.create(id: 52, activity_id: 14, charge: 3500, freq_flag: 'MEMBER_5_PER_WEK')

		Charge.create(id: 53, activity_id: 15, charge: 400, freq_flag: 'MEMBER_SUMMER_1_PER_WEEK')
		Charge.create(id: 54, activity_id: 16, charge: 400, freq_flag: 'MEMBER_SUMMER_1_PER_WEEK')
		Charge.create(id: 55, activity_id: 17, charge: 750, freq_flag: 'MEMBER_SUMMER_1_PER_WEEK')
		Charge.create(id: 56, activity_id: 18, charge: 500, freq_flag: 'MEMBER_SUMMER_1_PER_WEEK')
		Charge.create(id: 57, activity_id: 19, charge: 500, freq_flag: 'MEMBER_SUMMER_1_PER_WEEK')

		Charge.create(id: 58, activity_id: 15, charge: 800, freq_flag: 'MEMBER_SUMMER_2_PER_WEEK')
		Charge.create(id: 59, activity_id: 16, charge: 800, freq_flag: 'MEMBER_SUMMER_2_PER_WEEK')
		Charge.create(id: 60, activity_id: 17, charge: 1500, freq_flag: 'MEMBER_SUMMER_2_PER_WEEK')
		Charge.create(id: 61, activity_id: 18, charge: 1000, freq_flag: 'MEMBER_SUMMER_2_PER_WEEK')
		Charge.create(id: 62, activity_id: 19, charge: 1000, freq_flag: 'MEMBER_SUMMER_2_PER_WEEK')

		Charge.create(id: 63, activity_id: 15, charge: 1200, freq_flag: 'MEMBER_SUMMER_3_PER_WEEK')
		Charge.create(id: 64, activity_id: 16, charge: 1200, freq_flag: 'MEMBER_SUMMER_3_PER_WEEK')
		Charge.create(id: 65, activity_id: 17, charge: 2000, freq_flag: 'MEMBER_SUMMER_3_PER_WEEK')
		Charge.create(id: 66, activity_id: 18, charge: 1500, freq_flag: 'MEMBER_SUMMER_3_PER_WEEK')
		Charge.create(id: 67, activity_id: 19, charge: 1500, freq_flag: 'MEMBER_SUMMER_3_PER_WEEK')
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