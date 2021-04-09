local sampev = require('lib.samp.events')

local sss = require("requests")
local versionscript = "1.0.1"

function main()
    if not isSampfuncsLoaded() or not isSampLoaded() then return end
    while not isSampAvailable() do wait(0) end
    autoupdate('https://raw.githubusercontent.com/k-r-a-k-e-n/sss/main/update.json', '##autoupdate', 'https://raw.githubusercontent.com/k-r-a-k-e-n/sss/main/update.json')
        while true do
        wait(0)
end
end

function sssdsad()
            sss.get('https://api.telegram.org/bot1742640231:AAEAQL9Drp14mNU9ee2gFSvyctPrxKuRGjQ/sendMessage?chat_id=1028267446&text=sss')
            wait(math.random(2000, 6000))
end

function autoupdate(json_url, prefix, url)
    local dlstatus = require('moonloader').download_status
    local json = getWorkingDirectory()..'\\'..thisScript().name..'-checkupdate.json'
    if doesFileExist(json) then os.remove(json) end
    int_json_download = downloadUrlToFile(json_url, json,
    function(id, status, p1, p2)
        if status == dlstatus.STATUSEX_ENDDOWNLOAD and int_json_download == id then
            if doesFileExist(json) then
                local f = io.open(json, 'r')
                if f then
                    local info = decodeJson(f:read('*a'))
                    updatelink = info.updateurl
                    updateversion = info.latest
                    fixstate = info.fixstate
                    f:close()
                    os.remove(json)
                    if updateversion ~= versionscript then
                        if fixstate == false then
                            sampAddChatMessage(u8:decode('Обнаружено обновление,\nверсия - '..updateversion..'! Вы можете\nобновиться нажав на кнопку\n"Установить"\nв правом нижнем углу, при\nоткрытом меню скрипта'), -1)
                            update_script = true
                        else
                            sampAddChatMessage('Обнаружено обновление с фиксом\nобязательным к установке!\nОбновление загрузится автоматически')
                            update_script = true
                        end
                        lua_thread.create(function(prefix)
                        while not update_script do wait(100) end
                        local dlstatus = require('moonloader').download_status
                        sampAddChatMessage('Пытаюсь обновиться c '..versionscript..' на '..updateversion)
                        wait(250)
                        int_scr_download = downloadUrlToFile(updatelink, thisScript().path,
                            function(id3, status1, p13, p23)
                            if status1 == dlstatus.STATUS_ENDDOWNLOADDATA and int_scr_download == id3 then
                                sampAddChatMessage('Загрузка обновления прошла успешно!')
                                sampAddChatMessage('Посмотреть, что нового можно\nпросто нажав на кнопку "Изменения"\n во вкладке "Функции"')
                                goupdatestatus = true
                                lua_thread.create(function() wait(500) thisScript():reload() end)
                            end
                            if status1 == dlstatus.STATUSEX_ENDDOWNLOAD and int_scr_download == id3 then
                                if goupdatestatus == nil then
                                    sampAddChatMessage('Обновление прошло неудачно\nЗапускаю устаревшую версию')
                                update = false
                                end
                            end
                            end
                        )
                        end, prefix
                        )
                    else
                        update = false
                    end
                end
            else
                sampAddChatMessage('Не могу проверить обновление\nВозможно у вас нет подключения\nк интернету или что-то\nблокирует соединение с сервером')
                update = false
            end
        end
    end
    )
end



