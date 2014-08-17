ActiveAdmin.register_page "Dashboard" do

  menu priority: 1, label: proc{ I18n.t("active_admin.dashboard") }

  content title: proc{ I18n.t("active_admin.dashboard") } do


    # Here is an example of a simple dashboard with columns and panels.
    #
    columns do
      column do
        panel "Recent Alerts" do
          ul do
            DAlert.last(5).map do |d|
              li link_to(d.name, admin_d_alert_path(d))
            end
          end
        end
      end

      column do
        panel "Info" do
          para "Welcome to ActiveAdmin."
        end
      end
    end
  end
end
