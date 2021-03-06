//     tSF Briefing
// Do not modify this part
#define BRIEFING		_briefing = [];
#define TOPIC(NAME) 	_briefing pushBack ["Diary", [ NAME,
#define END			]];
#define ADD_TOPICS	for "_i" from (count _briefing) to 0 step -1 do {player createDiaryRecord (_briefing select _i);};
//
//
// Briefing goes here

BRIEFING

TOPIC("I. Обстановка:")
"1988 год. Холодная война приобрела горячую точку в районе группы островов с, внезапно обнаруженными, крупнешим месторождением урановой руды. Пока дипломаты наносят визиты - политики без лишней огласки  пытаются набить в рукав побольше козырей. Камнем преткновения стал единственный аэродром, способный принимать тяжёлые транспортные самолёты. Взвод корпуса морской пехоты армии США нанёс удар с воздуха по взводу ДШБ ВДВ СССР в районе аэропорта и захватил северную часть острова. Разрозненные силы десантников отошли к укреплениям и похоронив товарищей стали готовится к обороне. Ввиду нехватки времени подтянуть серьёзные силы, взвод ближайшей к месту группы бойцов специализированного подразделения ВМФ СССР с техникой по узкому воздушному корридору был переправлен вертолётами МИ-6 на южную часть острова. "
END

TOPIC("А. Враждебные силы:")
"1.2 х взвод корпуса морской пехоты США при поддержке средне-тяжёлой техники<br />2.1 х взвод охраны аэродрома при поддержке тяжёлых пулемётов, артиллерии и лёгкой техники.<br /><br />"
END

TOPIC("Б. Дружественные силы:")
"1. 1 х взвод сил специального назначения штурмовой бригады ВМФ СССР"
END

TOPIC("II. Задание:")
"1. Не допустить проникновения противника  в город  Saint Pierre с северного направления.<br />2. Подготовить контратаку и захватить аэродром в Saint Phillippe<br /><br />"
END

TOPIC("III. Выполнение:")
"По плану командира."
END

TOPIC("IV. Поддержка:")
"1. 3 х БТР-80А<br />2. 1 х БМП2<br />3. 1 х МИ8 МТВ3 (в точке ФЭП)<br />4. 1 х Урал тент (в точке ФЭП)<br />5. 1 х УАЗ 469<br />6. 2 х РСЗО Град<br />7. 1 х миномётный расчёт<br />8. Остатки взвода ВДВ в районе укреплений"
END

TOPIC("V. Сигналы:")
"КомВзвода ДВ - 50МГц<br />Артподдержка ГСО 1'5 - 51Мгц<br /><br />КВ 1'1 - канал 1<br />КВ 1'2 - канал 2<br />КВ 1'3 - канал 3<br />КВ 1'4 - канал 4<br />КВ 1'7 экипаж БМП2 - канал 7<br /><br />"
END

TOPIC("VI. Замечания:")
"противник обладает средствами ПВО в зоне конфликта"
END

if ((serverCommandAvailable '#logout') || !(isMultiplayer) || isServer) then {
TOPIC("VII. Замечания для GSO:")
"- противник имеет возможность нападения только с северного направления<br />- противник проводит артподготовку укреплений СССР перед наступлением с помошью миномётов<br />"
END
};

ADD_TOPICS