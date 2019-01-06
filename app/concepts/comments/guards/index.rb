module Comments
  module Guards
    class Index < ApplicationGuard
      def authorized?(ctx, current_user:, task:, **)
        task.project.user == current_user
      end
    end
  end
end
