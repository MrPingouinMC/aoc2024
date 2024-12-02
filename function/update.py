import os
import sys
from datetime import date as date
from aocd.models import Puzzle
import json
import re

INPUT_NAME_TEMPLATE = "input/%s_%s"
INPUT_TEMPLATE = INPUT_NAME_TEMPLATE + ".mcfunction"

INPUT_TEST_NAME_TEMPLATE = "input/test_%s"
INPUT_TEST_TEMPLATE = INPUT_TEST_NAME_TEMPLATE + ".mcfunction"

STORAGE_LOAD_COMMAND_TEMPLATE = 'data modify storage aoc input set value %s'

def get_latest_year():
	current_year = date.today().year
	#This refer to the day advent of code starts this year.
	new_year = date(current_year, 12, 1)
	if date.today() < new_year:
		return current_year - 1
	return current_year

def get_input_data(year, day):

	puzzle = Puzzle(year=year, day=day)
	r = None
	try:
		r = puzzle.input_data
	except:
		print("Unable to download data for year", year, "day", day)
	return r

#TODO add fix if input is > 32k character?
def data_to_command(data, mode):
	if mode == 1:
		base = STORAGE_LOAD_COMMAND_TEMPLATE % list(map(list, data.split("\n")))
	elif mode == 2:
		base = STORAGE_LOAD_COMMAND_TEMPLATE % data.split("\n")
	elif mode == 3:
		base = STORAGE_LOAD_COMMAND_TEMPLATE % ('"' + data.replace("\\","\\\\").replace('"','\\"').replace("\n","\\n") + '"')
	else:
		raise Exception("Unknown mode : " + str(mode))
	return base

def send_error(msg=""):
	print(get_help_str())
	if len(msg) > 0:
		print(msg)

def get_help_str():
	return "Command format : update.py <year> <day>"

def parse_num_argument(argv, index, vmin, vmax, default=None, name=""):
	val = default
	if len(argv) <= index:
		if default == None:
			send_error()
			exit(1)
	else:
		val = argv[index]
	
	if val == "*":
		return list(range(vmin, vmax+1))

	if not val.isnumeric():
		if val == "test":
			return []
		send_error("Please specify a valid %s" % name)
		exit(2)	
	val = int(val)
	if val < vmin or val > vmax:
		send_error("Please specify a valid %s number between %d and %d" % (name, vmin, vmax))
		exit(3)

	return [val]

def save_downloaded(data):
	with open("downloaded.json", 'w') as json_out:
	    json.dump(data, json_out)

def load_downloaded():
	if not os.path.isfile("downloaded.json"):
		return {}
	with open("downloaded.json") as json_file:
		return json.load(json_file)


def create_folder(name):
	if not os.path.isdir(name):
		os.mkdir(name)

def main():
	
	downloaded = load_downloaded()
	
	"""
	1 = array of array of character
	2 = array of string (split on \n)
	3 = string (minecraft don't allow this format, wtf)
	"""
	mode = 2
	force = False

	latest_year = get_latest_year()
	selected_years = parse_num_argument(sys.argv, 1, 2015, latest_year, default=str(latest_year), name="year")
	selected_days = parse_num_argument(sys.argv, 2, 1, 25, default="*", name="day")

	if len(selected_years) > 0:
		print("Attempt to download year=", selected_years[0], "day=", selected_days)
		print("...")


	create_folder("input")

	for year in selected_years:
		for day in selected_days:
			path = INPUT_NAME_TEMPLATE % (year, day)
			if not force and path in downloaded:
				continue
			data = get_input_data(year, day)
			if data == None:
				break
			with open(INPUT_TEMPLATE % (year, day), "w") as f:
				f.write(data_to_command(data, mode))
				downloaded[path] = {"year":year,"day":day}


	print("Updating tests")
	print("...")
	create_folder("input/test")
	for file in os.listdir("input/test"):
		
		data = None
		fname = file.split(".")[0]
		path = INPUT_TEST_NAME_TEMPLATE % fname
		with open("input/test/" + file, "r") as f:
			data = f.read()
		if data == None or len(data) == 0:
			continue

		with open(INPUT_TEST_TEMPLATE % fname, "w") as f:
				f.write(data_to_command(data, mode))
				downloaded[path] = {"test":fname}

	save_downloaded(downloaded)
	print("Done!")

main()