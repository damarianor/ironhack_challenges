import random
def find_random_seed(lst):
    for i in range(10000):
        random.seed(i)
        if [random.randint(0,100) for _ in range(10)] == lst:
            return i
            break
        else:
            continue