# python/check_disk.py
import shutil

def main():
    total, used, free = shutil.disk_usage("/")
    print(f"Disk Usage - Total: {total // (2**30)} GB | Used: {used // (2**30)} GB | Free: {free // (2**30)} GB")

if __name__ == "__main__":
    main()
