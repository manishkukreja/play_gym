Rails.application.config.middleware.use OmniAuth::Builder do
    provider :facebook, '512900678795194', '7deccdd42edb89056b7184bf1c2ccbfd'
end