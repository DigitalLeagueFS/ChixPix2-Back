class AddCompanies < ActiveRecord::Migration[6.0]
  def change
    Company.create(:name=>'DigitalLeague',
                   :desc=>'It',
                   :text=>'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse ac lacus in nisl consequat blandit. Proin consectetur rhoncus erat in vestibulum. Proin sed mauris ante. Proin euismod neque eget nunc venenatis, sagittis facilisis neque aliquam. Nulla vel aliquam arcu. Etiam elit eros, tristique vel tempor sed, fermentum et eros. Quisque aliquet placerat neque nec vehicula.
Donec aliquet magna tempus, malesuada magna non, pellentesque ligula. Curabitur congue mattis nisi ut pellentesque. Suspendisse lacus arcu, eleifend vitae velit sit amet, suscipit consectetur ex. Duis faucibus ex eget euismod scelerisque. Nulla venenatis felis eget magna consequat tristique. Vivamus ultrices tortor placerat tristique congue. Fusce ex diam, imperdiet a dolor et, auctor laoreet augue. Phasellus interdum eleifend nulla id fermentum.
Quisque facilisis dictum felis sed imperdiet. Phasellus faucibus nec velit nec luctus. Suspendisse quis ultricies dui. Duis vitae libero vitae justo pellentesque mollis. Praesent convallis ante neque, ac pellentesque quam dapibus pharetra. Maecenas tincidunt mi eget justo dictum, eu fermentum augue efficitur. Sed a lectus eleifend, dignissim orci vitae, dignissim orci.',
                   :img=>'https://lh3.googleusercontent.com/G5mjkw4IZcW51ZX0KAOvmOG4CANwKffagpWZhEcwrl83sCi3Lc4G54YyDM_t9JnwvVg',
                   :link=>'https://www.digitalleague.ru/'
    ).save
    Company.create(:name=>'VSU',
                   :desc=>'University',
                   :text=>'Curabitur et lorem leo. Vestibulum vel ex libero. Cras et urna id sem sodales aliquam. Maecenas eget tincidunt libero. Aliquam id nibh iaculis, pretium eros sed, malesuada nulla. Duis ornare, arcu eu lacinia eleifend, lorem diam gravida lacus, eget dapibus risus magna a ligula. Ut viverra finibus mi, ut ullamcorper enim laoreet in. Nam lacinia posuere turpis ac viverra. Nunc malesuada dictum consectetur. In ut sapien eu lectus blandit pretium dapibus id justo. Vestibulum consectetur tincidunt augue ac accumsan.

Quisque vulputate velit id tellus dignissim venenatis. Sed non mauris varius, consequat arcu vitae, ullamcorper justo. Etiam a nunc scelerisque, viverra risus nec, vestibulum tortor. Duis sapien nibh, vulputate sit amet tristique ac, pretium non est. Curabitur lobortis dapibus nisi eget facilisis. Mauris luctus feugiat urna, vitae porta lacus molestie a. Sed quis mi felis. Nunc eu risus at nisi viverra dignissim. Etiam ac turpis non lorem porta lobortis. Donec non dictum mauris. Ut maximus facilisis nunc et ultrices. Morbi ante lectus, cursus dictum ante ac, euismod iaculis nibh. Etiam accumsan odio eleifend justo rhoncus, quis maximus eros dapibus.',
                   :img=>'https://tabiturient.ru/logovuz/vsu.png',
                   :link=>'http://www.vsu.ru/'
    ).save
    Company.create(:name=>'Gazprom',
                   :desc=>'Government',
                   :text=>'Maecenas consequat feugiat orci nec sagittis. Integer et ex enim. Integer porttitor viverra erat, quis congue mauris porta non. Nunc hendrerit semper dui, eu mollis risus egestas a. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Donec iaculis tortor diam, a varius urna convallis nec. Integer vitae sagittis purus, tincidunt elementum quam. Suspendisse gravida in metus quis consectetur. Duis ornare neque vel lorem tincidunt hendrerit. Maecenas risus tortor, eleifend eget congue in, tristique rhoncus urna. Pellentesque vehicula eu erat eget sollicitudin. Cras risus velit, suscipit ac pulvinar eget, auctor sed massa. Proin varius neque sed velit vestibulum suscipit. Praesent feugiat pulvinar massa a efficitur. Praesent pulvinar, augue nec varius viverra, neque massa consectetur orci, quis eleifend risus nisl a velit.',
                   :img=>'https://yt3.ggpht.com/a/AGF-l78LgkGHMXd78ulY7krdiEZ1xZgU_iT9-jfMig=s900-c-k-c0xffffffff-no-rj-mo',
                   :link=>'https://www.gazprom.ru/'
    ).save
    Company.create(:name=>'Angstrem',
                   :desc=>'Furniture factory',
                   :text=>'Aenean sit amet feugiat erat. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Phasellus congue, magna nec vulputate tincidunt, lorem tellus finibus orci, in congue urna libero et sem. Nunc risus eros, volutpat non dignissim eget, consequat faucibus justo. Duis suscipit at arcu et mattis. Aliquam et velit dolor. Suspendisse eleifend magna sem, nec consequat leo pretium et. Ut porttitor justo sit amet ex fringilla tristique. Integer finibus eleifend ipsum, a semper urna ullamcorper in. Phasellus dapibus auctor libero mollis accumsan. Curabitur varius tincidunt justo. Mauris lacinia pellentesque nisl, a tincidunt elit ullamcorper sed. In convallis massa velit, sed mattis nisl interdum in.',
                   :img=>'https://cdn1.flamp.ru/369e071d39fa5f89c6e354cbaf05ed4f.jpg',
                   :link=>'https://www.angstrem-mebel.ru/'
    ).save
  end
end
