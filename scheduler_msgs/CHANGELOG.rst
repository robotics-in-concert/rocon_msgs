Change history
==============

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
