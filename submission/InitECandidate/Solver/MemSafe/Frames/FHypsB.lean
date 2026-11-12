import InitECandidate.Solver.MemSafe.Frames.FHyps
import InitECandidate.Solver.MemSafe.Frames.OpStepB
import InitECandidate.Solver.MemSafe.Frames.DispChkA
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The run_frames lane's open callee facts, bounded (frames12)

**`FHypsB σ`**: `FHyps` with the 18 memory / call / create handler fields weakened to
**`OpStepB`** (step spec for `M < 2^64` only; see `OpStepB.lean`: for `M ≥ 2^64` these fields are
false). Same field names; the other fields are unchanged (`OpStep`).

* `FHyps.toB : FHyps σ → FHypsB σ`;
* **`FHypsB.opStepsM hF M hM`** (over `dispNamesA`, every handler but `op_push`),
  `dispOKA` (`dchkA` on `op_dispatch`), **`op_dispatch_jSpecB hF M hM`**;
* frames13: the `op_push` field is the argument-guarded **`OpStepP`** (`DispChkA.lean`).
* **`run_frames_condCost_FB hF hM opCost`**: `run_frames_condCost_F` for `FHypsB`, with the bound
  `M < 2^64` on `Φ` (`PreInvX … M`).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Wire

variable {σ : Type}

