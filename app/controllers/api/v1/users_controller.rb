class Api::V1::UsersController < Api::V1::BaseController
  URL = 'https://api.weixin.qq.com/sns/jscode2session'
  def login
# ?appid=APPID&secret=SECRET&js_code=JSCODE&grant_type=authorization_code
    wx_params = {
      appid: wxc754c0609b561529
      secret:
      js_code: params[:code]
      grant_type: 'authorization_code'
    }
  end
end