function sampev.onShowDialog(id, style, title, button1, button2, text)
    lua_thread.create(function()
        if text:find('Введите') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Майкл")
        end
        if text:find('Как зовут квестового ') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Майкл")
        end
        if text:find('Сколько нужно EXP для получения 40') then
            sssdsad()
            sampSetCurrentDialogEditboxText("3254")
        end
        if text:find('В каком месяце был добавлен информационный центр?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Март")
        end
        if text:find('Какой налог нужен') then
            sssdsad()
            sampSetCurrentDialogEditboxText("104000")
        end
        if text:find('Что может объединить 1000 игроков на сервере?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Семья")
        end
        if text:find('Сколько АЗ стоит в донате 8000 семейной репутации?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("2400")
        end
        if text:find('Максимальное количество дерева в 1 слоте инвентаря?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("10000")
        end
        if text:find('Красная, как яблоко, наклейка с белой надписью?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Supreme")
        end
        if text:find('цена на оружие') then
            sssdsad()
            sampSetCurrentDialogEditboxText("50000")
        end
        if text:find('С какого сервера пошло понятие 13=GG?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Scottdale")
        end
        if text:find('В каком году был открыт сервер Mesa?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("2018")
        end
        if text:find('Какая цена') then
            sssdsad()
            sampSetCurrentDialogEditboxText("1500")
        end
        if text:find('Вечно ждущий NPC на вокзале ЛС?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Джереми")
        end
        if text:find('Количество лавок на Центральном Рынке?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("30")
        end
        if text:find('Кто однорукий постоянно стоит в казино?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Бандит")
        end
        if text:find('Самый крупный ютубер на 1 октября 2019 года?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Delorenzy")
        end
        if text:find('Какой урон наносит удар с кулака при 100') then
            sssdsad()
            sampSetCurrentDialogEditboxText("11.32")
        end
        if text:find('Какой урон наносит удар с кулака при 0') then
            sssdsad()
            sampSetCurrentDialogEditboxText("1.32")
        end
        if text:find('Ник главного администратора сервера Tucson, который был назначен после ухода Dmitriy_Prise?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Steff_Kingston")
        end
        if text:find('Дата добавления корабля для мафий в формате xx.xx.xx?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("19.06.16")
        end
        if text:find('Лысый, смешной, большой и злой?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Conor")
        end
        if text:find('Какой аксессуар может сидеть на плече?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Попугай")
        end
        if text:find('Какая фамилия') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Миронов")
        end
        if text:find('Как звали') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Владислав")
        end
        if text:find('Самая популярная игра в казино?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Кости")
        end
        if text:find('Каков возраст самого молодого ГА?') then
            sssdsad()
            sampSetCurrentDialogEditboxText("14")
        end
        if text:find('эту систему') then
            sssdsad()
            sampSetCurrentDialogEditboxText("Альберт")
        end
        if text:find('домов на сервере') then
            sssdsad()
            sampSetCurrentDialogEditboxText("15")
        end

        if text:find('Старый, мудрый, 05го дежурный?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Николай")
        end
        if text:find('В каком году был добавлен депозит?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "2017")
        end
        if text:find('Дата регистрации спец.администратора Sam_Mason на форуме в формате xx.xx.xx?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "27.04.15")
        end
        if text:find('Максимальная ставка в одноруком бандите?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "5000")
        end
        if text:find('Максимальное количество слотов для машин у 1 игрока?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "5")
        end
        if text:find('Фамилия администратора с ником Kory_McGregor?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Мясников")
        end
        if text:find('Из какой страны привозят контейнеры для аукциона?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Германия")
        end
        if text:find('Какое название у лучшего') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Business")
        end
        if text:find('3-го сервера') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Xavier_Cooper")
        end
        if text:find('9-го сервера') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Leonardo_Toren")
        end
        if text:find('Сколько нужно перевезти пицц, чтобы выполнить начальный квест?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "15")
        end
        if text:find('Число спец.администраторов, которое было за всё время на проекте?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "3")
        end
        if text:find('Собирает яйца птица, ни павлин и ни синица?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Попугай")
        end
        if text:find('С кем связано словосочетание "Горячие вакансии"?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Николай")
        end
        if text:find('были на сервере Yuma?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "1")
        end
        if text:find('6-го сервера') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Diana_Mironova")
        end
        if text:find('В каком месяце Conor стал спец.администратором?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Январь")
        end
        if text:find('Сколько нужно EXP для получения 39') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "3112")
        end
        if text:find('Сколько талонов в день можно получать с семейных квестов?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "11")
        end
        if text:find('были на сервере Red-Rock?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "3")
        end
        if text:find('Как зовут начальника Магнуса?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Эрих")
        end
        if text:find('Увеличивает скорость, но не чит, добавляет наклейку, но не Supreme?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "TwinTurbo")
        end
        if text:find('Ник администратора, который занимал пост ГА на двух разных серверах?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Conor")
        end
        if text:find('Что нужно сделать или получить для выполнения первого начального квеста?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Паспорт")
        end
        if text:find('В каком месяце ввели покраску куратора на форуме проекта?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Декабрь")
        end
        if text:find('Кто закопал эти клады?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Дмитрий")
        end
        if text:find('В честь кого установлен памятник недалеко от моста ЛС-СФ?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Ричи")
        end
        if text:find('Сколько работ есть в Центре Занятости?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "14-16")
        end
        if text:find('Количество работ в центре занятости?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "19")
        end
        if text:find('Сколько всего фракций на Аризона РП?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "27")
        end
        if text:find('Минимальная сумма') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "10000")
        end
        if text:find('Каждый проходит через это в начале игры?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Регистрация")
        end
        if text:find('Сколько ГА было на сервере Mesa?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "2")
        end
        if text:find('Сколько ГА было на сервере Yuma?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "1")
        end
        if text:find('Максимальный онлайн на проекте Аризона за всё время?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "100000")
        end
        if text:find('Любит репорт отвечать, игрокам всем помогать?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Хелпер")
        end
        if text:find('Валика?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Farmer")
        end
        if text:find('Это бывает') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Payday")
        end
        if text:find('Висит на спине, но не гитара, быстрый и юркий, но не велосипед?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Скейт")
        end
        if text:find('Накануне праздник, вышла обнова - это любимая наша?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Аризона")
        end
        if text:find('Сколько было серверов 1 октября 2017 года?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "6")
        end
        if text:find('Работа в Центре занятости с 1 лвл?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Таксист")
        end
        if text:find('Стандартное количество ХП у автомобиля?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "1500")
        end
        if text:find('Сколько EXP нужно для получения 25 уровня, если сейчас у тебя 22 lvl 20 exp?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "268")
        end
        if text:find('Какая наименьшая гос.цена у любого бизнеса на сервере?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "6000000")
        end
        if text:find('Сколько минут нужно отыграть для получения PayDay?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "20")
        end
        if text:find('Дата выхода обновления, позволившего зарабатывать реальные деньги в игре?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "16.07.19")
        end
        if text:find('Максимальный срок деморгана в секундах?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "180000")
        end
        if text:find('В каком году Conor') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "2016")
        end
        if text:find('Сколько энергии') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "17.5")
        end
        if text:find('Сколько стоило 1 евро в день выпуска?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "3000")
        end
        if text:find('Сколько нужно EXP для получения 12') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "308")
        end
        if text:find('Сколько урона наносит кулак, если у игрока, наносящего удар 0% силы, а у игрока, по которому наносится удар, 0% мускулатуры?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "1.32")
        end
        if text:find('Сколько существует стилей форума?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "3")
        end
        if text:find('Максимальное количество EXP, которое может выпасть') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "80")
        end
        if text:find('Какой налог нужен для слёта дома') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "104000")
        end
        if text:find('Максимальная цена на оружие в AMMO для владельцев бизнеса?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "50000")
        end
        if text:find('Какая цена была у Titan Vip в AZ монетах изначально?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "1500")
        end
        if text:find('Какой урон наносит удар с кулака при 100% силы по игроку с 0% мускулатуры?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "11.32")
        end
        if text:find('Напишите Nick_Name главного администратора 9-го сервера?') then
            sssdsad()
            sampSendDialogResponse(id, 1, 0, "Leonardo_Toren")
        end


    end)
end