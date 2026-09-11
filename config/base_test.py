from services.user_auth.api_user_auth import UserAuthAPI
from services.task.api_task import TaskAPI


class BaseTest:

    def setup_method(self):
        self.api_user_auth = UserAuthAPI()
        self.api_task = TaskAPI()
