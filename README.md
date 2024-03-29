# LogClean

### STATUS: 
Working. Revisited on 2024/01/25.

## DESCRIPTION
LogClean is a straightforward and efficient batch and PowerShellCore/PowerShell script combination designed for cleaning `.log` files in a given directory by removing ANSI codes. This tool is particularly handy for users who regularly work with log files that contain cluttered and hard-to-read ANSI escape sequences, that you would rather just display in, Notepad or Notepad++. By automating the cleaning process, LogClean saves time and effort, making log files more readable and easier to analyze. Intended for users, whom dont want to clean log files before input into GPT, but, obviously other people may like it for their own reasoning.

### FEATURES
- **Automated Cleaning**: Automatically finds and cleans the first `.log` file in the current directory, removing all ANSI codes.
- **Simplicity in Use**: Simple and direct functionality, ideal for quick and hassle-free log file cleaning.
- **Direct Feedback**: Provides real-time progress updates and completion messages, enhancing the user interaction experience.
- **Sleep Intervals**: Intentional short pauses after each major action for better tracking of the script's progress.
- **Ps/Psc Compatibility **: Uses PowerShellCore if its present, if not, then falls back to using PowerShell.

### PREVIEW
- From uh-huh...
```
[31;1mGet-GPUList: [0mD:\GameTools\AllTexConFO4-Ps\AllTexConFO4-Ps v0.05\main.ps1:124[0m
[31;1m[0m[36;1mLine |[0m
[31;1m[0m[36;1m[36;1m 124 | [0m     $gpuList = [36;1mGet-GPUList[0m
[31;1m[0m[36;1m[36;1m[0m[36;1m[0m[36;1m     | [31;1m                ~~~~~~~~~~~[0m
[31;1m[0m[36;1m[36;1m[0m[36;1m[0m[36;1m[31;1m[31;1m[36;1m     | [31;1mNo '<adapter>:' line found in output.[0m
```
- To ah-hah...
```
Get-GPUList: D:\GameTools\AllTexConFO4-Ps\AllTexConFO4-Ps v0.05\main.ps1:124
Line |
 124 |      $gpuList = Get-GPUList
     |                 ~~~~~~~~~~~
     | No '<adapter>:' line found in output.
```

## USAGE
1. Drop the "LogClean" batch and PowerShell scripts in the same directory as your `.log` files.
2. Ensure any programs locking the log you intend to clean are closed (ie notepad, the program), if LogClean has errors it will be this.
3. Run the "LogClean.Bat" file, it will execute "logclean-ps.ps1".
4. The script will automatically identify and process the first `.log` file in the directory.
5. After completion, review the cleaned log file, which will have the same name as the original.
6. When you have solved all your errors, then delete, "LogClean.Bat" and "logclean-ps.ps1".

### REQUIREMENTS
- Windows environment with Batch support.
- The scripts should be in the same directory as the `.log` files intended for cleaning.
- PowerShell or PowerShellCore, either or both, dont matter.

### DEVELOPMENT
- Possible upgrades are...
1. Integration into ScriptClean.

## DISCLAIMER
This software is subject to the terms in License.Txt, covering usage, distribution, and modifications. For full details on your rights and obligations, refer to License.Txt.
