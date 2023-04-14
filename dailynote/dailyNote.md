---
created: <% tp.file.creation_date() %>
tags:
  - dailyNote
  - y{{date:YYYY}}
---
# <% moment(tp.file.title,'YYYY-MM-DD').format("dddd, DD MMMM, YYYY") %>

```dataviewjs
dv.view("/_templates/dailyNoteNavigation")
```

---
## ✅ Tasks overdue
```tasks
not done
due before date(<% tp.date.now() %>)
```
---
## ✅Tasks due today
```tasks  
not done  
due <% tp.date.now() %> 
```
---
## 📅 Meetings
<% tp.file.include("[[eventsForToday]]") %>
## 👥Spoken To:
- 
---
## 📝 Notes
- <% tp.file.cursor() %>
---
## ✅Tasks due this week
```tasks  
not done  
due <% tp.date.now() %> friday
```
---
### Notes created today
```dataview
List FROM "" WHERE file.cday = date("<%tp.date.now('YYYY-MM-DD')%>") SORT file.ctime asc
```
---
### Notes last touched today
```dataview
List FROM "" WHERE file.mday = date("<%tp.date.now('YYYY-MM-DD')%>") SORT file.mtime asc
```
---
### Task finished today
```tasks
done <% tp.date.now() %>
```