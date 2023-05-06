select player_name, games,
cast(round(hits::numeric/at_bats, 3) as text) as batting_average
from yankees
where at_bats >= 100
order by batting_average desc
