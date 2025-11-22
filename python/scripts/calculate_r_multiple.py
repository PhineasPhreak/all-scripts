#!/usr/bin/env python3


def calculate_r_multiple(entry, stop_loss, exit_price, position_size=1):
    """Fonction pour le calcule de R multiple"""
    risk = abs(entry - stop_loss) * position_size
    gain = abs(exit_price - entry) * position_size
    r_multiple = gain / risk if risk != 0 else None
    return {
        "risk_1R": risk,
        "gain": gain,
        "r_multiple": r_multiple
    }

# Exemple d'utilisation
if __name__ == "__main__":
    result = calculate_r_multiple(100, 95, 139, 1)
    print(result)
