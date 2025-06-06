local friend_list = {
    ['Athrakha'] = { name = 'Athrakha' },
    ['Bevent'] = { name = 'Bevent' },
    ['Chanini'] = { name = 'Chanini' },
    ['Daia'] = { name = 'Daia' },
    ['Darnsum'] = { name = 'Darnsum' },
    ['Eviannich'] = { name = 'Eviannich' },
    ['Fius'] = { name = 'Fius' },
    ['Giamar'] = { name = 'Giamar' },
    ['Hwan'] = { name = 'Hwan' },
    ['Ifsum'] = { name = 'Ifsum' },
    ['Iverle'] = { name = 'Iverle' },
    ['Joarne'] = { name = 'Joarne' },
    ['Kela'] = { name = 'Kela' },
    ['Lend'] = { name = 'Lend' },
    ['Murah'] = { name = 'Murah' },
    ['Nosko'] = { name = 'Nosko' },
    ['Olis'] = { name = 'Olis' },
    ['Orgsum'] = { name = 'Orgsum' },
    ['Paudes'] = { name = 'Paudes' },
    ['Qoldrey'] = { name = 'Qoldrey' },
    ['Ratchetsum'] = { name = 'Ratchetsum' },
    ['Razorsum'] = { name = 'Razorsum' },
    ['Rnawe'] = { name = 'Rnawe' },
    ['Stin'] = { name = 'Stin' },
    ['Swsum'] = { name = 'Swsum' },
    ['Tbsum'] = { name = 'Tbsum' },
    ['Tephan'] = { name = 'Tephan' },
    ['Ucsum'] = { name = 'Ucsum' },
    ['Ugla'] = { name = 'Ugla' },
    ['Vand'] = { name = 'Vand' },
    ['Woro'] = { name = 'Woro' },
    ['Xarg'] = { name = 'Xarg' },
    ['Yaparro'] = { name = 'Yaparro' },
    ['Zordon'] = { name = 'Zordon' }
}

function th.AddFriends()
    local num_friends = GetNumFriends()
    if num_friends > 0 then
        for i = 1, num_friends do
            local found_friend = GetFriendInfo(i)
            if friend_list[found_friend] then
                friend_list[found_friend].added = 1
            end
        end
    end
    for _, friend_list_data in friend_list do
        if not friend_list_data.added and friend_list_data.name ~= th.my_name then
            AddFriend(friend_list_data.name)
        end
    end
end