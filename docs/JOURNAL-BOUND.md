# Journal bound: trap codes 4 and 5 are unreachable

The state journal (`guest/src/state.pnk`) holds 32-byte undo records. `jset` traps
with code 4 and `jdel` with code 5 when it is full. For the challenge statement
those two traps count as OOM, so a block at or below 200M declared gas must never
reach them. This note records why that holds and what enforces it. Trap
classification is in [ALLOC-AUDIT.md](ALLOC-AUDIT.md).

## What fills the journal

The journal is reset by `state_fresh_tx` (`journal_n = 0`), so the question is how
many records one `state_fresh_tx` scope can write. `state_fresh_tx` runs for each
user transaction, each system transaction, the withdrawals step and once at the
start of the transaction loop. Records are removed again by `state_restore` when a
frame fails, so counting every write (ignoring rollbacks) is an upper bound.

Writers, from `grep jset\|jdel guest/src/state.pnk`:

| Writer | Reached from | Records | Cheapest regular gas |
|---|---|---|---|
| `set_transient_storage` (`jset` or `jdel`) | `TSTORE` | 1 | **100** |
| `set_storage` (`jset` inner, and `jset` outer once per address) | `SSTORE` | 1, or 2 on the first write to an address | 100 (warm slot); a new address needs a call of at least 100 first |
| `set_account` via `modify_state_commit` | value transfer in `CALL` (9,000), `SELFDESTRUCT`, `CREATE`/`CREATE2` (32,000), nonce changes | 1 per call | at least 5,000 |
| code write (`set_code`) | `CREATE`, EIP-7702 authorization | 1 | at least 32,000, or 7,816 per authorization (`REGULAR_PER_AUTH_BASE_COST`) |
| `destroy_storage` (`jdel`) | `CREATE`, `SELFDESTRUCT` | 1 | at least 5,000 |
| transaction-level writes | sender nonce and balance, fee refund, coinbase fee (`fork.pnk`) | a small constant (under 20) | not gas-priced |
| EIP-7702 authorizations | `set_delegation` (`evm_calls.pnk`) | about 3 per authorization | 7,816 per authorization |

The densest writer is `TSTORE` at one record per 100 regular gas. So one scope
writes at most

    regular_gas / 100 + constant

records. Reads do not journal: `get_account`, `get_storage`, `ext_code_of` and the
accessed-set inserts go through `htab_set` directly.

## How much regular gas one scope can run

* **User transaction:** `TX_MAX_GAS_LIMIT` = 16,777,216. Any gas above that goes to
  the state-gas reservoir, which `charge_gas` cannot spend (`fork.pnk`,
  `check_transaction` and the `mgas` computation). The 200M declared block gas does
  not raise this; it only allows more transactions, and the journal resets per
  transaction.
* **System transaction:** `SYSTEM_TRANSACTION_GAS` = 30,000,000
  (`process_unchecked_system_transaction`). This is *not* bounded by the block gas
  limit or by `TX_MAX_GAS_LIMIT`, and the code run is whatever the witness holds at
  the system-contract address.
* **Withdrawals:** the count is not bounded by gas at all (only by the 8 MiB block
  size). Each does one `create_ether`, so one record.

Largest scope: 30,000,000 / 100 = 300,000 records, plus the constant.

## What enforces it

* `JOURNAL_CAP` in `guest/src/config.h` is 524,288 records (16 MiB), up from 262,144.
  That is 1.75x the system-transaction worst case and 3.1x the user-transaction
  worst case (167,772).
* `guest/src/fork.pnk` has a compile-time check, a `#if` ... `#error` that stops the
  build if

      JOURNAL_CAP < max(TX_MAX_GAS_LIMIT, SYSTEM_TRANSACTION_GAS) / JOURNAL_MIN_GAS + JOURNAL_SLACK

  with `JOURNAL_MIN_GAS` = 100 and `JOURNAL_SLACK` = 1,024. Raising either gas
  constant without raising the cap, or lowering the cap, fails `build.sh`.
* `process_withdrawals` resets `journal_n` after each withdrawal. Nothing rolls a
  withdrawal back and no snapshot is outstanding, so the 8 MiB-bounded withdrawal
  count cannot fill the journal. (Withdrawals still allocate heap per account; that
  is item 1 in ALLOC-AUDIT.md.)

## Assumptions to re-check when the code changes

1. Every operation that writes a journal record costs at least 100 regular gas per
   record. A new opcode, a cheaper `TSTORE`, or a journaled write on a read path
   breaks the bound; change `JOURNAL_MIN_GAS` and the cap together.
2. No code path journals inside a loop that gas does not pay for.
3. Nothing between a `state_fresh_tx` and the work it covers grows beyond what is
   listed above.

## Cost

The journal itself is allocated once (`state_init`) at 16 MiB instead of 8 MiB of
the 240 MiB heap. Each record also keeps a heap copy of its key (24 to 56 bytes) that
is never released, which is part of the open per-gas heap growth in ALLOC-AUDIT.md (items 6 and 8).
