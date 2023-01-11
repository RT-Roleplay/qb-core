local Translations = {
    error = {
        not_online = 'Speler niet online',
        wrong_format = 'Onjuist formaat',
        missing_args = 'Niet elk argument is ingevuld (x, y, z)',
        missing_args2 = 'Alle argumenten moeten worden ingevuld!',
        no_access = 'Geen toegang tot deze opdracht',
        company_too_poor = 'Je werkgever is failliet',
        item_not_exist = 'Artikel bestaat niet',
        too_heavy = 'Inventory is te vol',
        location_not_exist = 'Locatie bestaat niet',
        duplicate_license = 'Dubbele Rockstar License gevonden',
        no_valid_license  = 'Geen geldige  Rockstar License gevonden',
        not_whitelisted = 'Je staat niet op de whitelisted voor deze server',
        server_already_open = 'De server is al geopend',
        server_already_closed = 'De server is al gesloten',
        no_permission = 'U heeft geen rechten hiervoor..',
        no_waypoint = 'Geen waypoint ingesteld.',
        tp_error = 'Fout tijdens teleporteren.',
        connecting_database_error = 'Er is een databasefout opgetreden tijdens het verbinden met de server. (Staat de SQL-server aan?)',
        connecting_database_timeout = 'Verbinding met database time-out. (Staat de SQL-server aan?)',
    },
    success = {
        server_opened = 'De server is geopend',
        server_closed = 'De server is gesloten',
        teleported_waypoint = 'Geteleporteerd naar Waypoint.',
    },
    info = {
        received_paycheck = 'Je hebt je salaris ontvangen van $%{value}',
        job_info = 'baan: %{value} | Cijfer: %{value2} | Plicht: %{value3}',
        gang_info = 'Gang: %{value} | Cijfer: %{value2}',
        on_duty = 'Je hebt nu in dienst!',
        off_duty = 'Je bent nu uit dienst!',
        checking_ban = 'Hallo %s. We controleren of je bent verbannen.',
        join_server = 'Welkom %s bij {Server Name}.',
        checking_whitelisted = 'Hello %s. We are checking your allowance.',
        exploit_banned = 'Je bent verbannen wegens vals spelen. Check onze Discord voor meer informatie: %{discord}',
        exploit_dropped = 'Je bent geKicked voor Exploitation',
    },
    command = {
        tp = {
            help = 'TP To Player or Coords (Admin Only)',
            params = {
                x = { name = 'id/x', help = 'ID of player or X position'},
                y = { name = 'y', help = 'Y position'},
                z = { name = 'z', help = 'Z position'},
            },
        },
        tpm = { help = 'TP To Marker (Admin Only)' },
        togglepvp = { help = 'Toggle PVP on the server (Admin Only)' },
        addpermission = {
            help = 'Give Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        removepermission = {
            help = 'Remove Player Permissions (God Only)',
            params = {
                id = { name = 'id', help = 'ID of player' },
                permission = { name = 'permission', help = 'Permission level' },
            },
        },
        openserver = { help = 'Open the server for everyone (Admin Only)' },
        closeserver = {
            help = 'Close the server for people without permissions (Admin Only)',
            params = {
                reason = { name = 'reason', help = 'Reason for closing (optional)' },
            },
        },
        car = {
            help = 'Spawn Vehicle (Admin Only)',
            params = {
                model = { name = 'model', help = 'Model name of the vehicle' },
            },
        },
        dv = { help = 'Delete Vehicle (Admin Only)' },
        givemoney = {
            help = 'Give A Player Money (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        setmoney = {
            help = 'Set Players Money Amount (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                moneytype = { name = 'moneytype', help = 'Type of money (cash, bank, crypto)' },
                amount = { name = 'amount', help = 'Amount of money' },
            },
        },
        job = { help = 'Check Your Job' },
        setjob = {
            help = 'Set A Players Job (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                job = { name = 'job', help = 'Job name' },
                grade = { name = 'grade', help = 'Job grade' },
            },
        },
        gang = { help = 'Check Your Gang' },
        setgang = {
            help = 'Set A Players Gang (Admin Only)',
            params = {
                id = { name = 'id', help = 'Player ID' },
                gang = { name = 'gang', help = 'Gang name' },
                grade = { name = 'grade', help = 'Gang grade' },
            },
        },
        ooc = { help = 'OOC Chat Message' },
        me = {
            help = 'Show local message',
            params = {
                message = { name = 'message', help = 'Message to send' }
            },
        },
    },
}

if GetConvar('qb_locale', 'en') == 'nl' then
    Lang = Locale:new({
        phrases = Translations,
        warnOnMissing = true,
        fallbackLang = Lang,
    })
end
