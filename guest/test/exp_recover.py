"""Oracle for t_recover.pnk.

StatelessInput no longer carries public-key hints (tests-zkevm@v21.0.1), so the
guest recovers every sender from the transaction signature alone. This oracle
recovers the same sender independently: it decodes each payload transaction with
exp_tx.py (the strict-RLP Python reference), derives the signing hash and
recovery id as the spec does, and recovers the public key with plain big-integer
secp256k1 arithmetic. A transaction that fails decoding, signature validation
or recovery yields a zeroed record, matching the guest's TxErr path.
"""
import importlib.util
import os
import sys

HERE = os.path.dirname(os.path.abspath(__file__))
sys.path.insert(0, os.path.join(HERE, "..", "..", "tools"))
import pyref

_spec = importlib.util.spec_from_file_location("exp_tx", os.path.join(HERE, "exp_tx.py"))
exp_tx = importlib.util.module_from_spec(_spec)
_spec.loader.exec_module(exp_tx)

P = 2**256 - 2**32 - 977
N = exp_tx.SECP256K1N
GX = 0x79BE667EF9DCBBAC55A06295CE870B07029BFCDB2DCE28D959F2815B16F81798
GY = 0x483ADA7726A3C4655DA4FBFC0E1108A8FD17B448A68554199C47D08FFB10D4B8


def _add(a, b):
    if a is None:
        return b
    if b is None:
        return a
    if a[0] == b[0] and (a[1] + b[1]) % P == 0:
        return None
    if a == b:
        m = 3 * a[0] * a[0] * pow(2 * a[1], -1, P) % P
    else:
        m = (b[1] - a[1]) * pow(b[0] - a[0], -1, P) % P
    x = (m * m - a[0] - b[0]) % P
    return (x, (m * (a[0] - x) - a[1]) % P)


def _mul(k, pt):
    out = None
    while k:
        if k & 1:
            out = _add(out, pt)
        pt = _add(pt, pt)
        k >>= 1
    return out


def recover_address(h, r, s, recid):
    """Address of the signer of hash h, or None when recovery fails."""
    x = r
    y2 = (pow(x, 3, P) + 7) % P
    y = pow(y2, (P + 1) // 4, P)
    if y * y % P != y2:
        return None
    if (y & 1) != (recid & 1):
        y = P - y
    z = int.from_bytes(h, "big")
    rinv = pow(r, -1, N)
    q = _add(_mul(s * rinv % N, (x, y)), _mul((-z * rinv) % N, (GX, GY)))
    if q is None:
        return None
    return pyref.keccak256(q[0].to_bytes(32, "big") + q[1].to_bytes(32, "big"))[12:]


def expected(blob):
    body = blob[2:]
    chain_id = int.from_bytes(body[8:16], "little")
    out = bytearray()
    for raw in exp_tx.fixture_txs(blob):
        addr = None
        try:
            tx = exp_tx.decode_transaction(raw)
            recid, h = exp_tx.signature_recovery_parameters(tx, chain_id)
            addr = recover_address(h, tx["r"], tx["s"], recid)
        except exp_tx.TxErr:
            pass
        out.extend(addr if addr is not None else b"\x00" * 20)
    return bytes(out)
