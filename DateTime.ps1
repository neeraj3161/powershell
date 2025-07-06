echo "learn all methods on datetime"

$now  = Get-Date

# custom date

$custom = Get-Date "2025-07-07"

# print date with default time of 00:00:00
$now.Date

# kind print time zone

echo $now.Kind

# some other properties and methods

# | **Property**   | **Example**                      | **Usage**               |
# | -------------- | -------------------------------- | ----------------------- |
# | `.Date`        | `2025-07-06 00:00:00`            | Date only (no time)     |
# | `.Day`         | `6`                              | Day of the month        |
# | `.DayOfWeek`   | `Sunday`                         | Name of day             |
# | `.DayOfYear`   | `187`                            | 1 to 365/366            |
# | `.Month`       | `7`                              | 1 to 12                 |
# | `.Year`        | `2025`                           | Four-digit year         |
# | `.Hour`        | `14`                             | 0 to 23                 |
# | `.Minute`      | `30`                             | 0 to 59                 |
# | `.Second`      | `15`                             | 0 to 59                 |
# | `.Millisecond` | `123`                            | 0 to 999                |
# | `.Ticks`       | Long integer                     | Internal representation |
# | `.TimeOfDay`   | `14:30:00`                       | Time only               |
# | `.Kind`        | `Local`, `UTC`, or `Unspecified` | Time zone context       |


# | **Method**               | **Example**                                        |
# | ------------------------ | -------------------------------------------------- |
# | `AddDays(1)`             | `$now.AddDays(1)` → tomorrow                       |
# | `AddHours(-3)`           | `$now.AddHours(-3)` → 3 hours ago                  |
# | `AddMinutes(10)`         | `$now.AddMinutes(10)`                              |
# | `AddSeconds(30)`         | `$now.AddSeconds(30)`                              |
# | `AddMilliseconds(500)`   | `$now.AddMilliseconds(500)`                        |
# | `AddMonths(1)`           | `$now.AddMonths(1)`                                |
# | `AddYears(-1)`           | `$now.AddYears(-1)`                                |
# | `ToShortDateString()`    | `$now.ToShortDateString()` → `7/6/2025`            |
# | `ToShortTimeString()`    | `$now.ToShortTimeString()` → `2:30 PM`             |
# | `ToLongDateString()`     | `$now.ToLongDateString()` → `Sunday, July 6, 2025` |
# | `ToLongTimeString()`     | `$now.ToLongTimeString()` → `2:30:15 PM`           |
# | `ToString("yyyy-MM-dd")` | Format as string (ISO format)                      |
# | `CompareTo($date2)`      | Compare two dates                                  |
# | `Equals($date2)`         | Checks if dates are equal                          |
# | `IsDaylightSavingTime()` | Returns `$true` or `$false`                        |
# | `ToUniversalTime()`      | Convert local → UTC                                |
# | `ToLocalTime()`          | Convert UTC → local                                |

