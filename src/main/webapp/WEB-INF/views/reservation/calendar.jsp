<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/include/header.jsp" />

<html>

<head>
    <meta charset="utf-8">
    <link href="/css/calendar.css" rel="stylesheet">
    <script src="/js/calendar.js"></script>
    

        <script>
     
        </script>
        <style>
            body {
                margin: 40px 10px;
                padding: 0;
                font-family: Arial, Helvetica Neue, Helvetica, sans-serif;
                font-size: 14px;
            }

            #calendar {
                min-width: 500px;
                margin: 0 auto;
                
                
            }
        </style>
    </head>

<body class="my_calendar">

    <div id="calendar" class="fc fc-media-screen fc-direction-ltr fc-theme-standard">
        <div class="fc-header-toolbar fc-toolbar ">
            <div class="fc-toolbar-chunk">
                <h2 class="fc-toolbar-title" id="fc-dom-1">September 2020</h2>
            </div>
            <div class="fc-toolbar-chunk"></div>
            <div class="fc-toolbar-chunk"><button type="button" title="This month" aria-pressed="false" class="fc-today-button fc-button fc-button-primary">today</button>
                <div class="fc-button-group"><button type="button" title="Previous month" aria-pressed="false" class="fc-prev-button fc-button fc-button-primary"><span class="fc-icon fc-icon-chevron-left"></span></button><button type="button" title="Next month" aria-pressed="false" class="fc-next-button fc-button fc-button-primary"><span class="fc-icon fc-icon-chevron-right"></span></button></div>
            </div>
        </div>
        <div aria-labelledby="fc-dom-1" class="fc-view-harness fc-view-harness-active" style="height: 377.037px;">
            <div class="fc-daygrid fc-dayGridMonth-view fc-view">
                <table role="grid" class="fc-scrollgrid  fc-scrollgrid-liquid">
                    <thead role="rowgroup">
                        <tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-header ">
                            <th role="presentation">
                                <div class="fc-scroller-harness">
                                    <div class="fc-scroller" style="overflow: hidden;">
                                        <table role="presentation" class="fc-col-header " style="width: 523px;">
                                            <colgroup></colgroup>
                                            <thead role="presentation">
                                                <tr role="row">
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-일요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Sunday" class="fc-col-header-cell-cushion ">Sun</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-월요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Monday" class="fc-col-header-cell-cushion ">Mon</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-화요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Tuesday" class="fc-col-header-cell-cushion ">Tue</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-수요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Wednesday" class="fc-col-header-cell-cushion ">Wed</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-목요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Thursday" class="fc-col-header-cell-cushion ">Thu</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-금요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Friday" class="fc-col-header-cell-cushion ">Fri</a></div>
                                                    </th>
                                                    <th role="columnheader" class="fc-col-header-cell fc-day fc-day-일요일">
                                                        <div class="fc-scrollgrid-sync-inner"><a aria-label="Saturday" class="fc-col-header-cell-cushion ">Sat</a></div>
                                                    </th>
                                                </tr>
                                            </thead>
                                        </table>
                                    </div>
                                </div>
                            </th>
                        </tr>
                    </thead>
                    <tbody role="rowgroup">
                        <tr role="presentation" class="fc-scrollgrid-section fc-scrollgrid-section-body  fc-scrollgrid-section-liquid">
                            <td role="presentation">
                                <div class="fc-scroller-harness fc-scroller-harness-liquid">
                                    <div class="fc-scroller fc-scroller-liquid-absolute" style="overflow: hidden auto;">
                                        <div class="fc-daygrid-body fc-daygrid-body-balanced " style="width: 523px;">
                                            <table role="presentation" class="fc-scrollgrid-sync-table" style="width: 523px; height: 353px;">
                                                <colgroup></colgroup>
                                                <tbody role="presentation">
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past fc-day-other" data-date="2020-08-30" aria-labelledby="fc-dom-2">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner" id="test">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-2" class="fc-daygrid-day-number" aria-label="August 30, 2020">30</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past fc-day-other" data-date="2020-08-31" aria-labelledby="fc-dom-4">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-4" class="fc-daygrid-day-number" aria-label="August 31, 2020">31</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past" data-date="2020-09-01" aria-labelledby="fc-dom-6">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-6" class="fc-daygrid-day-number" aria-label="September 1, 2020">1</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">All Day Event</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past" data-date="2020-09-02" aria-labelledby="fc-dom-8">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-8" class="fc-daygrid-day-number" aria-label="September 2, 2020">2</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past" data-date="2020-09-03" aria-labelledby="fc-dom-10">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-10" class="fc-daygrid-day-number" aria-label="September 3, 2020">3</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past" data-date="2020-09-04" aria-labelledby="fc-dom-12">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-12" class="fc-daygrid-day-number" aria-label="September 4, 2020">4</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-05" aria-labelledby="fc-dom-14">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-14" class="fc-daygrid-day-number" aria-label="September 5, 2020">5</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-06" aria-labelledby="fc-dom-16">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-16" class="fc-daygrid-day-number" aria-label="September 6, 2020">6</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past" data-date="2020-09-07" aria-labelledby="fc-dom-18">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-18" class="fc-daygrid-day-number" aria-label="September 7, 2020">7</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="top: 0px; left: 0px; right: -74.7125px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-start fc-event-past">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">Long Event</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 18px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past" data-date="2020-09-08" aria-labelledby="fc-dom-20">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-20" class="fc-daygrid-day-number" aria-label="September 8, 2020">8</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 18px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past" data-date="2020-09-09" aria-labelledby="fc-dom-22">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-22" class="fc-daygrid-day-number" aria-label="September 9, 2020">9</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-end fc-event-past">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">Long Event</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">4p</div>
                                                                            <div class="fc-event-title">Repeating Event</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"><a class="fc-daygrid-more-link fc-more-link" title="Show 2 more events" aria-expanded="false" aria-controls="" tabindex="0">+2 more</a></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past" data-date="2020-09-10" aria-labelledby="fc-dom-24">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-24" class="fc-daygrid-day-number" aria-label="September 10, 2020">10</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past" id="test11" data-date="2020-09-11" aria-labelledby="fc-dom-26">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top" ><a id="fc-dom-26" class="fc-daygrid-day-number" onclick="text(this)" aria-label="September 11, 2020">11</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-start fc-event-past">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">Conference</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-12" aria-labelledby="fc-dom-28">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-28" class="fc-daygrid-day-number" aria-label="September 12, 2020">12</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-end fc-event-past">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">Conference</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">10:30a</div>
                                                                            <div class="fc-event-title">Meeting</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">12p</div>
                                                                            <div class="fc-event-title">Lunch</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">2:30p</div>
                                                                            <div class="fc-event-title">Meeting</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">5:30p</div>
                                                                            <div class="fc-event-title">Happy Hour</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-event-harness fc-daygrid-event-harness-abs" style="visibility: hidden; top: 0px; left: 0px; right: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">8p</div>
                                                                            <div class="fc-event-title">Dinner</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"><a class="fc-daygrid-more-link fc-more-link" title="Show 6 more events" aria-expanded="false" aria-controls="" tabindex="0">+6 more</a></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-13" aria-labelledby="fc-dom-30">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-30" class="fc-daygrid-day-number" aria-label="September 13, 2020">13</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">7a</div>
                                                                            <div class="fc-event-title">Birthday Party</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past" data-date="2020-09-14" aria-labelledby="fc-dom-32">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-32" class="fc-daygrid-day-number" aria-label="September 14, 2020">14</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past" data-date="2020-09-15" aria-labelledby="fc-dom-34">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-34" class="fc-daygrid-day-number" aria-label="September 15, 2020">15</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past" data-date="2020-09-16" aria-labelledby="fc-dom-36">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-36" class="fc-daygrid-day-number" aria-label="September 16, 2020">16</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-dot-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past">
                                                                            <div class="fc-daygrid-event-dot"></div>
                                                                            <div class="fc-event-time">4p</div>
                                                                            <div class="fc-event-title">Repeating Event</div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past" data-date="2020-09-17" aria-labelledby="fc-dom-38">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-38" class="fc-daygrid-day-number" aria-label="September 17, 2020">17</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past" data-date="2020-09-18" aria-labelledby="fc-dom-40">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-40" class="fc-daygrid-day-number" aria-label="September 18, 2020">18</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-19" aria-labelledby="fc-dom-42">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-42" class="fc-daygrid-day-number" aria-label="September 19, 2020">19</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-20" aria-labelledby="fc-dom-44">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-44" class="fc-daygrid-day-number" aria-label="September 20, 2020">20</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past" data-date="2020-09-21" aria-labelledby="fc-dom-46">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-46" class="fc-daygrid-day-number" aria-label="September 21, 2020">21</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past" data-date="2020-09-22" aria-labelledby="fc-dom-48">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-48" class="fc-daygrid-day-number" aria-label="September 22, 2020">22</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past" data-date="2020-09-23" aria-labelledby="fc-dom-50">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-50" class="fc-daygrid-day-number" aria-label="September 23, 2020">23</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past" data-date="2020-09-24" aria-labelledby="fc-dom-52">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-52" class="fc-daygrid-day-number" aria-label="September 24, 2020">24</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past" data-date="2020-09-25" aria-labelledby="fc-dom-54">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-54" class="fc-daygrid-day-number" aria-label="September 25, 2020">25</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-26" aria-labelledby="fc-dom-56">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-56" class="fc-daygrid-day-number" aria-label="September 26, 2020">26</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past" data-date="2020-09-27" aria-labelledby="fc-dom-58">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-58" class="fc-daygrid-day-number" aria-label="September 27, 2020">27</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past" data-date="2020-09-28" aria-labelledby="fc-dom-60">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-60" class="fc-daygrid-day-number" aria-label="September 28, 2020">28</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-event-harness" style="margin-top: 0px;"><a class="fc-daygrid-event fc-daygrid-block-event fc-h-event fc-event fc-event-draggable fc-event-resizable fc-event-start fc-event-end fc-event-past" href="http://google.com/">
                                                                            <div class="fc-event-main">
                                                                                <div class="fc-event-main-frame">
                                                                                    <div class="fc-event-title-container">
                                                                                        <div class="fc-event-title fc-sticky">Click for Google</div>
                                                                                    </div>
                                                                                </div>
                                                                            </div>
                                                                            <div class="fc-event-resizer fc-event-resizer-end"></div>
                                                                        </a></div>
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past" data-date="2020-09-29" aria-labelledby="fc-dom-62">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-62" class="fc-daygrid-day-number" aria-label="September 29, 2020">29</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past" data-date="2020-09-30" aria-labelledby="fc-dom-64">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-64" class="fc-daygrid-day-number" aria-label="September 30, 2020">30</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past fc-day-other" data-date="2020-10-01" aria-labelledby="fc-dom-66">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-66" class="fc-daygrid-day-number" aria-label="October 1, 2020">1</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past fc-day-other" data-date="2020-10-02" aria-labelledby="fc-dom-68">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-68" class="fc-daygrid-day-number" aria-label="October 2, 2020">2</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past fc-day-other" data-date="2020-10-03" aria-labelledby="fc-dom-70">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-70" class="fc-daygrid-day-number" aria-label="October 3, 2020">3</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                    <tr role="row">
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past fc-day-other" data-date="2020-10-04" aria-labelledby="fc-dom-72">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-72" class="fc-daygrid-day-number" aria-label="October 4, 2020">4</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-월요일 fc-day-past fc-day-other" data-date="2020-10-05" aria-labelledby="fc-dom-74">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-74" class="fc-daygrid-day-number" aria-label="October 5, 2020">5</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-화요일 fc-day-past fc-day-other" data-date="2020-10-06" aria-labelledby="fc-dom-76">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-76" class="fc-daygrid-day-number" aria-label="October 6, 2020">6</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-수요일 fc-day-past fc-day-other" data-date="2020-10-07" aria-labelledby="fc-dom-78">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-78" class="fc-daygrid-day-number" aria-label="October 7, 2020">7</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-목요일 fc-day-past fc-day-other" data-date="2020-10-08" aria-labelledby="fc-dom-80">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-80" class="fc-daygrid-day-number" aria-label="October 8, 2020">8</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-금요일 fc-day-past fc-day-other" data-date="2020-10-09" aria-labelledby="fc-dom-82">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-82" class="fc-daygrid-day-number" aria-label="October 9, 2020">9</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg"></div>
                                                            </div>
                                                        </td>
                                                        <td role="gridcell" class="fc-daygrid-day fc-day fc-day-일요일 fc-day-past fc-day-other" data-date="2020-10-10" aria-labelledby="fc-dom-84">
                                                            <div class="fc-daygrid-day-frame fc-scrollgrid-sync-inner">
                                                                <div class="fc-daygrid-day-top"><a id="fc-dom-84" class="fc-daygrid-day-number" aria-label="October 10, 2020">10</a></div>
                                                                <div class="fc-daygrid-day-events">
                                                                    <div class="fc-daygrid-day-bottom" style="margin-top: 0px;"></div>
                                                                </div>
                                                                <div class="fc-daygrid-day-bg">
                                                                    <div class="fc-daygrid-bg-harness" style="left: 0px; right: 0px;">
                                                                        <div class="fc-non-business"></div>
                                                                    </div>
                                                                </div>
                                                            </div>
                                                        </td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                            </td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>



