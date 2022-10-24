class Attack < ApplicationRecord
    belongs_to :monster
    belongs_to :victim
    validate :mayores

    def mayores
        m = Monster.find(monster_id)
        v = Victim.find(victim_id)

        now = Date.today
        year = now.year - v.birthdate.year

        if(now.month > v.birthdate.month)
            year = year - 1
        end   

        if (m.scare_level > 5 && year < 18)
              errors.add(:monster.scare_level, message:"Este monstruo no puede asustar victimas menores")          
        end
    end

end
