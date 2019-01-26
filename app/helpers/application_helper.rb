module ApplicationHelper
    
    def has_avatar?
        unless current_user.profile_user.blank?
            image_tag current_user.profile_user.avatar.url(:miniature)                   
        end
    end
    
end
