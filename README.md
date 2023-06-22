<h1 align="center">Scanner</h1>
    <h2>Description</h2>
    This is a simple script to scan for vulnerabilities ip, domains lists using httpx and nuclei.
</br>
<hr>
    <h2>Possibilities</h2>
    <li>Scan for vulnerabilities ip and domains;</li>
    <li>Diff once every 7 days;</li>
    <li>Sending the comparison result by email(Reporter);</li>

</br>
<hr>
    <h2>Install</h2>
    <i>Download script:</i>
    <pre>git clone https://github.com/J3eyond/Scanner</pre>
    <i>Enter the folder:</i>
    <pre>cd Scanner/</pre>
    <i>Config the vars bellow(scanner.sh):</i>
    <pre>
path="*<i>Your full path to this script</i>*"
reporter_path="*<i>Path to Reporter folder*"
nuclei_template_path="*Your full path to nuclei templates*"
    </pre>
    <i>Give permission to launch:</i>
    <pre>chmod +x scanner.sh</pre>
    <i>Create file <b>ip.txt</b> with your ip targets.</i><br>
    <i>Create file <b>domains.txt</b> with your domains targets.</i>
    <br>
    <br>
    <i>Install <b>Requirements!</b></i>
<br>
<hr>
    <h2>Launch</h2>
    <pre>./scanner.sh</pre>
<hr>
    <h2>Requirements</h2>
    <li><b><a href="https://github.com/projectdiscovery/httpx"> httpx</a></b></li>
    <li><b><a href="https://github.com/projectdiscovery/nuclei"> nuclei</a></b></li>
    <li><b><a href="https://github.com/projectdiscovery/nuclei-templates">nuclei-templates</a></b></li>
    <li><b><a href="https://github.com/J3eyond/Reporter">Reporter</b></a></li>
