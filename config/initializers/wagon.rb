# frozen_string_literal: true

#  Copyright (c) 2022, Aargauer OL-Verband. This file is part of
#  hitobito and licensed under the Affero General Public License version 3
#  or later. See the COPYING file at the top-level directory or at
#  https://github.com/hitobito/hitobito.
#
#  Overrides the corresponding file from hitobito core, adding sicard

Rails.application.config.to_prepare do
  TableDisplay.register_column(Person,
                               TableDisplays::PublicColumn,
                               [:sicard])
  TableDisplay.register_column(Person,
                               TableDisplays::ShowFullColumn,
                               [:updated_at])
  
  TableDisplay.register_column(Event::Participation,
                               TableDisplays::PublicColumn,
                               ["person.sicard"])

  Event::ParticipationContactData.contact_attrs += [:sicard]
end
