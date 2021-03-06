require 'codesake/dawn/kb/owasp_ror_cheatsheet/command_injection'
require 'codesake/dawn/kb/owasp_ror_cheatsheet/csrf'
require 'codesake/dawn/kb/owasp_ror_cheatsheet/session_stored_in_database'
require 'codesake/dawn/kb/owasp_ror_cheatsheet/mass_assignment_in_model'
require 'codesake/dawn/kb/owasp_ror_cheatsheet/security_related_headers'

module Codesake
  module Dawn
    module Kb
      class OwaspRorCheatsheet
        include ComboCheck

        def initialize
          message = "This Cheatsheet intends to provide quick basic Ruby on Rails security tips for developers. It complements, augments or emphasizes points brought up in the rails security guide from rails core.  The Rails framework abstracts developers from quite a bit of tedious work and provides the means to accomplish complex tasks quickly and with ease. New developers, those unfamiliar with the inner-workings of Rails, likely need a basic set of guidelines to secure fundamental aspects of their application. The intended purpose of this doc is to be that guide."

          super({
            :name=>"Owasp Ror Cheatsheet", 
            :applies=>["rails"],
            :kind=>Codesake::Dawn::KnowledgeBase::COMBO_CHECK,
            :aux_links=>["https://www.owasp.org/index.php/Ruby_on_Rails_Cheatsheet"],
            :checks=>[
              Codesake::Dawn::Kb::OwaspRorCheatSheet::CommandInjection.new,
              Codesake::Dawn::Kb::OwaspRorCheatSheet::Csrf.new,
              Codesake::Dawn::Kb::OwaspRorCheatSheet::SessionStoredInDatabase.new,
              Codesake::Dawn::Kb::OwaspRorCheatSheet::MassAssignmentInModel.new, 
              Codesake::Dawn::Kb::OwaspRorCheatSheet::SecurityRelatedHeaders.new, 


            ],
            :vuln_if_all_fails => false
          })

          # @debug = true

        end
      end
    end
  end
end
