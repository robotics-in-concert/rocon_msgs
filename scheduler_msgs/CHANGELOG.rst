Change history
==============

0.6.6 (2014-01-14)
------------------

 * Revise status labels, removing old ones (`#60`_):
    - ABORTED -> CLOSED
    - REJECTED -> CLOSED
    - RELEASING -> CANCELING
    - RELEASED -> CLOSED
 * Add ``reason`` field with associated labels (`#60`_):
    - NONE: no reason provided
    - PREEMPTED: preempted for higher-priority task
    - BUSY: requested resource busy elsewhere
    - UNAVAILABLE: requested resource not available
    - TIMEOUT: lost contact with requester
 * Define more priority labels:
    - BACKGROUND_PRIORITY: when nothing else to do
    - LOW_PRIORITY: low-priority task
    - DEFAULT_PRIORITY: sane default priority
    - HIGH_PRIORITY: high-priority task
    - CRITICAL_PRIORITY: mission-critical task
 * Contributors: Jack O'Quin

0.6.5 (2013-12-19)
------------------

 * Initial version of an experimental scheduler message package for
   Hydro (`#27`_).
 * Updates due to experience with prototype implementation (`#41`_):
    - add new SchedulerRequests message type
    - deprecate AllocateResources and SchedulerFeedback
    - add new RESERVED status to Request message
    - add hold_time duration to Request message
 * Add priority to Request message (`#43`_).
 * Removed unneeded dependency on ``concert_msgs``.

.. _`#27`: https://github.com/robotics-in-concert/rocon_msgs/pull/27
.. _`#41`: https://github.com/robotics-in-concert/rocon_msgs/issues/41
.. _`#43`: https://github.com/robotics-in-concert/rocon_msgs/issues/43
.. _`#60`: https://github.com/robotics-in-concert/rocon_msgs/issues/60
