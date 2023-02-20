local BigDC = "🔴 OFF"
local SmallDC = "🔴 OFF"
local OneHits = "🔴 OFF"
local NoDamages = "🔴 OFF"
local Country ="Việt Nam 🇻🇳"
while (true) do
    if gg.isVisible(true) then
        menuk = 1
        gg.setVisible(false)
    end
    START = 1
    function setvalue(address, flags, value)
        local tt = {}
        tt[1] = {}
        tt[1].address = address
        tt[1].flags = flags
        tt[1].value = value
        gg.setValues(tt)
    end
    function START()
        timess = os.date("%H:%M:%S\t %d-%m-%Y")
        menu = gg.choice({
            '1.   🗓️  Ads Calendar  🗓️', '2.   📺  Hack Skip  📺',
            '3.   🐉  Hack Level and Skills 🐉', '4.   🏁  Support Event  🏁',
            '5.   🏡  Move Habit  🏡',
            '6.   🔁  Change Dragon 🐉 --> 🐍 🔁 ', '7.   🔘   Other',
            '❌     Exit     ❌ '
        }, Last,
                         '                      Dragon City Tools\n\nVersion: Pro \n\nTime Login:'.. timess..    '\n\nCountry: '..Country..'')
        if menu == 1 then Start1() end
        if menu == 2 then Start2() end
        if menu == 3 then Start3() end
        if menu == 4 then Start4() end
        if menu == 5 then Start5() end
        if menu == 6 then Start6() end
        if menu == 7 then Start7() end
        if menu == 8 then ends() end
        if menu == nil then noselect() end
        menuk = -1

    end

    function Start1()

        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("2023", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("2023", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10000)
        gg.editAll("2022", gg.TYPE_DWORD)
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        NoError()
        noselect()

    end

    function Start2()

        skip = gg.choice({
            '1.   📺  30p  📺', '2.   📺  12h  📺', '↩️ Return '
        }, nil, 'Skip hiện tại đang có: ')
        if skip == 1 then skips30p() end
        if skip == 2 then skips12h() end
        if skip == 3 then START() end
        if skip == nil then noselect() end

    end

    function skips12h()
        NoError()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1;4;43200;1;4;43200::200", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000, nil, nil, nil, 43200, 43200)
        gg.editAll("1000000", gg.TYPE_DWORD)
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        NoError()
        noselect()
    end
    function skips30p()
        NoError()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("1;4;1800;1;4;1800::800", gg.TYPE_DWORD, false,
        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000, nil, nil, nil, 1800, 1800)
        gg.editAll("1000000", gg.TYPE_DWORD)
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        NoError()
        noselect()
    end
    function Start3()
        menu1 = gg.choice({
            '1.   🐉  lv 10  🐉', '2.   🐉  lv 20  🐉',
            '3.   🐉  lv 25  🐉', '4.   🐉  lv 30  🐉',
            '5.   🐉  lv 70  🐉', '6.    🐉  All level  🐉',
            '↩️ Return '
        }, Last, 'Hack lv ')
        if menu1 == 1 then code1() end
        if menu1 == 2 then code2() end
        if menu1 == 3 then code3() end
        if menu1 == 4 then code4() end
        if menu1 == 5 then code5() end
        if menu1 == 6 then code6() end
        if menu1 == 7 then START() end
        if menu1 == nil then noselect() end
    end
    function code1()
        -- hack lv
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;36~38;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999)
        gg.refineNumber("1000~4300;36~38::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("36~38", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1996", gg.TYPE_DWORD)
        -- hack rank + star
        gg.loadResults(getall)
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD)
        -- hack skill
        gg.loadResults(getall)
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function code2()
        -- hack lv
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;76~77;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999)
        gg.refineNumber("1000~4300;76~77::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("76~77", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1996", gg.TYPE_DWORD)
        -- hack rank + star
        gg.loadResults(getall)
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD)
        -- hack skill
        gg.loadResults(getall)
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function code3()
        -- hack lv
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;96~97;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999)
        gg.refineNumber("1000~4300;96~97::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("96~97", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1996", gg.TYPE_DWORD)
        -- hack rank + star
        gg.loadResults(getall)
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD)
        -- hack skill
        gg.loadResults(getall)
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function code4()
        -- hack lv
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;116;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999)
        gg.refineNumber("1000~4300;116::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("116", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1996", gg.TYPE_DWORD)
        -- hack rank + star
        gg.loadResults(getall)
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD)
        -- hack skill
        gg.loadResults(getall)
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function code5()
        -- hack lv
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;276;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999)
        gg.refineNumber("1000~4300;276::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("276", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1996", gg.TYPE_DWORD)
        -- hack rank + star
        gg.loadResults(getall)
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD)
        -- hack skill
        gg.loadResults(getall)
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function code6()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(
            "60000~100 000 000;1000~3100;1~20 000 000Q;0F;0~276::17",
            gg.TYPE_DWORD)
        gg.refineNumber("0F;0~276::5", gg.TYPE_DWORD)
        gg.refineNumber("0~276", gg.TYPE_DWORD)
        gg.getResults(100000)
        gg.editAll(1996, gg.TYPE_DWORD) -- Hack levels 2000
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(
            "1000~4300;0;1996;0~400;0~400;0~400;0~400;-1;0~4;0~10000;0~5::75",
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        getall = gg.getResults(99999) -- lưu giá trị search
        gg.refineNumber("1996;-1;0~4;0~10000;0~5::60", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("-1;0~4;0~10000;0~5::15", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber("0~4;0~10000;0~5::10", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll("1;500;5", gg.TYPE_DWORD) -- hack ranks 500 kills và 5 sao
        gg.loadResults(getall) -- load giá trị vừa lưu
        gg.refineNumber("1996;0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD,
                        false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("0~400;0~400;0~400;0~400::30", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1)
        gg.getResults(99999)
        gg.editAll("310;301;307;255", gg.TYPE_DWORD) -- hack 4 skills đặc biệt
        NoError()
        noselect()
    end
    function Start4()
        menu2 = gg.choice({
            '1.   ⏳   Skip Battle  ⏳', '2.   🍎  Food 30s speed 0s 🍎',
            '3.   🌕  Terra habitat level 1 collect +1 gold 🌕',
            '4.   🎁  Go coins speed (store it in a chest) 🎁',
            '↩️ Return '
        }, nil, 'Menu support Heroic Race : ')
        if menu2 == 1 then NoCoolDown() end
        if menu2 == 2 then SpeedFood() end
        if menu2 == 3 then terraHabitat1Gold() end
        if menu2 == 4 then goCoinsSpeed() end
        if menu2 == 5 then START() end
        if menu2 == nil then noselect() end
    end
    function NoCoolDown()
        mursidy = gg.multiChoice({
            '1. 🕛  No Error  🕛', '2. 🕛  skip All time  🕛',
            '3. 🕛  Skip 15min  🕛  ', '4. 🕛  Skip 30min  🕛  ',
            '5. 🕛  Skip 1h  🕛 ', '6. 🕛  Skip 1h20min  🕛',
            '7. 🕛  Skip 3h  🕛', '8. 🕛  Skip 6h40min  🕛',
            '9. 🕛  Skip 8h  🕛  ', '❌ CLOSE ❌'
        }, nil, '🖥️skip battle heroic and maze🖥️')

        if mursidy == nil then noselect()
        else
            if mursidy[1] == true then NoError1() end
            if mursidy[2] == true then skipAll() end
            if mursidy[3] == true then skip15p() end
            if mursidy[4] == true then skip30p() end
            if mursidy[5] == true then skip1h() end
            if mursidy[6] == true then skip1h20p() end
            if mursidy[7] == true then skip3h() end
            if mursidy[8] == true then skip6h40p() end
            if mursidy[9] == true then skip8h() end
            if mursidy[10] == true then START() end
        end
    end
   function NoError()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.searchNumber(":error", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10000)
        gg.editAll("0", gg.TYPE_BYTE)
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
    end
    function NoError1()
        gg.setRanges(gg.REGION_CODE_APP)
        gg.searchNumber("Q'error'", gg.TYPE_BYTE, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(100000)
        gg.editAll("0", gg.TYPE_BYTE)
        NoError()
        gg.clearResults()
    end
    function skipAll()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber("-2 000 000 000~-1 000 000 000;2;300~86400;0::13",
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("300~86400", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(10000)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
    end
    function skip15p()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("900", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip30p()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("1800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("1800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip1h()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("3600", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip1h20p()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("4800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("4800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip3h()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("10800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("10800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip6h40p()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("24000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("24000", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function skip8h()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("28800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber("28800", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        revert = gg.getResults(5000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
    end
    function SpeedFood()
        gg.setRanges(gg.REGION_C_ALLOC | gg.REGION_ANONYMOUS)
        gg.searchNumber("30;5~6;25;250", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.refineNumber("30", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(1000, nil, nil, nil, nil, nil, nil, nil, nil)
        gg.editAll("0", gg.TYPE_DWORD)
        NoError()
        noselect()
    end
    function terraHabitat1Gold()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.setVisible(false)
        gg.searchNumber('1;4;500::9', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        gg.refineNumber('500', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.setVisible(false)
        gg.getResults(5000)
        gg.editAll('1', gg.TYPE_DWORD)
        gg.setVisible(false)
        NoError()
        gg.clearResults()
        gg.alert('You must enter the ancient map to activate')
        noselect()
    end
    function goCoinsSpeed()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('17179869185Q;4294967300Q;1;100~2147483647::21',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.getResults(50000)
        gg.editAll('0', gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function Start5()
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber(
            '-300~300F;1 065 353 216;1 065 353 216;2~1000;10~10000::17',
            gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 065 353 216', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('-300~300F;1 073 741 824;1 073 741 824::9',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 073 741 824', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('-300~300F;1 077 936 128;1 077 936 128::9',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 077 936 128', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('-300~300F;1 082 130 432;1 082 130 432::9',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 082 130 432', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('-300~300F;1 084 227 584;1 084 227 584::9',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 084 227 584', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        gg.clearResults()
        gg.setRanges(gg.REGION_C_ALLOC)
        gg.searchNumber('-300~300F;1 086 324 736;1 086 324 736::9',
                        gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1)
        gg.refineNumber('1 086 324 736', gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0,
                        -1)
        gg.getResults(99999)
        gg.editAll('0', gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        noselect()
    end
    function Start6()
        data = gg.prompt({
            "Current dragon (Code in ditlep.com/code):",
            "Dragon you want (Code in ditlep.com/code):"
        }, {"1011", "3011"}, {"number", "number"})
        if data == nil then noselect() end
        if not data then return end
        gg.refineNumber("999998", gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.searchNumber(data[1] .. ";4~276;-1::75", gg.TYPE_DWORD, false,
                        gg.SIGN_EQUAL, 0, -1, 0)
        gg.refineNumber(data[1], gg.TYPE_DWORD, false, gg.SIGN_EQUAL, 0, -1, 0)
        gg.getResults(99999)
        gg.editAll(data[2], gg.TYPE_DWORD)
        noselect()
        -- end
    end
    function Start7()
        menu3 = gg.choice({
            '1.   🔥  God Dragon Mode 🔥',
            '2.   🔥  One Hit Dragon ' .. OneHits .. '  🔥 ( Fixed )',
            '3.   🔥  No dame Dragon ' .. NoDamages .. '  🔥 ( Fixed )',
            '4.   🔥  Big Dragon ' .. BigDC .. '  🔥 ( Fixed )',
            '5.   🔥  Small Dragon ' .. SmallDC .. '  🔥 ( Fixed )', '↩️ Return '
        }, Last, 'Hack lv ')
        if menu3 == 1 then GodMode() end
        if menu3 == 2 then OneHit() end
        if menu3 == 3 then NoDamage() end
        if menu3 == 4 then BigDcC() end
        if menu3 == 5 then SmallDcC() end
        if menu3 == 6 then START() end
        if menu3 == nil then noselect() end
    end
    function BigDcC()
        if BigDC == "🔴 OFF" then
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2BDA0
            setvalue(so + py, 16, 2)
            py = 0xE2BDA4
            setvalue(so + py, 16, 2)
            BigDC = "🔵 ON"
            SmallDC = "🔴 OFF"
        else
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2BDA0
            setvalue(so + py, 16, 1.10000002384)
            py = 0xE2BDA4
            setvalue(so + py, 16, 1.10000002384)
            BigDC = "🔴 OFF"
        end
    end
    function SmallDcC()
        if SmallDC == "🔴 OFF" then
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2BDA0
            setvalue(so + py, 16, 0.5)
            py = 0xE2BDA4
            setvalue(so + py, 16, 0.5)
            SmallDC = "🔵 ON"
            BigDC = "🔴 OFF"
        else
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2BDA0
            setvalue(so + py, 16, 1.10000002384)
            py = 0xE2BDA4
            setvalue(so + py, 16, 1.10000002384)
            SmallDC = "🔴 OFF"
        end
    end
    function OneHit()
        if OneHits == "🔴 OFF" then
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2ACC0
            setvalue(so + py, 16, 9999999)
            OneHits = "🔵 ON"
            NoDamages = "🔴 OFF"
        else
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2ACC0
            setvalue(so + py, 16, 1.10000002384)
            OneHits = "🔴 OFF"
        end
    end
    function NoDamage()
        if NoDamages == "🔴 OFF" then
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2ACC0
            setvalue(so + py, 16, -9999999)
            NoDamages = "🔵 ON"
            OneHits = "🔴 OFF"
        else
            so = gg.getRangesList("libDragonCity.so")[1].start
            py = 0xE2ACC0
            setvalue(so + py, 16, 1.10000002384)
            NoDamages = "🔴 OFF"
        end
    end
    function GodMode()
        gg.setRanges(gg.REGION_C_ALLOC)
        attack = gg.prompt({
            'Enter Dragon Current Health',
            'How Much Health Do You Want Your Dragon To Have?'
        }, {12400, 99999})
        if attack == nil then noselect() end
        if not attack then return end
        gg.searchNumber(attack[1], gg.TYPE_DWORD)
        gg.getResults(9999)
        gg.editAll(attack[2], gg.TYPE_DWORD)
        NoError()
        gg.clearResults()
        gg.alert("God Mode Actived")
    end
    function noselect()
        gg.toast('<---❤-🆃🆁🆄🅽🅶2⃣🅺3⃣🅳🆉-❤--->')
    end
    function ends()
        noselect()
        os.exit()
    end
    if menuk == 1 then START() end
end