<jsp:include page="/WEB-INF/views/include/footer.jsp" />
<script src="/js/jquery-3.5.1.js"></script>
<script>

	let today = new Date();   
	
	
	


/* 	$('.fc-daygrid-day-frame').on('click', function(){
	
		/* var text = $('.fc-daygrid-day-number').text(); */
		
		

/*         var yy=moment.format("YYYY");

        var mm=moment.format("MM");

        var dd=moment.format("DD");

        var ss=moment.format("dd"); */
        /* var moment = $('#callender').fullCalendar('getDate'); */

		/* var id_check = $(this).attr("id"); */
        
/* 	    var childrens = $('fc-daygrid-day-frame').val();   
        
		alert('childrens =' + childrens);
        
	}); */
	 
	
		  $('.fc-daygrid-day-frame').click(function(){
			  
			  var selectTagA = $(this).find('a').text();
			  var selectDiv = $(this).text('Check In').css('background', '#11468F');
			  
			  
			  
			  var Test = Number(selectTagA);
			  
			  var Test2 = Test + 1;
			  
		    alert(Test2);
		  });
		
	
	
	

	 document.addEventListener('DOMContentLoaded', function() {
         var calendarEl = document.getElementById('calendar');

         var calendar = new FullCalendar.Calendar(calendarEl, {
             initialDate: new Date(),
             editable: true,
             selectable: true,
             businessHours: true,
             dayMaxEvents: true, // allow "more" link when too many events
             events: [
                 
                 
             ]
         });

         calendar.render();
     }); 
     
	 

		/* var drag_x1 = false;
		  $(window).on({ mousedown: function(event) {
		      drag_x1 = event.offsetX;
		      $('.fc .fc-highlight').text('Check In').css('background', '#11468F');
		    },
		    mouseup: function(event) {
		      if(event.offsetX - drag_x1 > 100) {
		    	  $('.fc .fc-highlight').text('Check Out').css('background', '#11468F');
		      }
		      if(event.offsetX - drag_x1 < -100) {
		    	  $('.fc .fc-highlight').text('Check Out').css('background', '#11468F');
		      }
		    }
		  }); */
		  
		  
		  
		  


</script>



</body>

</html>