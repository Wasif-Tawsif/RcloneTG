#!/bin/bash

if [[ -n $OWNER_ID ]]; then
	echo "Rclone config detected"
	echo "[DRIVE]" > rclone.conf
    mkdir -p /app/.config/rclone
	echo "$(echo W2Ryb3Bib3hdCnR5cGUgPSBkcm9wYm94CnRva2VuID0geyJhY2Nlc3NfdG9rZW4iOiJzbC5CWl96ZVRlTXIxYWlOSElROFotcnItaWxWeGp2STRBSWh0MnhkeEFITVFYLXBfRUVOMVdfcWlhU1lPbDFvUjR0czRtM1kxV1FCeU5rS25kaFRGQmNkNWNPcUlGc240SzE2MkFRd2dkbEY1YlF1UDhLR0ZaT0Zpb0Jsc1VwWGttRi1FemNLUVdkIiwidG9rZW5fdHlwZSI6ImJlYXJlciIsInJlZnJlc2hfdG9rZW4iOiJmUm9uNFZCZU9tUUFBQUFBQUFBQUFVX3lKT2w4T0pHenNadmxSMUwwbmpLcnROZ3VoZkprcXpMTUsyNmFGMGdFIiwiZXhwaXJ5IjoiMjAyMy0wMy0wNVQwNTo0NDo1Ny40MzcyMTc3KzA2OjAwIn0KClttZWdhXQp0eXBlID0gbWVnYQp1c2VyID0gc2FtaW5ob3NzYWluMzNAZ21haWwuY29tCnBhc3MgPSBrWDFOZFdSaW01M21QZFZhandEVTZoc0ljTFZYaEJkdAoKW29uZWRyaXZlXQp0eXBlID0gb25lZHJpdmUKdG9rZW4gPSB7ImFjY2Vzc190b2tlbiI6ImV5SjBlWEFpT2lKS1YxUWlMQ0p1YjI1alpTSTZJbm8zY1ZZeFoxaDNZVlJDT1c1aGFsbzRZMFpIYlMwMGRHSnFhRzh4VkVob1dYTlZWVmhNYkRCeGNra2lMQ0poYkdjaU9pSlNVekkxTmlJc0luZzFkQ0k2SWkxTFNUTlJPVzVPVWpkaVVtOW1lRzFsV205WWNXSklXa2RsZHlJc0ltdHBaQ0k2SWkxTFNUTlJPVzVPVWpkaVVtOW1lRzFsV205WWNXSklXa2RsZHlKOS5leUpoZFdRaU9pSXdNREF3TURBd015MHdNREF3TFRBd01EQXRZekF3TUMwd01EQXdNREF3TURBd01EQWlMQ0pwYzNNaU9pSm9kSFJ3Y3pvdkwzTjBjeTUzYVc1a2IzZHpMbTVsZEM4NFpHRXlZVFV4WmkwMU5EVXpMVFEyWmpBdFlqYzJOQzAzTnpCbVlXTTFaalV3Wm1Fdklpd2lhV0YwSWpveE5qYzNPVFUxT1RjeUxDSnVZbVlpT2pFMk56YzVOVFU1TnpJc0ltVjRjQ0k2TVRZM056azJNRFl6TWl3aVlXTmpkQ0k2TUN3aVlXTnlJam9pTVNJc0ltRnBieUk2SWtGV1VVRnhMemhVUVVGQlFYSkJSelJqZUZWVGFqRnJSMmt4VmtOdmJEaE9TRmxJZG1oNlVEZHhUMnhYU0dOM0wxTXpSbEp2V21KT2RqRlRRV3hsVnpaaFYzSkZVaXM1Y25kSGNqTXdlVmt2UnpWUWVpOXhjWFJEVXpKVE5VWkNkVzV0Vm1RMWVrMDVOMmxTU1VjME9VMUJZVXcyWlVGelBTSXNJbUZ0Y2lJNld5SndkMlFpTENKdFptRWlYU3dpWVhCd1gyUnBjM0JzWVhsdVlXMWxJam9pY21Oc2IyNWxJaXdpWVhCd2FXUWlPaUppTVRVMk5qVmtPUzFsWkdFMkxUUXdPVEl0T0RVek9TMHdaV1ZqTXpjMllXWmtOVGtpTENKaGNIQnBaR0ZqY2lJNklqRWlMQ0ptWVcxcGJIbGZibUZ0WlNJNklrMXpJaXdpWjJsMlpXNWZibUZ0WlNJNklsTmhiU0lzSW1sa2RIbHdJam9pZFhObGNpSXNJbWx3WVdSa2NpSTZJakV3TXk0NU5pNHhNRFF1TWpFNUlpd2libUZ0WlNJNklsTmhiU0JOY3lJc0ltOXBaQ0k2SWpWa1pEazFNV1l5TFRSbU1EVXRORFF6TWkwNE5tSTFMV1UzTVRBMVlUWTBZVFJsWVNJc0luQnNZWFJtSWpvaU15SXNJbkIxYVdRaU9pSXhNREF6TWpBd01VUXlNVEkxTlRneklpd2ljbWdpT2lJd0xrRlZXVUZJTmxkcGFsWk9WVGhGWVROYVNHTlFja1k1VVMxblRVRkJRVUZCUVVGQlFYZEJRVUZCUVVGQlFVRkRRVUZOYXk0aUxDSnpZM0FpT2lKR2FXeGxjeTVTWldGa0lFWnBiR1Z6TGxKbFlXUXVRV3hzSUVacGJHVnpMbEpsWVdSWGNtbDBaU0JHYVd4bGN5NVNaV0ZrVjNKcGRHVXVRV3hzSUhCeWIyWnBiR1VnYjNCbGJtbGtJR1Z0WVdsc0lGTnBkR1Z6TGxKbFlXUXVRV3hzSWl3aWMybG5ibWx1WDNOMFlYUmxJanBiSW10dGMya2lYU3dpYzNWaUlqb2lRMUIzZWt0WlowNUxlVzgwYm1KblJUQlljek4wZHpGUFZHaHhUVGhtTFUxa1Z6ZFFOR1JVTkZwR1RTSXNJblJsYm1GdWRGOXlaV2RwYjI1ZmMyTnZjR1VpT2lKT1FTSXNJblJwWkNJNklqaGtZVEpoTlRGbUxUVTBOVE10TkRabU1DMWlOelkwTFRjM01HWmhZelZtTlRCbVlTSXNJblZ1YVhGMVpWOXVZVzFsSWpvaVUyRnRhVzR3TURkQU5YQnhiVFJyTG05dWJXbGpjbTl6YjJaMExtTnZiU0lzSW5Wd2JpSTZJbE5oYldsdU1EQTNRRFZ3Y1cwMGF5NXZibTFwWTNKdmMyOW1kQzVqYjIwaUxDSjFkR2tpT2lKSE5FcFRUVFphYmw5ck1tOUhhMmhzUVZKc2VFRkJJaXdpZG1WeUlqb2lNUzR3SWl3aWQybGtjeUk2V3lJMk1tVTVNRE01TkMwMk9XWTFMVFF5TXpjdE9URTVNQzB3TVRJeE56Y3hORFZsTVRBaUxDSmlOemxtWW1ZMFpDMHpaV1k1TFRRMk9Ea3RPREUwTXkwM05tSXhPVFJsT0RVMU1Ea2lYU3dpZUcxelgzTjBJanA3SW5OMVlpSTZJakZMYmxOQk5VWmpkblZSTmtKU2JtNHlNRzVoTlhWNVRsZE5jbE4yZUdnNU9XZHdSWEZNVUVGbWJra2lmU3dpZUcxelgzUmpaSFFpT2pFMk5ESTRNekE1TXpkOS5PRU0zVGU2VXBfRlBVdnhvNm54TlhweG83d3haSzFVd0ZJNjhLQTg0SXQzVlZlVzZuT2NqNFBrNzRnRGwxWTZxdWJKbU44dGdRQkxaRk1TOWFBb2RORmhYZ0IwYnp2U3BhNExaWkpKaVY0ajBsenRNb2ZGTmFLSXRHUXhzVllFQUE0TnFZNV9XWGJLVDF4NndTMl9kZldaaE16V1YxRl9lWUJmY3lkMEVvb3ZGeHc2UEJEY2VLSXlCSWVDeWhPQmN0YmpWV3QyeEhOcmJGTzYwdUtYYktHRmxERnZwOG5yaVBLY3otb2Z1TXRWMy14X2VoaWtzaDJVSUNFR2lQSzNSUU1mZ3pPYnV2V0h6dVNVOGl0QW5qT2EtUndiaFFUbHBNaEE1V1Uweko5TFVHeV9FVnUzcGVUSW1GUkFUNmQ2YkszM2FRakFOaWI4Mm1lYm5pUC1TbnciLCJ0b2tlbl90eXBlIjoiQmVhcmVyIiwicmVmcmVzaF90b2tlbiI6IjAuQVVZQUg2V2lqVk5VOEVhM1pIY1ByRjlRLXRsbFZyR203WkpBaFRrTzdEZHFfVm1BQU1rLkFnQUJBQUVBQUFELS1ETEEzVk83UXJkZGdKZzdXZXZyQWdEc193VUE5UDhOUTNwQlRTTmFBLUd3NHhSWXRDSVBMamh1dzRLM3hHRG9WY0lweVVvNzN6YVhvdklhV0NEU3lyQ1ZpS1hkS28wT2wxLWVWTnRSZVFMaGthc2JfWTFVbkd5SVVVdm1IV3p2WGFTenlCcUs4ZHZjdGtLR0dXUGdQcFNoT3ViRDRUWWFwclJuTDBYSmpxY2lvRVZmeFEzbXlzWVpVRHhZN2FrT1ViRjc5NzVWTFIwSFh4MHZfRXNKTndiaThWXzUtVnMyTUFlNGVVVG1kSkZnTTJsWng5NlpYSDZ3VTk4eEVNNUM5X0lYUHBHZzZlMndkd3p0NlZsR0NZMDJ6NmVudHk3ZndSUzdVZzFPZnR1czBpWUdFaWkyV1FkVTQ3dnFiNGYydEY3SXYtQjd1UUZLRjRDdnIxYkt1MVZwVmxDSTlpMjM0bXdrUS04NkJDajg2UjNMQ24yZ1ZuM0FRZi1VelNFSy1LVjVTeFFzSFRXSERZcDhWazZfVzVpaFVvUk1KeXV5eW0yYlY4RG5ORmpNemxERExuOGMyMW80YzBVVUgySV8wZnktOG4tUlphVllkcVpxVnFpV0tmYlhWcmNwVm4xTVBJVnZZb2wtbkRGcE9vczFLbnBQQzBkbWNqQTVPLUJqOElPNnNrX0s1bkIzT2p6Mld1eE9xN2tqcmFwRWdUX2ZHWmlMVlAxbHA3MTB5YjdQMEw2LTFDd19xZzdaRzBlZEdyYUtsdXBBOEhXMkxwUDhIekprbjRiMmltbGZ4aGFFRDBzM1VDRkVPUE5wakd3aTJidnZUYktDY0JKeG1OVmlHdE1YYkpjOXdSWmxzLTVBOFNoUF84aG92SE5EOU9sMjQwVnZZQ1Ywekh0Ry10NEMwQW9lSUdaS1JMcWZoR01hM0hidEx0MEloMGhfakpVSXZZN1BDSmZWUklqMDhpSXZfcEExcER5MTl6TFh2cHlibmtseXkwLUVuZy1CSmV0YUE3c0V2b0ZLMXhQeExNbW5NTy1mWV8wVVltekJnczF2Q0FPclJjX1ZncGd0Mkl0dFhsZ0ZUWXUzY21zU2VVSHk2b2Nta2RkWFlpYl9XQSIsImV4cGlyeSI6IjIwMjMtMDMtMDVUMDI6MTA6MzEuOTE4NTI1NCswNjowMCJ9CmRyaXZlX2lkID0gYiF2QmJBSjNVbElVbW9DTTFNZFRwMC1SX3pndFFNSVRwTXQyTEFsaXlINnRycHdlUVp4dmNhUzVSWlA5RTJLWUtPCmRyaXZlX3R5cGUgPSBidXNpbmVzcwoKW2dkcml2ZV0KdHlwZSA9IGRyaXZlCnJvb3RfZm9sZGVyX2lkID0gMVhWQ2NtRTEzOEI1bU8xa3VWZHJ0aWgyQnZkM3lxdG9QCnRva2VuID0geyJhY2Nlc3NfdG9rZW4iOiJ5YTI5LmEwQVZ2WlZzcGFUTXZSb1NnZVFxZTRtOGlId0s5eUtGWmxqTFFFZGVmZkpWd3JPcE5GRFZ0dUJOb2hMd3RuNElUcHJYcnQ5UWJ2eVZPQlZHWnpEWWpJYnlPck1MYjBtUGVTbWNhX2tocXRMVERTTDR6endubXltbEtyRUtSUUFYRFRpeDgxUnB4RUo1d2FxVjF5czRjeDJ3UW1ESWMwYUNnWUtBYk1TQVJFU0ZRR2Jkd2FJUlVmRXhSdXg5c1RJT2tYRVYzdW9NZzAxNjMiLCJ0b2tlbl90eXBlIjoiQmVhcmVyIiwicmVmcmVzaF90b2tlbiI6IjEvLzBnQmlkUExxYXV6MG1DZ1lJQVJBQUdCQVNOd0YtTDlJck93Q0lFR1ExVlk2MnRpbHhnRElROHR5V0w1enA0VU1mejFIeWVGVi03ZXhZbUI3Tm1lT2VuX2pNNFVlcHJ2RnZpMVUiLCJleHBpcnkiOiIyMDIzLTAzLTA1VDE5OjAwOjAwLjU2Nzg1NTYrMDY6MDAifQp0ZWFtX2RyaXZlID0gCgo=|base64 -d)" >> /app/.config/rclone/rclone.conf
	chmod +x /app/.config/rclone/rclone.conf
fi

if [[ -n $BOT_TOKEN && -n $OWNER_ID ]]; then
	echo "Bot token and owner ID detected"
	python3 config.py
fi

echo "SETUP COMPLETED"

npm start
