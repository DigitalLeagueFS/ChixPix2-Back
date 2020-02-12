# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Company.create([
                   {
                       :company_name=>'DigitalLeague',
                       :desc=>'It',
                       :text=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque. Suspendisse lacus arcu, eleifend vitae velit sit amet, suscipit consectetur ex. Duis faucibus ex eget euismod scelerisque. Nulla venenatis felis eget magna consequat tristique. Vivamus ultrices tortor placerat tristique congue. Fusce ex diam, imperdiet a dolor et, auctor laoreet augue. Phasellus interdum eleifend nulla id fermentum.
Quisque facilisis dictum felis sed imperdiet. Phasellus faucibus nec velit nec luctus. Suspendisse quis ultricies dui. Duis vitae libero vitae justo pellentesque mollis. Praesent convallis ante neque, ac pellentesque quam dapibus pharetra. Maecenas tincidunt mi eget justo dictum, eu fermentum augue efficitur. Sed a lectus eleifend, dignissim orci vitae, dignissim orci.',
                       :img=>'https://lh3.googleusercontent.com/G5mjkw4IZcW51ZX0KAOvmOG4CANwKffagpWZhEcwrl83sCi3Lc4G54YyDM_t9JnwvVg',
                       :link=>'https://www.digitalleague.ru/'
                   },
                   {
                       :company_name=>'VSU',
                       :desc=>'University',
                       :text=>'Curabitur et lorem leo. Vestibulum vel ex libero. Cras et urna id sem sodales aliquam. Maecenas eget tincidunt libero. Aliquam id nibh iaculis, pretium eros sed, malesuada nulla. Duis ornare, arcu eu lacinia eleifend, lorem diam gravida lacus, eget dapibus risus magna a ligula. Ut viverra finibus mi, ut ullamcorper enim laoreet in. Nam lacinia posuere turpis ac viverra. Nunc malesuada dictum consectetur. In ut sapien eu lectus blandit pretium dapibus id justo. Vestibulum consectetur tincidunt augue ac accumsan.

Quisque vulputate velit id tellus dignissim venenatis. Sed non mauris varius, consequat arcu vitae, ullamcorper justo. Etiam a nunc scelerisque, viverra risus nec, vestibulum tortor. Duis sapien nibh, vulputate sit amet tristique ac, pretium non est. Curabitur lobortis dapibus nisi eget facilisis. Mauris luctus feugiat urna, vitae porta lacus molestie a. Sed quis mi felis. Nunc eu risus at nisi viverra dignissim. Etiam ac turpis non lorem porta lobortis. Donec non dictum mauris. Ut maximus facilisis nunc et ultrices. Morbi ante lectus, cursus dictum ante ac, euismod iaculis nibh. Etiam accumsan odio eleifend justo rhoncus, quis maximus eros dapibus.',
                       :img=>'https://tabiturient.ru/logovuz/vsu.png',
                       :link=>'http://www.vsu.ru/'
                   },
                   {
                       :company_name=>'Gazprom',
                       :desc=>'Government',
                       :text=>'Maecenas consequat feugiat orci nec sagittis. Integer et ex enim. Integer porttitor viverra erat, quis congue mauris porta non. Nunc hendrerit semper dui, eu mollis risus egestas a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis tortor diam, a varius urna convallis nec. Integer vitae sagittis purus, tincidunt elementum quam. Suspendisse gravida in metus quis consectetur. Duis ornare neque vel lorem tincidunt hendrerit. Maecenas risus tortor, eleifend eget congue in, tristique rhoncus urna. Pellentesque vehicula eu erat eget sollicitudin. Cras risus velit, suscipit ac pulvinar eget, auctor sed massa. Proin varius neque sed velit vestibulum suscipit. Praesent feugiat pulvinar massa a efficitur. Praesent pulvinar, augue nec varius viverra, neque massa consectetur orci, quis eleifend risus nisl a velit.',
                       :img=>'https://yt3.ggpht.com/a/AGF-l78LgkGHMXd78ulY7krdiEZ1xZgU_iT9-jfMig=s900-c-k-c0xffffffff-no-rj-mo',
                       :link=>'https://www.gazprom.ru/'
                   },
                   {
                       :company_name=>'Angstrem',
                       :desc=>'Furniture factory',
                       :text=>'Aenean sit amet feugiat erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus congue, magna nec vulputate tincidunt, lorem tellus finibus orci, in congue urna libero et sem. Nunc risus eros, volutpat non dignissim eget, consequat faucibus justo. Duis suscipit at arcu et mattis. Aliquam et velit dolor. Suspendisse eleifend magna sem, nec consequat leo pretium et. Ut porttitor justo sit amet ex fringilla tristique. Integer finibus eleifend ipsum, a semper urna ullamcorper in. Phasellus dapibus auctor libero mollis accumsan. Curabitur varius tincidunt justo. Mauris lacinia pellentesque nisl, a tincidunt elit ullamcorper sed. In convallis massa velit, sed mattis nisl interdum in.',
                       :img=>'https://cdn1.flamp.ru/369e071d39fa5f89c6e354cbaf05ed4f.jpg',
                       :link=>'https://www.angstrem-mebel.ru/'
                   }
               ])

