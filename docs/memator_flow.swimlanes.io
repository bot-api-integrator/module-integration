title: vk -> memator input/output
_: **General Notes**
note:
this is generic flow

kafka topics are in `COBOL_CASE`

services are in `camelCase`
vk api -> vkApiBalancer:receive messages


vkApiBalancer -> VK_IN: send messages to inbound topic

VK_IN -> vkIntegrator:

vkIntegrator -> CMDROUT_IN:
note: convert vk api json to native api language.

CMDROUT_IN -> commandRouter:

note: command router doesn't care about where the message came from
commandRouter -> MEMATOR_IN:

MEMATOR_IN -> memator:

memator -> VK_OUT:
note: at this point memator knows that it will send messages straight to VK, because it received them from VK (could send to discord though)

note: vk knows that this is outbound due to topic being `VK_OUT`

note: memator will produce messages in VK native api json schema

VK_OUT -> vkApiBalancer:

vkApiBalancer -> vk api: send outbound messages
