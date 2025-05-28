 function commit
       echo "Введите сообщение коммитаа"
       read message
       git commit -m "$message"
   end