Client.create([
                  {
                      :client_name=>'Vladimir',
                      :client_surname=>'Putin',
                      :client_thirdname=>'Vladimirovich',
                      :client_phone=>'88005553535',
                      :client_date=>'1952-10-07',
                      :link=>'https://static.mk.ru/upload/entities/2020/01/07/23/articles/detailPicture/18/b4/c7/6a/61672e5230dd065c96a3c0ddbc41f688.jpg',
                      :company_id=>3
                  },
                  {
                      :client_name=>'Olga',
                      :client_surname=>'Uskova',
                      :client_thirdname=>'Fedorovna',
                      :client_phone=>'89081322553',
                      :client_date=>'1937-03-12',
                      :link=>'http://www.vrn.ru/images/news/071227/uskova.jpg',
                      :company_id=>2
                  },
                  {
                      :client_name=>'German',
                      :client_surname=>'Gref',
                      :client_thirdname=>'Oskarovich',
                      :client_phone=>'84955005550',
                      :client_date=>'1964-2-08',
                      :link=>'https://globalsib.com/wp-content/uploads/2017/06/979676_original.jpg',
                      :company_id=>1
                  },
                  {
                      :client_name=>'Yuri',
                      :client_surname=>'Ribnikov',
                      :client_thirdname=>'Sergeevich',
                      :client_phone=>'89204610789',
                      :client_date=>'1944-06-01',
                      :link=>'http://wiki.globalwave.tv/images/thumb/7/7b/Ribnikov_3PdR6B9S7EM.jpg/300px-Ribnikov_3PdR6B9S7EM.jpg',
                      :company_id=>4
                  },
                  {
                      :client_name=>'Viktor',
                      :client_surname=>'Katushik',
                      :client_thirdname=>'Aleksandrovich',
                      :client_phone=>'88005553535',
                      :client_date=>'1976-06-22',
                      :link=>'https://sun9-9.userapi.com/c846120/v846120419/d1eec/UH0-g4JiDxI.jpg',
                      :company_id=>2
                  },
                  {
                      :client_name=>'Anatoly',
                      :client_surname=>'Gaponov',
                      :client_thirdname=>'Konstantinovich',
                      :client_phone=>'89537712578',
                      :client_date=>'1945-07-04',
                      :link=>'https://sun9-61.userapi.com/QBrhvZ-KqSz-onBrsn-XArmxSlndxYP5-PRSig/IWoImGCb9Hk.jpg?ava=1',
                      :company_id=>1
                  },
                  {
                      :client_name=>'Ed',
                      :client_surname=>'Sheeran',
                      :client_thirdname=>'Borisovich',
                      :client_phone=>'1483369',
                      :client_date=>'1991-02-17',
                      :link=>'https://stuki-druki.com/aforizms/Ed-Sheeran-01.jpg',
                      :company_id=>3
                  },
                  {
                      :client_name=>'Gennady',
                      :client_surname=>'Gorin',
                      :client_thirdname=>'Voprosovich',
                      :client_phone=>'132383819',
                      :client_date=>'1972-12-11',
                      :link=>'https://yt3.ggpht.com/a/AGF-l78u6JSQLQr-8GxgyzUrpucMlL5q-98zMDUpow=s900-c-k-c0xffffffff-no-rj-mo',
                      :company_id=>4
                  },
                  {
                      :client_name=>'Jacque',
                      :client_surname=>'Fresko',
                      :client_thirdname=>'Filosovich',
                      :client_phone=>'132383811239',
                      :client_date=>'1916-03-13',
                      :link=>'http://www.worldofcashflow.ru/wp-content/uploads/2016/03/fresko.jpg',
                      :company_id=>1
                  },
                  {
                      :client_name=>'Donald',
                      :client_surname=>'Trump',
                      :client_thirdname=>'John',
                      :client_phone=>'123456789',
                      :client_date=>'1946-06-14',
                      :link=>'https://icdn.lenta.ru/images/2020/01/08/17/20200108172539358/square_320_7a3114e1a023741c08055518992e2d4f.jpg',
                      :company_id=>1
                  },
                  {
                      :client_name=>'Evgeny',
                      :client_surname=>'Ponasenkov',
                      :client_thirdname=>'Nikolaevich',
                      :client_phone=>'10101010010',
                      :client_date=>'1982-03-13',
                      :link=>'https://pbs.twimg.com/profile_images/1732257327/_______400x400.png',
                      :company_id=>3
                  },
                  {
                      :client_name=>'Murlika',
                      :client_surname=>'Pushistiy',
                      :client_thirdname=>'Dvoroviy',
                      :client_phone=>'12314521511',
                      :client_date=>'2018-07-13',
                      :link=>'http://nashvet.ru/wp-content/uploads/2014/04/1350948-british-shorthair-cat-450x356.jpg',
                      :company_id=>2
                  }
              ])


