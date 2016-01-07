import common
import edify_generator
import os

def RemoveDeviceAssert(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "assert" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveDeviceGetprop(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "getprop" in edify.script[i]:
      edify.script[i] = ''
      return

def RemoveBootImage(info):
  edify = info.script
  for i in xrange(len(edify.script)):
    if "package_extract_file(\"boot.img\", \"/dev/block/mmcblk0p5\")" in edify.script[i]:
      edify.script[i] = ''
      return


def WritePolicyConfig(info):
  try:
    file_contexts = info.input_zip.read("META/file_contexts")
    common.ZipWriteStr(info.output_zip, "file_contexts", file_contexts)
  except KeyError:
    print "warning: file_context missing from target;"

def InstallImage(img_name, img_file, partition, info):
  common.ZipWriteStr(info.output_zip, img_name, img_file)
  info.script.AppendExtra(('package_extract_file("' + img_name + '", "' + partition + '");'))

def AddBootScripts(info):
    path='other/devices'
    fns=[os.path.join(root,fn) for root,dirs,files in os.walk(path) for fn in files]
    for f in fns:
        print(f)
        common.ZipWriteStr(info.output_zip, f.replace("other/",""), open(f).read())

    edify = info.script
    for i in xrange(len(edify.script)):
        if ");" in edify.script[i] and 'ui_print("Update Boot image...");' in edify.script[i] :
			edify.script[i] += '''
ifelse(is_substring("I9308", getprop("ro.bootloader")), package_extract_dir("devices/i9308/system", "/system"));
ifelse(is_substring("I9300", getprop("ro.bootloader")), package_extract_dir("devices/i9300/system", "/system"));
ifelse(is_substring("I9308", getprop("ro.bootloader")), package_extract_file("devices/i9308/boot.img", "/dev/block/mmcblk0p5"));
ifelse(is_substring("I9300", getprop("ro.bootloader")), package_extract_file("devices/i9300/boot.img", "/dev/block/mmcblk0p5"));'''
    return

def FullOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
    RemoveBootImage(info)
    AddBootScripts(info)

def IncrementalOTA_InstallEnd(info):
    RemoveDeviceAssert(info)
    RemoveDeviceGetprop(info)
