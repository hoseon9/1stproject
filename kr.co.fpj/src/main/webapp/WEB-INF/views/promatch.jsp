<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link
	href="${pageContext.request.contextPath}/resources/css/finalcss.css"
	rel="stylesheet" type="text/css" />
<link href='https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.css' rel='stylesheet' />
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/locales-all.min.js"></script>  
<script src="https://cdn.jsdelivr.net/npm/fullcalendar@5.10.1/main.min.js"></script>  
<script src="https://cdn.jsdelivr.net/combine/npm/fullcalendar@5.10.1/main.min.css,npm/fullcalendar@5.10.1/main.min.css"></script>  

<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body {
    margin: 40px 10px;
    padding: 0;
    font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
    font-size: 14px;
  }

  #calendar {
    max-width: 1100px;
    margin: 0 auto;
  }
</style>
</head>
<body>
<jsp:include page="header.jsp"></jsp:include>
	<div style = margin-bottom:10px;></div>
   <div id='calendar'></div>
<jsp:include page="footer.jsp"></jsp:include>
   <script>

  document.addEventListener('DOMContentLoaded', function() {
    var calendarEl = document.getElementById('calendar');
    var today = new Date();
    var year = today.getFullYear();
    var month = ('0' + (today.getMonth() + 1)).slice(-2);
    var day = ('0' + today.getDate()).slice(-2);
    var dateString = year + '-' + month  + '-' + day;
    var calendar = new FullCalendar.Calendar(calendarEl, {
      headerToolbar: {
        left: 'prev,next today',
        center: 'title',
        right: 'dayGridMonth,timeGridWeek,timeGridDay,listMonth'
      },
      initialDate: dateString,
      navLinks: true, // can click day/week names to navigate views
      businessHours: true, // display business hours
      editable: true,
      selectable: true,
      events: [
        {
          title: 'DRX VS LSB',
          start: '2022-01-12T17:00:00',
          constraint: 'businessHours'
        },
        {
            title: 'T1 VS KDF',
            start: '2022-01-12T20:00:00',
            constraint: 'businessHours'
          },
          {
              title: 'HLE VS NS',
              start: '2022-01-13T17:00:00',
              constraint: 'businessHours'
            },
            {
                title: 'KT VS DK',
                start: '2022-01-13T20:00:00',
                constraint: 'businessHours'
              },
              {
                  title: 'GEN VS DRX',
                  start: '2022-01-14T17:00:00',
                  constraint: 'businessHours'
                },
                {
                    title: 'BRO VS T1',
                    start: '2022-01-14T20:00:00',
                    constraint: 'businessHours'
                  },
                  {
                      title: 'NS VS LSB',
                      start: '2022-01-15T17:00:00',
                      constraint: 'businessHours'
                    },
                    {
                        title: 'KDF VS KT',
                        start: '2022-01-15T17:00:00',
                        constraint: 'businessHours'
                      },
                      {
                          title: 'HLE VS BRO',
                          start: '2022-01-16T17:00:00',
                          constraint: 'businessHours'
                        },
                        {
                            title: 'DK VS GEN',
                            start: '2022-01-16T20:00:00',
                            constraint: 'businessHours'
                          },
                          {
                              title: 'NS VS DK',
                              start: '2022-01-19T17:00:00',
                              constraint: 'businessHours'
                            },
                            {
                                title: 'KT VS HLE',
                                start: '2022-01-19T20:00:00',
                                constraint: 'businessHours'
                              },
                              {
                                  title: 'DRX VS T1',
                                  start: '2022-01-20T17:00:00',
                                  constraint: 'businessHours'
                                },
                                {
                                    title: 'BRO VS GEN',
                                    start: '2022-01-20T20:00:00',
                                    constraint: 'businessHours'
                                  },
                                  {
                                      title: 'LSB VS KDF',
                                      start: '2022-01-21T17:00:00',
                                      constraint: 'businessHours'
                                    },
                                    {
                                        title: 'KT VS NS',
                                        start: '2022-01-21T20:00:00',
                                        constraint: 'businessHours'
                                      },
                                      {
                                          title: 'DK VS BRO',
                                          start: '2022-01-22T17:00:00',
                                          constraint: 'businessHours'
                                        },
                                        {
                                            title: 'GEN VS HLE',
                                            start: '2022-01-22T20:00:00',
                                            constraint: 'businessHours'
                                          },
                                          {
                                              title: 'LSB VS T1',
                                              start: '2022-01-23T17:00:00',
                                              constraint: 'businessHours'
                                            },
                                            {
                                                title: 'KDF VS DRX',
                                                start: '2022-01-23T20:00:00',
                                                constraint: 'businessHours'
                                              },
                                              {
                                                  title: 'GEN VS KDF',
                                                  start: '2022-01-26T17:00:00',
                                                  constraint: 'businessHours'
                                                },
                                                {
                                                    title: 'DRX VS BRO',
                                                    start: '2022-01-26T20:00:00',
                                                    constraint: 'businessHours'
                                                  },
                                                  {
                                                      title: 'KT VS LSB',
                                                      start: '2022-01-27T17:00:00',
                                                      constraint: 'businessHours'
                                                    },
                                                    {
                                                        title: 'T1 VS NS',
                                                        start: '2022-01-27T20:00:00',
                                                        constraint: 'businessHours'
                                                      },
                                                      {
                                                          title: 'HLE VS DK',
                                                          start: '2022-01-28T17:00:00',
                                                          constraint: 'businessHours'
                                                        },
                                                        {
                                                            title: 'BRO VS KDF',
                                                            start: '2022-01-28T20:00:00',
                                                            constraint: 'businessHours'
                                                          },
                                                          {
                                                              title: 'GEN VS KT',
                                                              start: '2022-01-29T17:00:00',
                                                              constraint: 'businessHours'
                                                            },
                                                            {
                                                                title: 'NS VS DRX',
                                                                start: '2022-01-29T20:00:00',
                                                                constraint: 'businessHours'
                                                              },
                                                              {
                                                                  title: 'DK VS T1',
                                                                  start: '2022-01-30T17:00:00',
                                                                  constraint: 'businessHours'
                                                                },
                                                                {
                                                                    title: 'HLE VS LSB',
                                                                    start: '2022-01-30T20:00:00',
                                                                    constraint: 'businessHours'
                                                                  },
                                                                  {
                                                                      title: 'T1 VS HLE',
                                                                      start: '2022-02-09T17:00:00',
                                                                      constraint: 'businessHours'
                                                                    },
                                                                    {
                                                                        title: 'DRX VS KT',
                                                                        start: '2022-02-09T20:00:00',
                                                                        constraint: 'businessHours'
                                                                      },
                                                                      {
                                                                          title: 'DK VS KDF',
                                                                          start: '2022-02-10T17:00:00',
                                                                          constraint: 'businessHours'
                                                                        },
                                                                        {
                                                                            title: 'LSB VS GEN',
                                                                            start: '2022-02-10T20:00:00',
                                                                            constraint: 'businessHours'
                                                                          },
                                                                          {
                                                                              title: 'NS VS BRO',
                                                                              start: '2022-02-11T17:00:00',
                                                                              constraint: 'businessHours'
                                                                            },{
                                                                                title: 'DRX VS HLE',
                                                                                start: '2022-02-11T20:00:00',
                                                                                constraint: 'businessHours'
                                                                              },
                                                                              {
                                                                                  title: 'T1 VS GEN',
                                                                                  start: '2022-02-12T17:00:00',
                                                                                  constraint: 'businessHours'
                                                                                },
                                                                                {
                                                                                    title: 'LSB VS DK',
                                                                                    start: '2022-02-12T20:00:00',
                                                                                    constraint: 'businessHours'
                                                                                  },
                                                                                  {
                                                                                      title: 'KDF VS NS',
                                                                                      start: '2022-02-13T17:00:00',
                                                                                      constraint: 'businessHours'
                                                                                    },
                                                                                    {
                                                                                        title: 'DRX VS LSB',
                                                                                        start: '2022-02-13T20:00:00',
                                                                                        constraint: 'businessHours'
                                                                                      },
                                                                                      {
                                                                                          title: 'LSB VS BRO',
                                                                                          start: '2022-02-16T17:00:00',
                                                                                          constraint: 'businessHours'
                                                                                        },
                                                                                        {
                                                                                            title: 'NS VS GEN',
                                                                                            start: '2022-02-16T20:00:00',
                                                                                            constraint: 'businessHours'
                                                                                          },
                                                                                          {
                                                                                              title: 'HLE VS KDF',
                                                                                              start: '2022-02-17T17:00:00',
                                                                                              constraint: 'businessHours'
                                                                                            },
                                                                                            {
                                                                                                title: 'DK VS DRX',
                                                                                                start: '2022-02-17T20:00:00',
                                                                                                constraint: 'businessHours'
                                                                                              },
                                                                                              {
                                                                                                  title: 'KT VS T1',
                                                                                                  start: '2022-02-18T17:00:00',
                                                                                                  constraint: 'businessHours'
                                                                                                },
                                                                                                {
                                                                                                    title: 'GEN VS LSB',
                                                                                                    start: '2022-02-18T20:00:00',
                                                                                                    constraint: 'businessHours'
                                                                                                  },
                                                                                                  {
                                                                                                      title: 'HLE VS DRX',
                                                                                                      start: '2022-02-19T17:00:00',
                                                                                                      constraint: 'businessHours'
                                                                                                    },
                                                                                                    {
                                                                                                        title: 'KDF VS BRO',
                                                                                                        start: '2022-02-19T20:00:00',
                                                                                                        constraint: 'businessHours'
                                                                                                      },
                                                                                                      {
                                                                                                          title: 'DK VS KT',
                                                                                                          start: '2022-02-20T17:00:00',
                                                                                                          constraint: 'businessHours'
                                                                                                        },
                                                                                                        {
                                                                                                            title: 'NS VS T1',
                                                                                                            start: '2022-02-20T20:00:00',
                                                                                                            constraint: 'businessHours'
                                                                                                          },
                                                                                                          {
                                                                                                              title: 'KT VS KDF',
                                                                                                              start: '2022-02-23T17:00:00',
                                                                                                              constraint: 'businessHours'
                                                                                                            },
                                                                                                            {
                                                                                                                title: 'T1 VS DK',
                                                                                                                start: '2022-02-23T20:00:00',
                                                                                                                constraint: 'businessHours'
                                                                                                              },
                                                                                                              {
                                                                                                                  title: 'BRO VS DRX',
                                                                                                                  start: '2022-02-24T17:00:00',
                                                                                                                  constraint: 'businessHours'
                                                                                                                },
                                                                                                                {
                                                                                                                    title: 'LSB VS HLE',
                                                                                                                    start: '2022-02-24T20:00:00',
                                                                                                                    constraint: 'businessHours'
                                                                                                                  },
                                                                                                                  {
                                                                                                                      title: 'GEN VS NS',
                                                                                                                      start: '2022-02-25T17:00:00',
                                                                                                                      constraint: 'businessHours'
                                                                                                                    },
                                                                                                                    {
                                                                                                                        title: 'KDF VS DK',
                                                                                                                        start: '2022-02-25T20:00:00',
                                                                                                                        constraint: 'businessHours'
                                                                                                                      },
                                                                                                                      {
                                                                                                                          title: 'KT VS BRO',
                                                                                                                          start: '2022-02-26T17:00:00',
                                                                                                                          constraint: 'businessHours'
                                                                                                                        },
                                                                                                                        {
                                                                                                                            title: 'HLE VS T1',
                                                                                                                            start: '2022-02-26T20:00:00',
                                                                                                                            constraint: 'businessHours'
                                                                                                                          },
                                                                                                                          {
                                                                                                                              title: 'DRX VS GEN',
                                                                                                                              start: '2022-02-27T17:00:00',
                                                                                                                              constraint: 'businessHours'
                                                                                                                            },
                                                                                                                            {
                                                                                                                                title: 'LSB VS NS',
                                                                                                                                start: '2022-02-27T20:00:00',
                                                                                                                                constraint: 'businessHours'
                                                                                                                              },
                                                                                                                              {
                                                                                                                                  title: 'BRO VS HLE',
                                                                                                                                  start: '2022-03-02T17:00:00',
                                                                                                                                  constraint: 'businessHours'
                                                                                                                                },
                                                                                                                                {
                                                                                                                                    title: 'DK VS LSB',
                                                                                                                                    start: '2022-03-02T20:00:00',
                                                                                                                                    constraint: 'businessHours'
                                                                                                                                  },
                                                                                                                                  {
                                                                                                                                      title: 'GEN VS T1',
                                                                                                                                      start: '2022-03-03T17:00:00',
                                                                                                                                      constraint: 'businessHours'
                                                                                                                                    },
                                                                                                                                    {
                                                                                                                                        title: 'NS VS KDF',
                                                                                                                                        start: '2022-03-03T20:00:00',
                                                                                                                                        constraint: 'businessHours'
                                                                                                                                      },
                                                                                                                                      {
                                                                                                                                          title: 'KT VS DRX',
                                                                                                                                          start: '2022-03-04T17:00:00',
                                                                                                                                          constraint: 'businessHours'
                                                                                                                                        },
                                                                                                                                        {
                                                                                                                                            title: 'DK VS HLE',
                                                                                                                                            start: '2022-03-04T20:00:00',
                                                                                                                                            constraint: 'businessHours'
                                                                                                                                          },
                                                                                                                                          {
                                                                                                                                              title: 'KDF VS GEN',
                                                                                                                                              start: '2022-03-05T17:00:00',
                                                                                                                                              constraint: 'businessHours'
                                                                                                                                            },
                                                                                                                                            {
                                                                                                                                                title: 'BRO VS NS',
                                                                                                                                                start: '2022-03-05T20:00:00',
                                                                                                                                                constraint: 'businessHours'
                                                                                                                                              },
      ]
    });

    calendar.render();
  });

</script>
</body>
</html>