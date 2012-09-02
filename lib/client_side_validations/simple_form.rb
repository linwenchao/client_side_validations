module ClientSideValidations
  module SimpleForm
    module FormBuilder

      def self.included(base)
        base.class_eval do
          def self.client_side_form_settings(options, form_helper)
            {
              :type => self.to_s,
              :error_class => "help-inline",
              :error_tag => "span",
              :wrapper_error_class => "error",
              :wrapper_tag => "div.control-group",
              :container_tag => "div.controls"
            }
          end
        end
      end

    end
  end
end

SimpleForm::FormBuilder.send(:include, ClientSideValidations::SimpleForm::FormBuilder)

