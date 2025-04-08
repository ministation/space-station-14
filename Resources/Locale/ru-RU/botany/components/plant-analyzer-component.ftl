plant-analyzer-component-no-seed = Растений не найдено

plant-analyzer-component-health = Здоровье:
plant-analyzer-component-age = Возраст:
plant-analyzer-component-water = Вода:
plant-analyzer-component-nutrition = Питательные вещества:
plant-analyzer-component-toxins = Токсины:
plant-analyzer-component-pests = Пестициды:
plant-analyzer-component-weeds = Сорняки:

plant-analyzer-component-alive = [color=green]ЖИВОЕ[/color]
plant-analyzer-component-dead = [color=red]МЕРТВОЕ[/color]
plant-analyzer-component-unviable = [color=red]БЕЗЖИЗНЕННЫЙ[/color]
plant-analyzer-component-mutating = [color=#00ff5f]МУТИРУЮЩИЙ[/color]
plant-analyzer-component-kudzu = [color=red]КУДЗУ[/color]

plant-analyzer-soil = Здесь [color=white]{$chemicals}[/color] в {$holder} которые {$count ->
    [one] 
    *[other] 
} еще не были впитаны.
plant-analyzer-soil-empty = Здесь пусто {$holder}.

plant-analyzer-component-environemt = Это [color=green]{$seedName}[/color] требует атмосферу с давлением [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color], температурой [color=lightsalmon]{$temp}°K ± {$tempTolerance}°K[/color] и уровнем освещенности [color=white]{$lightLevel} ± {$lightTolerance}[/color].

plant-analyzer-component-environemt-void = Это [color=green]{$seedName}[/color] должно быть выращено [bolditalic]в вакууме космоса[/bolditalic] при уровне освещенности [color=white]{$lightLevel} ± {$lightTolerance}[/color].

plant-analyzer-component-environemt-gas = Это [color=green]{$seedName}[/color] требует атмосферу, содержащую [bold]{$gases}[/bold], с давлением [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color], температурой [color=lightsalmon]{$temp}°K ± {$tempTolerance}°K[/color] и уровнем освещенности [color=white]{$lightLevel} ± {$lightTolerance}[/color].

plant-analyzer-produce-plural = {$thing}

plant-analyzer-output = {$yield ->
    [0]{$gasCount ->
        [0]Единственное, что, похоже, оно делает — это потребляет воду и питательные вещества.
        *[other]Единственное, что, похоже, оно делает — это превращает воду и питательные вещества в [bold]{$gases}[/bold].
    }
    *[other]Оно имеет [color=lightgreen]{$yield} {$potency}[/color]{$seedless ->
        [true]{" "}но [color=red]без семян[/color]
        *[false]{$nothing}
    }{" "}{$yield ->
        [one]цветок
        *[other]цветков
    }{" "}которые{$gasCount ->
        [0]{$nothing}
        *[other]{$yield ->
            [one]{" "}выделяет
            *[other]{" "}выделяют
        }{" "}[bold]{$gases}[/bold] и
    }{" "}превратятся в{$yield ->
        [one]{" "}{INDEFINITE($firstProduce)} [color=#a4885c]{$produce}[/color]
        *[other]{" "}[color=#a4885c]{$producePlural}[/color]
    }.{$chemCount ->
        [0]{$nothing}
        *[other]{" "}В его стебле есть следы [color=white]{$chemicals}[/color].
    }
}

plant-analyzer-potency-tiny = крошечный
plant-analyzer-potency-small = маленький
plant-analyzer-potency-below-average = ниже среднего
plant-analyzer-potency-average = среднего размера
plant-analyzer-potency-above-average = выше среднего
plant-analyzer-potency-large = довольно большой
plant-analyzer-potency-huge = огромный
plant-analyzer-potency-gigantic = гигантский
plant-analyzer-potency-ludicrous = абсурдно большой
plant-analyzer-potency-immeasurable = неизмеримо большой

plant-analyzer-print = Печать
plant-analyzer-printout-missing = Н/Д
plant-analyzer-printout = [color=#9FED58][head=2]Отчет анализатора растений[/head][/color]{$nl
    }──────────────────────────────{$nl
    }[bullet/] Вид: {$seedName}{$nl
    }{$indent}[bullet/] Жизнеспособность: {$viable ->
        [no][color=red]Нет[/color]
        [yes][color=green]Да[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }{$indent}[bullet/] Выносливость: {$endurance}{$nl
    }{$indent}[bullet/] Продолжительность жизни: {$lifespan}{$nl
    }{$indent}[bullet/] Продукция: [color=#a4885c]{$produce}[/color]{$nl
    }{$indent}[bullet/] Кудзу: {$kudzu ->
        [no][color=green]Нет[/color]
        [yes][color=red]Да[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }[bullet/] Профиль роста:{$nl
    }{$indent}[bullet/] Вода: [color=cyan]{$water}[/color]{$nl
    }{$indent}[bullet/] Питательные вещества: [color=orange]{$nutrients}[/color]{$nl
    }{$indent}[bullet/] Токсины: [color=yellowgreen]{$toxins}[/color]{$nl
    }{$indent}[bullet/] Пестициды: [color=magenta]{$pests}[/color]{$nl
    }{$indent}[bullet/] Сорняки: [color=red]{$weeds}[/color]{$nl
    }[bullet/] Экологический профиль:{$nl
    }{$indent}[bullet/] Состав: [bold]{$gasesIn}[/bold]{$nl
    }{$indent}[bullet/] Давление: [color=lightblue]{$kpa}kPa ± {$kpaTolerance}kPa[/color]{$nl
    }{$indent}[bullet/] Температура: [color=lightsalmon]{$temp}°K ± {$tempTolerance}°K[/color]{$nl
    }{$indent}[bullet/] Свет: [color=gray][bold]{$lightLevel} ± {$lightTolerance}[/bold][/color]{$nl
    }[bullet/] Цветы: {$yield ->
        [-1]{LOC("plant-analyzer-printout-missing")}
        [0][color=red]0[/color]
        *[other][color=lightgreen]{$yield} {$potency}[/color]
    }{$nl
    }[bullet/] Семена: {$seeds ->
        [no][color=red]Нет[/color]
        [yes][color=green]Да[/color]
        *[other]{LOC("plant-analyzer-printout-missing")}
    }{$nl
    }[bullet/] Химикаты: [color=gray][bold]{$chemicals}[/bold][/color]{$nl
    }[bullet/] Эмиссии: [bold]{$gasesOut}[/bold]
