# HP-Bloatware-Remover-Tool
A surgical utility to remove factory-installed HP software, telemetry, and background services.  ✅ Removes Support Assistant &amp; Touchpoint Analytics ✅ Deep-cleans UWP apps &amp; Driver Store components ✅ Optional System Restore Point &amp; Auto-Restart ✅ Modern Dark UI with real-time logging  Run as Administrator.

📦 Pre-Installed Apps (UWP)
These are the apps that appear in your Start Menu and take up disk space:

HP Support Assistant: The main "updater" that often runs multiple background processes.

HP Smart: Usually used for printers, but pre-installed on every laptop.

HP QuickDrop: Used for file transfers but often runs at startup.

HP Privacy Settings / HP Documentation: Redundant manuals and privacy "helpers."

⚙️ Background Services & Telemetry
These are the "invisible" programs that eat up RAM and CPU cycles:

HP Touchpoint Analytics Service: The primary telemetry collector that sends usage data to HP.

HP App Helper Cap: A background service for "capturing" app interactions.

HP System Info Helper: Constantly polls hardware data in the background.

HP Network Booster / HP Command Center: Software that tries to "optimize" your PC but often causes lag or overhead.

📂 Driver Store "Software Components"
Even after you uninstall the apps, Windows keeps "Shadow" versions of the software in the DriverStore. Your tool likely targets:

HSA (Hardware Support Apps): Tiny bits of code that automatically re-download the bloatware from the Microsoft Store if you delete the app but leave the driver.

HP Analytics Providers: DLL files buried in system folders that track hardware health.

Because this is an unsigned (.exe) file that modifies system services, Windows Defender or SmartScreen may show a warning: "Windows protected your PC." 1. This is normal for open-source tools.
2. You can verify the code by reading the HPBloat.ps1 script included in this repository.
3. To run, click "More Info" and then "Run anyway."

As-Is Basis: This tool is provided "as-is" without any warranty of any kind, either express or implied. The author makes no guarantees that the software will work as intended or that it will not cause issues with your operating system.

User Responsibility: By running this executable, you acknowledge that you are doing so at your own risk. Deleting system services, drivers, or software components can lead to system instability or loss of functionality if not handled correctly.

Limitation of Liability: In no event shall the author be liable for any claim, damages, or other liability, whether in an action of contract, tort, or otherwise, arising from, out of, or in connection with the software or the use of the software.

Recommendation: It is highly recommended to use the "Create System Restore Point" feature included in the tool before proceeding with any cleanup tasks.