/-- **The run_frames lane's open callee facts, bounded**: `FHyps` with `OpStepB` for the memory,
call and create handlers (`op_keccak`, the copies, `op_mload` / `op_mstore` / `op_mstore8` /
`op_mcopy`, `op_log`, `op_return` / `op_revert`, the CALL and CREATE families). -/
structure FHypsB (σ : Type) : Prop where
  /-- **`pre_modexp`'s fold summary**: `CSumm` with signature `⟨[], [], [], false⟩` and the
  running-EV gas capability `⟨ev, 0, [8, 23], false⟩` (`Pre.preSig`, `Pre.evCaps`). -/
  pm : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_modexp") Pre.preSig Pre.evCaps
  /-- **`pre_alt_bn128_pairing_check`'s fold summary**, same shape as `pm`. -/
  pc : CSumm σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "pre_alt_bn128_pairing_check")
    Pre.preSig Pre.evCaps
  /-- **`run_precompile` does not raise `GAS_LEFT`** (`RpGas`, `Frames/PreWire.lean`): every good
  non-abortive result from a `G` state with `RpPre` (the running EV record, its message a `Γ`
  message object, `JrNZ`) leaves `EV 64` of the running EV at most its entry value. (Every
  `pre_*` only charges through `charge_gas`; the gas checker cannot see this through their stores
  and buffer arguments.) -/
  rpG : RpGas σ
  /-- **`op_exp`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_exp` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_gas(10 + 50 * nb)` with `nb = u256_byte_length(exponent)`: the gas checker needs `nb ≤ 32` (a return-value bound) to see the charge is `≥ 1`. -/
  op_exp : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_exp")
  /-- **`op_keccak`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_keccak` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory` (moves `frame_mem_ptr` and `MEM_CAP`), `keccak256` (`buf 32`), heap window. -/
  op_keccak : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_keccak")
  /-- **`op_balance`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_balance` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `to_address_masked` into the scalar EV cells 240..; `warm_after_charge` / `get_account` take `buf 20` and state capabilities. -/
  op_balance : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_balance")
  /-- **`op_calldataload`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_calldataload` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `buffer_read` (`bufArg 3 1 0`) into an `alloc(32)` block of a `heap_mark` / `heap_release` window. -/
  op_calldataload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_calldataload")
  /-- **`op_calldatacopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_calldatacopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `copy_from_buffer` (not a fold entry: `extend_memory`). -/
  op_calldatacopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_calldatacopy")
  /-- **`op_codecopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_codecopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `copy_from_buffer` (not a fold entry: `extend_memory`). -/
  op_codecopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_codecopy")
  /-- **`op_extcodesize`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_extcodesize` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `buf 20` address (`to_address_masked`), `warm_after_charge`, `ext_code_of` (state capabilities). -/
  op_extcodesize : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodesize")
  /-- **`op_extcodecopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_extcodecopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `buf 20` address, `ext_code_of`, `extend_memory`, `buffer_read` into frame memory. -/
  op_extcodecopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodecopy")
  /-- **`op_returndatacopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_returndatacopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, `memcpy` into frame memory. -/
  op_returndatacopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_returndatacopy")
  /-- **`op_extcodehash`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_extcodehash` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `buf 20` address, `warm_after_charge`, `get_account`. -/
  op_extcodehash : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodehash")
  /-- **`op_selfbalance`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_selfbalance` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `get_account` with a `buf 20` argument (the running message's CURRENT_TARGET block). -/
  op_selfbalance : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfbalance")
  /-- **`op_mload`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mload` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory`. -/
  op_mload : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mload")
  /-- **`op_mstore`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mstore` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory`, `u256_to_be32` into frame memory. -/
  op_mstore : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore")
  /-- **`op_mstore8`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mstore8` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory`, a byte store into frame memory. -/
  op_mstore8 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore8")
  /-- **`op_sload`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_sload` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `u256_to_be32` (`buf 32`, `evm_key_buf`), warm-key tables, `get_storage`. -/
  op_sload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sload")
  /-- **`op_sstore`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_sstore` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: storage: `get_storage(_original)`, `set_storage`, `charge_state_gas`, `credit_state_gas_refund`, a store. -/
  op_sstore : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_sstore")
  /-- **`op_jump`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_jump` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `st ev + 0, dest.0` (PC, a scalar slot): needs a scalar running-EV store rule. -/
  op_jump : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_jump")
  /-- **`op_jumpi`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_jumpi` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `st ev + 0, dest.0` (PC, a scalar slot): needs a scalar running-EV store rule. -/
  op_jumpi : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_jumpi")
  /-- **`op_tload`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_tload` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `u256_to_be32(kv, evm_key_buf)` (`buf 32` on a global buffer). -/
  op_tload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_tload")
  /-- **`op_tstore`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_tstore` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `u256_to_be32(kv, evm_key_buf)` (`buf 32` on a global buffer), `set_transient_storage`. -/
  op_tstore : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_tstore")
  /-- **`op_mcopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mcopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory_cost2`, `extend_memory`, `memcpy` inside frame memory, heap window. -/
  op_mcopy : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mcopy")
  /-- **`op_push`'s argument-guarded `run_frames` step** (`OpStepP`, frames13): for every bound
  `M < 2^64` and every argument word `w` with `w ≤ 32`, every good non-abortive result of
  `op_push(w)` (`vs = [w]`) from a `G` state with `PreOpX guestC tEV tCK GP GR M` ends in a `G`
  state with `QStepX`. (For `w > 32`, `buffer_read(.., w, tmp)` overflows the `alloc(32)` block, so
  the unguarded `OpStep` is false; `op_dispatch` only calls `op_push(0)` and `op_push(op - 95)`
  under `96 ≤ op < 128`, discharged by `dchkA`.) Discharged by `j_op_push` (`Frames/OpPush.lean`). -/
  op_push : OpStepP σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_push")
  /-- **`op_swap`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_swap` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `stack_swap_positions` (not a fold entry). -/
  op_swap : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_swap")
  /-- **`op_log`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_log` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: a `while` loop over the topics, `extend_memory`, `memcpy`, `log_append` (the EV 88 list). -/
  op_log : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_log")
  /-- **`op_swapn`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_swapn` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `stack_swap_positions` (not a fold entry). -/
  op_swapn : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_swapn")
  /-- **`op_exchange`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_exchange` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `stack_swap_positions` (not a fold entry). -/
  op_exchange : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_exchange")
  /-- **`op_create`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_create` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory` (frames10 task 2b: re-establish `topMem` from `Struct.sum_extend_memory`'s `EMQ`), `compute_contract_address`, `alloc(24)`, then `generic_create` (`gcr_sumSpecT_guestR`). -/
  op_create : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create")
  /-- **`op_call`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_call` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory` for the in / out ranges, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_call : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_call")
  /-- **`op_callcode`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_callcode` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_callcode : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_callcode")
  /-- **`op_return`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_return` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, stores of the output slots, halt. -/
  op_return : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_return")
  /-- **`op_delegatecall`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_delegatecall` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_delegatecall : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_delegatecall")
  /-- **`op_create2`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_create2` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, `keccak`, `compute_create2_contract_address`, then `generic_create`. -/
  op_create2 : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2")
  /-- **`op_staticcall`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_staticcall` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_staticcall : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_staticcall")
  /-- **`op_revert`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_revert` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, stores of the output slots, halt. -/
  op_revert : OpStepB σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_revert")
  /-- **`op_selfdestruct`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_selfdestruct` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: state callees with `buf 20` arguments, `move_ether`, `emit_transfer_log`, stores. -/
  op_selfdestruct : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfdestruct")

