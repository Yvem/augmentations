# "Augmentations" plugin for Rails.
# By Henrik Nyh <http://henrik.nyh.se> under the MIT license for DanceJam <http://dancejam.com> 2008-09-10.
# See README for usage.

class ::Object
  def self.augment(*mods)
    include *mods
    mods.each {|mod| class_eval &mod.augmentation }
  end
end

class ::Module
  def augmentation(&block)
    @augmentation ||= block
  end
end
