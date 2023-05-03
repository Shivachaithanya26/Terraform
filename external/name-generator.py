import json, time

fixed_time = "web"
result = {
    "name": f"{fixed_time}-{int(time.time())}",
}

print(json.dumps(result))