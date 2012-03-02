module FpActsAsMoney
  module ActsAsMoney
    extend ActiveSupport::Concern
 
    included do
    end
 
    module ClassMethods
      def money(name, options = {})
        default_options = {
          :cents => "#{name}_in_cents".to_sym
        }
        options = default_options.merge(options)
        
        mapping = [[options[:cents].to_s, 'cents']]
        
        mapping << [options[:currency].to_s, 'currency'] if options[:currency]
        
        composed_of name, :class_name => 'Money', :allow_nil => true, :mapping => mapping,
          :converter => lambda { |m| m.to_money }
      end
    end
  end
end

ActiveRecord::Base.send :include, FpActsAsMoney::ActsAsMoney