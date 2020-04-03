module ApplicationHelper
  def youtube_video(progression)
    render :partial => 'shared/video', :locals => { progression: progression}
  end
end
