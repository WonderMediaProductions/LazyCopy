<?xml version="1.0" encoding="UTF-16"?>
<!--
    The MIT License (MIT)

    Copyright (c) 2015 Aleksey Kabanov

    Permission is hereby granted, free of charge, to any person obtaining a copy
    of this software and associated documentation files (the "Software"), to deal
    in the Software without restriction, including without limitation the rights
    to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
    copies of the Software, and to permit persons to whom the Software is
    furnished to do so, subject to the following conditions:

    The above copyright notice and this permission notice shall be included in all
    copies or substantial portions of the Software.

    THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
    IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
    FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
    AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
    LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
    OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
    SOFTWARE.
-->
<instrumentationManifest xsi:schemaLocation="http://schemas.microsoft.com/win/2004/08/events eventman.xsd" xmlns="http://schemas.microsoft.com/win/2004/08/events" xmlns:win="http://manifests.microsoft.com/win/2004/08/windows/events" xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:trace="http://schemas.microsoft.com/win/2004/08/events/trace">
  <instrumentation>
    <events>
      <provider name="LazyCopyDriver" guid="{0FE08EE4-B08F-4D27-8CBB-C816308AE235}" symbol="LazyCopyDriverGuid" resourceFileName="%SystemRoot%\System32\Drivers\LazyCopyDriver.sys" messageFileName="%SystemRoot%\System32\Drivers\LazyCopyDriver.sys">
        <events>
          <event symbol="FileAccessedEvent" value="1" version="1" level="win:Informational" task="win:None" template="FileAccessTemplate" message="$(string.LazyCopyDriver.event.0.message)">
          </event>
          <event symbol="FileFetchedEvent" value="2" version="1" level="win:Informational" task="win:None" template="FileFetchTemplate" message="$(string.LazyCopyDriver.event.2.message)">
          </event>
          <event symbol="FileNotFetchedEvent" value="3" version="1" channel="System" level="win:Error" task="win:None" template="FetchFailureTemplate" keywords="Failure " message="$(string.LazyCopyDriver.event.3.message)">
          </event>
          <event symbol="File_Fetch_Start" value="100" version="1" level="win:Informational" task="File_Fetch" opcode="win:Start" keywords="Performance ">
          </event>
          <event symbol="File_Fetch_Stop" value="101" version="1" level="win:Informational" task="File_Fetch" opcode="win:Stop" keywords="Performance ">
          </event>
          <event symbol="Driver_Init_Start" value="102" version="1" level="win:Informational" task="Driver_Init" opcode="win:Start" keywords="Performance ">
          </event>
          <event symbol="Driver_Init_Stop" value="103" version="1" level="win:Informational" task="Driver_Init" opcode="win:Stop" keywords="Performance ">
          </event>
          <event symbol="Configuration_Load_Start" value="104" version="1" level="win:Informational" task="Configuration_Load" opcode="win:Start" keywords="Performance ">
          </event>
          <event symbol="Configuration_Load_Stop" value="105" version="1" level="win:Informational" task="Configuration_Load" opcode="win:Stop" keywords="Performance ">
          </event>
          <event symbol="File_Open_Start" value="106" version="1" level="win:Informational" task="File_Open" opcode="win:Start" template="FileOpenTemplate" keywords="Performance ">
          </event>
          <event symbol="File_Open_Stop" value="107" version="1" level="win:Informational" task="File_Open" opcode="win:Stop" keywords="Performance ">
          </event>
        </events>
        <levels>
        </levels>
        <tasks>
          <task name="File_Fetch" symbol="File_Fetch" value="1" eventGUID="{BFDB9F63-0939-4A77-9382-2F31705D5DBA}">
          </task>
          <task name="Driver_Init" symbol="Driver_Init" value="2" eventGUID="{5D9EDA03-B418-4F19-86A4-DDC0EAF2422B}">
          </task>
          <task name="Configuration_Load" symbol="Configuration_Load" value="3" eventGUID="{0C74BD94-1354-4BCE-847D-978CD111F5B5}">
          </task>
          <task name="File_Open" symbol="File_Open" value="4" eventGUID="{E38DE1EF-E7EF-4E73-8395-47AAF32C29B5}">
          </task>
        </tasks>
        <opcodes>
        </opcodes>
        <channels>
          <importChannel name="System" chid="System">
          </importChannel>
        </channels>
        <keywords>
          <keyword name="Performance" symbol="Performance" mask="0x2">
          </keyword>
          <keyword name="Failure" symbol="Failure" mask="0x1">
          </keyword>
        </keywords>
        <templates>
          <template tid="FileAccessTemplate">
            <data name="Path" inType="win:UnicodeString" outType="xs:string">
            </data>
            <data name="CreateOptions" inType="win:UInt64" outType="xs:unsignedLong">
            </data>
          </template>
          <template tid="FileFetchTemplate">
            <data name="LocalPath" inType="win:UnicodeString" outType="xs:string">
            </data>
            <data name="RemotePath" inType="win:UnicodeString" outType="xs:string">
            </data>
            <data name="Size" inType="win:Int64" outType="xs:long">
            </data>
          </template>
          <template tid="FetchFailureTemplate">
            <data name="Path" inType="win:UnicodeString" outType="xs:string">
            </data>
            <data name="RemoteRoot" inType="win:UnicodeString" outType="xs:string">
            </data>
            <data name="Status" inType="win:Int64" outType="xs:long">
            </data>
          </template>
          <template tid="FileOpenTemplate">
            <data name="Path" inType="win:UnicodeString" outType="xs:string">
            </data>
          </template>
        </templates>
      </provider>
    </events>
  </instrumentation>
  <localization>
    <resources culture="en-US">
      <stringTable>
        <string id="task.None" value="None">
        </string>
        <string id="opcode.Stop" value="Stop">
        </string>
        <string id="opcode.Start" value="Start">
        </string>
        <string id="opcode.Info" value="Info">
        </string>
        <string id="level.Verbose" value="Verbose">
        </string>
        <string id="level.Informational" value="Information">
        </string>
        <string id="level.Error" value="Error">
        </string>
        <string id="channel.System" value="System">
        </string>
        <string id="LazyCopyDriver.event.3.message" value="There was an error fetching the file">
        </string>
        <string id="LazyCopyDriver.event.2.message" value="File has been fetched">
        </string>
        <string id="LazyCopyDriver.event.0.message" value="File has been accessed">
        </string>
      </stringTable>
    </resources>
  </localization>
</instrumentationManifest>