/-- `FHyps` gives `FHypsB` (the bounded fields are weaker). -/
theorem FHyps.toB (hF : FHyps σ) : FHypsB σ where
  pm := hF.pm
  pc := hF.pc
  rpG := hF.rpG
  op_exp := hF.op_exp
  op_keccak := opStepB_of hF.op_keccak
  op_balance := hF.op_balance
  op_calldataload := hF.op_calldataload
  op_calldatacopy := opStepB_of hF.op_calldatacopy
  op_codecopy := opStepB_of hF.op_codecopy
  op_extcodesize := hF.op_extcodesize
  op_extcodecopy := opStepB_of hF.op_extcodecopy
  op_returndatacopy := opStepB_of hF.op_returndatacopy
  op_extcodehash := hF.op_extcodehash
  op_selfbalance := hF.op_selfbalance
  op_mload := opStepB_of hF.op_mload
  op_mstore := opStepB_of hF.op_mstore
  op_mstore8 := opStepB_of hF.op_mstore8
  op_sload := hF.op_sload
  op_sstore := hF.op_sstore
  op_jump := hF.op_jump
  op_jumpi := hF.op_jumpi
  op_tload := hF.op_tload
  op_tstore := hF.op_tstore
  op_mcopy := opStepB_of hF.op_mcopy
  op_push := opStepP_of hF.op_push
  op_swap := hF.op_swap
  op_log := opStepB_of hF.op_log
  op_swapn := hF.op_swapn
  op_exchange := hF.op_exchange
  op_create := opStepB_of hF.op_create
  op_call := opStepB_of hF.op_call
  op_callcode := opStepB_of hF.op_callcode
  op_return := opStepB_of hF.op_return
  op_delegatecall := opStepB_of hF.op_delegatecall
  op_create2 := opStepB_of hF.op_create2
  op_staticcall := opStepB_of hF.op_staticcall
  op_revert := opStepB_of hF.op_revert
  op_selfdestruct := hF.op_selfdestruct

/-- `dispNames` without `op_push` (whose spec is argument-guarded, `OpStepP`). -/
def dispNamesA : List MlS := [nm "op_stop", nm "op_add", nm "op_mul", nm "op_sub", nm "op_div", nm "op_sdiv", nm "op_mod", nm "op_smod", nm "op_addmod", nm "op_mulmod", nm "op_exp", nm "op_signextend", nm "op_lt", nm "op_gt", nm "op_slt", nm "op_sgt", nm "op_eq", nm "op_iszero", nm "op_and", nm "op_or", nm "op_xor", nm "op_not", nm "op_byte", nm "op_shl", nm "op_shr", nm "op_sar", nm "op_clz", nm "op_keccak", nm "op_address", nm "op_balance", nm "op_origin", nm "op_caller", nm "op_callvalue", nm "op_calldataload", nm "op_calldatasize", nm "op_calldatacopy", nm "op_codesize", nm "op_codecopy", nm "op_gasprice", nm "op_extcodesize", nm "op_extcodecopy", nm "op_returndatasize", nm "op_returndatacopy", nm "op_extcodehash", nm "op_blockhash", nm "op_coinbase", nm "op_timestamp", nm "op_number", nm "op_prevrandao", nm "op_gaslimit", nm "op_chainid", nm "op_selfbalance", nm "op_basefee", nm "op_blobhash", nm "op_blobbasefee", nm "op_slotnum", nm "op_pop", nm "op_mload", nm "op_mstore", nm "op_mstore8", nm "op_sload", nm "op_sstore", nm "op_jump", nm "op_jumpi", nm "op_pc", nm "op_msize", nm "op_gas", nm "op_jumpdest", nm "op_tload", nm "op_tstore", nm "op_mcopy", nm "op_dup", nm "op_swap", nm "op_log", nm "op_dupn", nm "op_swapn", nm "op_exchange", nm "op_create", nm "op_call", nm "op_callcode", nm "op_return", nm "op_delegatecall", nm "op_create2", nm "op_staticcall", nm "op_revert", nm "op_selfdestruct"]