Position.create([{:post=>'Worker'},{:post=>'Manager'}])

User.create([
                {
                    :login=>'admin',
                    :password=>BCrypt::Password.create('admin'),
                    :user_firstname=> 'Dmitry',
                    :user_secondname=> 'Sevostyanov',
                    :user_thirdname=> 'Romanovich',
                    :user_date=> '1999-06-01',
                    :position_id=>2
                },

                {
                    :login=>'gekas',
                    :password=>BCrypt::Password.create('qwerty'),
                    :user_firstname=> 'Evgeny',
                    :user_secondname=> 'Ponomarev',
                    :user_thirdname=> 'Konstantinovich',
                    :user_date=> '1999-12-23',
                    :position_id=>2
                },

                {
                    :login=>'sasha',
                    :password=>BCrypt::Password.create('12345'),
                    :user_firstname=> 'Alexandr',
                    :user_secondname=> 'Burenin',
                    :user_thirdname=> 'Olegovich',
                    :user_date=> '1999-07-09',
                    :position_id=>2
                }])

Result.create([
                  {:result_description=>'Not ready'},
                  {:result_description=>'Failed'},
                  {:result_description=>'Done'},
                  {:result_description=>'Cancelled'}])

Task.create([
                {
                    :name=>'Sleep',
                    :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
                    :beginning=>'2020-01-25',
                    :deadline=>'2020-02-25',
                    :finished=>nil,
                    :user_id=>nil,
                    :result_id=>1,
                    :client_id=>9
                },
                {
                    :name=>'Find Anatoly',
                    :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
                    :beginning=>'2020-01-25',
                    :deadline=>'2020-02-25',
                    :finished=>nil,
                    :client_id=>5,
                    :user_id=>nil,
                    :result_id=>1
                },
                {
                    :name=>'Pet a cat',
                    :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
                    :beginning=>'2020-01-25',
                    :deadline=>'2020-01-29',
                    :finished=>nil,
                    :user_id=>nil,
                    :result_id=>1,
                    :client_id=>2
                },
                {:name=>'Call mom',
                 :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
                 :beginning=>'2020-01-25',
                 :deadline=>'2020-03-26',
                 :finished=>nil,
                 :user_id=>nil,
                 :result_id=>1,
                 :client_id=>4
                },
                {
                    :name=>'Drink beer',
                    :description=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
    Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque.',
                    :beginning=>'2020-01-25',
                    :deadline=>'2020-02-25',
                    :finished=>nil,
                    :user_id=>nil,
                    :result_id=>1,
                    :client_id=>7
                }
            ])


