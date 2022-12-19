function phpunit --wraps=vendor/bin/phpunit --description 'alias phpunit=vendor/bin/phpunit'
  vendor/bin/phpunit $argv; 
end