/-- **Every handler `op_dispatch` calls, except `op_push`, has its step spec at `M < 2^64`.** -/
theorem FHypsB.opStepsM (hF : FHypsB σ) (M : Nat) (hM : M < 2 ^ 64) :
    ∀ f ∈ dispNamesA, JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) f
      (fun vs s Γ => PreOpX guestC tEV tCK GP GR M vs s Γ) (QStepX guestC tEV tCK GP GR) := by
  intro f hf
  simp only [dispNamesA, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact j_op_stop M
  · exact j_op_add M
  · exact j_op_mul M
  · exact j_op_sub M
  · exact j_op_div M
  · exact j_op_sdiv M
  · exact j_op_mod M
  · exact j_op_smod M
  · exact j_op_addmod M
  · exact j_op_mulmod M
  · exact hF.op_exp M
  · exact j_op_signextend M
  · exact j_op_lt M
  · exact j_op_gt M
  · exact j_op_slt M
  · exact j_op_sgt M
  · exact j_op_eq M
  · exact j_op_iszero M
  · exact j_op_and M
  · exact j_op_or M
  · exact j_op_xor M
  · exact j_op_not M
  · exact j_op_byte M
  · exact j_op_shl M
  · exact j_op_shr M
  · exact j_op_sar M
  · exact j_op_clz M
  · exact hF.op_keccak M hM
  · exact j_op_address M
  · exact hF.op_balance M
  · exact j_op_origin M
  · exact j_op_caller M
  · exact j_op_callvalue M
  · exact hF.op_calldataload M
  · exact j_op_calldatasize M
  · exact hF.op_calldatacopy M hM
  · exact j_op_codesize M
  · exact hF.op_codecopy M hM
  · exact j_op_gasprice M
  · exact hF.op_extcodesize M
  · exact hF.op_extcodecopy M hM
  · exact j_op_returndatasize M
  · exact hF.op_returndatacopy M hM
  · exact hF.op_extcodehash M
  · exact j_op_blockhash M
  · exact j_op_coinbase M
  · exact j_op_timestamp M
  · exact j_op_number M
  · exact j_op_prevrandao M
  · exact j_op_gaslimit M
  · exact j_op_chainid M
  · exact hF.op_selfbalance M
  · exact j_op_basefee M
  · exact j_op_blobhash M
  · exact j_op_blobbasefee M
  · exact j_op_slotnum M
  · exact j_op_pop M
  · exact hF.op_mload M hM
  · exact hF.op_mstore M hM
  · exact hF.op_mstore8 M hM
  · exact hF.op_sload M
  · exact hF.op_sstore M
  · exact hF.op_jump M
  · exact hF.op_jumpi M
  · exact j_op_pc M
  · exact j_op_msize M
  · exact j_op_gas M
  · exact j_op_jumpdest M
  · exact hF.op_tload M
  · exact hF.op_tstore M
  · exact hF.op_mcopy M hM
  · exact j_op_dup M
  · exact hF.op_swap M
  · exact hF.op_log M hM
  · exact j_op_dupn M
  · exact hF.op_swapn M
  · exact hF.op_exchange M
  · exact hF.op_create M hM
  · exact hF.op_call M hM
  · exact hF.op_callcode M hM
  · exact hF.op_return M hM
  · exact hF.op_delegatecall M hM
  · exact hF.op_create2 M hM
  · exact hF.op_staticcall M hM
  · exact hF.op_revert M hM
  · exact hF.op_selfdestruct M

theorem FHypsB.preHyps (hF : FHypsB σ) : PreHyps σ := preHyps_of hF.pm hF.pc hF.rpG

theorem dispParams : oneParam (nm "op") (declPair Guest.Software.guestFn_op_dispatch).2.1 = true := by
  have h : (declPair Guest.Software.guestFn_op_dispatch).2.1 =
      [("op", Flapjack.Shape.one)].map Flapjack.Pancake.PanLang.paramToHOL := rfl
  rw [h]
  simp only [List.map_cons, List.map_nil, Flapjack.Pancake.PanLang.paramToHOL,
    Flapjack.Pancake.PanLang.shapeToHOL]
  decide +kernel

/-- **`op_dispatch`'s body passes the interval dispatch check** with `op_push` guarded. -/
theorem dispOKA : dchkA dispNamesA (nm "op_push") (nm "op") ivTop
    (declPair Guest.Software.guestFn_op_dispatch).2.2 = true := by
  decide +kernel

/-- **`op_dispatch`'s `run_frames` step spec** at a bound `M < 2^64`, open only in `FHypsB`
(frames13: `op_push` through its argument-guarded `OpStepP` and `dchkA`). -/
theorem op_dispatch_jSpecB (hF : FHypsB σ) (M : Nat) (hM : M < 2 ^ 64) :
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_dispatch) :=
    declPair_valid (List.getElem_mem (n := 577) (by decide)) ⟨_, rfl⟩
  exact disp_jSpecA guestCtx_code Hooks.frameCfg_guestHooksR.hooks (hF.opStepsM M hM)
    (hF.op_push M hM) hcode dispParams dispOKA

/-- **`run_frames`' conditional cost on the extension**, open only in `FHypsB` and `op_dispatch`'s
cost, for `M < 2^64`. -/
theorem run_frames_condCost_FB (hF : FHypsB σ) {M Bop : Nat} (hM : M < 2 ^ 64)
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
      (PreInvX guestC tEV tCK GP GR M)
      (rfB M Bop 2 (max (1 + srBGuest + 0) 0 + 0) (finBnd Wire.finBsGuest)) :=
  run_frames_condCost_opX_R (op_dispatch_jSpecB hF M hM) opCost

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.FHyps.toB
#print axioms InitECandidate.Solver.MemSafe.Frames.FHypsB.opStepsM
#print axioms InitECandidate.Solver.MemSafe.Frames.dispOKA
#print axioms InitECandidate.Solver.MemSafe.Frames.op_dispatch_jSpecB
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCost_FB
