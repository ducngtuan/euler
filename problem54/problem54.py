def hand_rank(hand):
    ranks = card_ranks(hand)
    if straight(ranks) and flush(hand):
        return (8, max(ranks))
    elif kind(4, ranks):
        return (7, kind(4, ranks), kind(1, ranks))
    elif kind(3, ranks) and kind(2, ranks):
        return (6, kind(3, ranks), kind(2, ranks))
    elif flush(hand):
        return (5, ranks)
    elif straight(ranks):
        return (4, max(ranks))
    elif kind(3, ranks):
        return (3, kind(3, ranks), ranks)
    elif two_pair(ranks):
        return (2, two_pair(ranks), ranks)
    elif kind(2, ranks):
        return (1, kind(2, ranks), ranks)
    else:
        return (0, ranks)

def card_ranks(hand):
    ranks = ['--23456789TJQKA'.index(r) for r, s in hand]
    ranks.sort(reverse=True)
    return [5, 4, 3, 2, 1] if ranks == [14, 5, 4, 3, 2] else ranks

def flush(hand):
    '''True if all cards have the same suit.'''
    suits = [s for r, s in hand]
    return len(set(suits)) == 1

def straight(ranks):
    '''True if ordered ranks from a 5-card straight.'''
    return max(ranks) - min(ranks) == 4 and len(set(ranks)) == 5

def kind(n, ranks):
    '''Return the first rank that this hand has 
    exactly n-of-a-kind of. Return None if there 
    is no n-of-a-kind in the hand.'''
    for r in ranks:
        if ranks.count(r) == n: return r
    return None

def two_pair(ranks):
    pair = kind(2, ranks)
    lowpair = kind(2, list(reversed(ranks)))
    if pair and lowpair != pair:
        return (pair, lowpair)
    else:
        return None

def test():
    h1 = "5H 5C 6S 7S KD".split()
    h2 = "2C 3S 8S 8D TD".split()
    assert card_ranks(h1) == [13, 7, 6, 5, 5]
    assert card_ranks(h2) == [10, 8, 8, 3, 2]

    assert kind(2, card_ranks(h1)) == 5
    assert kind(2, card_ranks(h2)) == 8
    assert hand_rank(h1) < hand_rank(h2)

if __name__ == "__main__":
    file = open('poker.txt', 'r')
    hands = (line.split() for line in file)
    games = ((hand[0:5], hand[5:]) for hand in hands)
    count = 0
    for p1, p2 in games:
        if hand_rank(p1) > hand_rank(p2):
            count += 1
    print(count)