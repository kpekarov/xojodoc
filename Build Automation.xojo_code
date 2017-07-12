#tag BuildAutomation
			Begin BuildStepList Linux
				Begin BuildProjectStep Build
				End
			End
			Begin BuildStepList Mac OS X
				Begin BuildProjectStep Build
				End
				Begin IDEScriptBuildStep CopyToUsrLocalBinScript , AppliesTo = 2
					dim command, res, zipname, vers as string
					
					command = "cp -R " +CurrentBuildLocation + "/ /usr/local/bin/"
					res = DoShellCommand(command)
					if res <> "" then
					print "Copy failes failed: " + res
					return
					end
				End
			End
			Begin BuildStepList Windows
				Begin BuildProjectStep Build
				End
			End
#tag EndBuildAutomation
