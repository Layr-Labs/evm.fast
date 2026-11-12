import InitECandidate.Solver.MemSafe.Frames.OpStop
import InitECandidate.Solver.MemSafe.Frames.DispChk
import InitECandidate.Solver.MemSafe.Frames.PreWire
import InitECandidate.Solver.MemSafe.Frames.RunFramesJL
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The run_frames lane's open callee facts (frames11)

**`FHyps σ`** gathers every callee fact this lane does not prove, each a self-contained statement
at `guestCtx` / `guestC` / `Hooks.guestHooksR` (decision 2): the two `run_precompile` callees
that are not fold entries, `RpGas`, and the step spec (`OpStep`) of each of the 35 handlers the
gas checker does not accept (but `op_stop`, proved by hand in `OpStop`). Results:

* **`FHyps.preHyps`**: `PreHyps σ` (so `frame_prologue` / `frame_start` / `start_child` /
  `generic_call` / `generic_create` are open only in `FHyps`);
* **`FHyps.opSteps`**: every handler `op_dispatch` calls has its step spec (51 by the gas checker,
  `op_stop` by hand, 35 from the fields);
* **`op_dispatch_jSpec hF M`**: `op_dispatch`'s `run_frames` step spec (the `opSum` of
  `run_frames_condCost_opX_R`);
* **`run_frames_condCost_F hF opCost`**: `run_frames`' conditional cost on the extension, open only
  in `FHyps` and `op_dispatch`'s cost `opCost` (a `CondCost`, the conditional cost band's).
-/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Wire

/-- **The run_frames lane's open callee facts** (all at `guestHooksR`, challenge context). -/
structure FHyps (σ : Type) : Prop where
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
  op_keccak : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_keccak")
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
  op_calldatacopy : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_calldatacopy")
  /-- **`op_codecopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_codecopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `copy_from_buffer` (not a fold entry: `extend_memory`). -/
  op_codecopy : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_codecopy")
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
  op_extcodecopy : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_extcodecopy")
  /-- **`op_returndatacopy`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_returndatacopy` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, `memcpy` into frame memory. -/
  op_returndatacopy : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_returndatacopy")
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
  op_mload : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mload")
  /-- **`op_mstore`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mstore` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory`, `u256_to_be32` into frame memory. -/
  op_mstore : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore")
  /-- **`op_mstore8`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_mstore8` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `charge_with_memory` / `extend_memory`, a byte store into frame memory. -/
  op_mstore8 : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mstore8")
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
  op_mcopy : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_mcopy")
  /-- **`op_push`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_push` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `buffer_read` (`bufArg 3 1 0`) into an `alloc(32)` heap-window block, `heap_release`. -/
  op_push : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_push")
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
  op_log : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_log")
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
  op_create : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create")
  /-- **`op_call`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_call` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory` for the in / out ranges, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_call : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_call")
  /-- **`op_callcode`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_callcode` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_callcode : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_callcode")
  /-- **`op_return`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_return` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, stores of the output slots, halt. -/
  op_return : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_return")
  /-- **`op_delegatecall`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_delegatecall` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_delegatecall : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_delegatecall")
  /-- **`op_create2`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_create2` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, `keccak`, `compute_create2_contract_address`, then `generic_create`. -/
  op_create2 : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_create2")
  /-- **`op_staticcall`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_staticcall` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, then `generic_call` (`gc_sumSpecT_guestRh`). -/
  op_staticcall : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_staticcall")
  /-- **`op_revert`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_revert` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: `extend_memory`, stores of the output slots, halt. -/
  op_revert : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_revert")
  /-- **`op_selfdestruct`'s `run_frames` step**: for every bound `M`, every good non-abortive result of
  `op_selfdestruct` from a `G` state with `PreOpX guestC tEV tCK GP GR M` (the extended chain, `Φ ≤ M`, the
  frame active, `JrNZ`) ends in a `G` state with `QStepX` (a return: the extended chain and `Φ`
  strictly lower; an `EvmErr`: the extended chain, `Φ + 1 ≤ Φ_entry + act`; `JrNZ` in both).
  Not accepted by the gas checker: state callees with `buf 20` arguments, `move_ether`, `emit_transfer_log`, stores. -/
  op_selfdestruct : OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) (nm "op_selfdestruct")

variable {σ : Type}

/-- `PreHyps` from `FHyps`. -/
theorem FHyps.preHyps (hF : FHyps σ) : PreHyps σ := preHyps_of hF.pm hF.pc hF.rpG

/-- The handlers `op_dispatch` calls. -/
def dispNames : List MlS := [nm "op_stop", nm "op_add", nm "op_mul", nm "op_sub", nm "op_div", nm "op_sdiv", nm "op_mod", nm "op_smod", nm "op_addmod", nm "op_mulmod", nm "op_exp", nm "op_signextend", nm "op_lt", nm "op_gt", nm "op_slt", nm "op_sgt", nm "op_eq", nm "op_iszero", nm "op_and", nm "op_or", nm "op_xor", nm "op_not", nm "op_byte", nm "op_shl", nm "op_shr", nm "op_sar", nm "op_clz", nm "op_keccak", nm "op_address", nm "op_balance", nm "op_origin", nm "op_caller", nm "op_callvalue", nm "op_calldataload", nm "op_calldatasize", nm "op_calldatacopy", nm "op_codesize", nm "op_codecopy", nm "op_gasprice", nm "op_extcodesize", nm "op_extcodecopy", nm "op_returndatasize", nm "op_returndatacopy", nm "op_extcodehash", nm "op_blockhash", nm "op_coinbase", nm "op_timestamp", nm "op_number", nm "op_prevrandao", nm "op_gaslimit", nm "op_chainid", nm "op_selfbalance", nm "op_basefee", nm "op_blobhash", nm "op_blobbasefee", nm "op_slotnum", nm "op_pop", nm "op_mload", nm "op_mstore", nm "op_mstore8", nm "op_sload", nm "op_sstore", nm "op_jump", nm "op_jumpi", nm "op_pc", nm "op_msize", nm "op_gas", nm "op_jumpdest", nm "op_tload", nm "op_tstore", nm "op_mcopy", nm "op_push", nm "op_dup", nm "op_swap", nm "op_log", nm "op_dupn", nm "op_swapn", nm "op_exchange", nm "op_create", nm "op_call", nm "op_callcode", nm "op_return", nm "op_delegatecall", nm "op_create2", nm "op_staticcall", nm "op_revert", nm "op_selfdestruct"]

/-- **Every handler `op_dispatch` calls has its step spec.** -/
theorem FHyps.opSteps (hF : FHyps σ) :
    ∀ f ∈ dispNames, OpStep σ guestCtx (Hooks.guestHooksR (σ := σ)) f := by
  intro f hf
  simp only [dispNames, List.mem_cons, List.not_mem_nil, or_false] at hf
  rcases hf with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  · exact j_op_stop
  · exact fun M => j_op_add M
  · exact fun M => j_op_mul M
  · exact fun M => j_op_sub M
  · exact fun M => j_op_div M
  · exact fun M => j_op_sdiv M
  · exact fun M => j_op_mod M
  · exact fun M => j_op_smod M
  · exact fun M => j_op_addmod M
  · exact fun M => j_op_mulmod M
  · exact hF.op_exp
  · exact fun M => j_op_signextend M
  · exact fun M => j_op_lt M
  · exact fun M => j_op_gt M
  · exact fun M => j_op_slt M
  · exact fun M => j_op_sgt M
  · exact fun M => j_op_eq M
  · exact fun M => j_op_iszero M
  · exact fun M => j_op_and M
  · exact fun M => j_op_or M
  · exact fun M => j_op_xor M
  · exact fun M => j_op_not M
  · exact fun M => j_op_byte M
  · exact fun M => j_op_shl M
  · exact fun M => j_op_shr M
  · exact fun M => j_op_sar M
  · exact fun M => j_op_clz M
  · exact hF.op_keccak
  · exact fun M => j_op_address M
  · exact hF.op_balance
  · exact fun M => j_op_origin M
  · exact fun M => j_op_caller M
  · exact fun M => j_op_callvalue M
  · exact hF.op_calldataload
  · exact fun M => j_op_calldatasize M
  · exact hF.op_calldatacopy
  · exact fun M => j_op_codesize M
  · exact hF.op_codecopy
  · exact fun M => j_op_gasprice M
  · exact hF.op_extcodesize
  · exact hF.op_extcodecopy
  · exact fun M => j_op_returndatasize M
  · exact hF.op_returndatacopy
  · exact hF.op_extcodehash
  · exact fun M => j_op_blockhash M
  · exact fun M => j_op_coinbase M
  · exact fun M => j_op_timestamp M
  · exact fun M => j_op_number M
  · exact fun M => j_op_prevrandao M
  · exact fun M => j_op_gaslimit M
  · exact fun M => j_op_chainid M
  · exact hF.op_selfbalance
  · exact fun M => j_op_basefee M
  · exact fun M => j_op_blobhash M
  · exact fun M => j_op_blobbasefee M
  · exact fun M => j_op_slotnum M
  · exact fun M => j_op_pop M
  · exact hF.op_mload
  · exact hF.op_mstore
  · exact hF.op_mstore8
  · exact hF.op_sload
  · exact hF.op_sstore
  · exact hF.op_jump
  · exact hF.op_jumpi
  · exact fun M => j_op_pc M
  · exact fun M => j_op_msize M
  · exact fun M => j_op_gas M
  · exact fun M => j_op_jumpdest M
  · exact hF.op_tload
  · exact hF.op_tstore
  · exact hF.op_mcopy
  · exact hF.op_push
  · exact fun M => j_op_dup M
  · exact hF.op_swap
  · exact hF.op_log
  · exact fun M => j_op_dupn M
  · exact hF.op_swapn
  · exact hF.op_exchange
  · exact hF.op_create
  · exact hF.op_call
  · exact hF.op_callcode
  · exact hF.op_return
  · exact hF.op_delegatecall
  · exact hF.op_create2
  · exact hF.op_staticcall
  · exact hF.op_revert
  · exact hF.op_selfdestruct

theorem dispOK : dchk dispNames (declPair Guest.Software.guestFn_op_dispatch).2.2 = true := by
  decide +kernel

/-- **`op_dispatch`'s `run_frames` step spec**, open only in `FHyps`. -/
theorem op_dispatch_jSpec (hF : FHyps σ) (M : Nat) :
    JSpec σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (fun vs s Γ => vs.length = 1 ∧ PreOpX guestC tEV tCK GP GR M vs s Γ)
      (QStepX guestC tEV tCK GP GR) := by
  obtain ⟨_, hcode⟩ : PairValid (declPair Guest.Software.guestFn_op_dispatch) :=
    declPair_valid (List.getElem_mem (n := 577) (by decide)) ⟨_, rfl⟩
  exact disp_jSpec guestCtx_code Hooks.frameCfg_guestHooksR.hooks hF.opSteps hcode dispOK M

/-- **`run_frames`' conditional cost on the extension**, open only in `FHyps` and `op_dispatch`'s
cost. -/
theorem run_frames_condCost_F (hF : FHyps σ) {M Bop : Nat}
    (opCost : CondCost σ guestCtx guestC Hooks.guestHooksR (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) Bop) :
    CondCost σ guestCtx guestC Hooks.guestHooksR (nm "run_frames") (sg0 [])
      (PreInvX guestC tEV tCK GP GR M)
      (rfB M Bop 2 (max (1 + srBGuest + 0) 0 + 0) (finBnd Wire.finBsGuest)) :=
  run_frames_condCost_opX_R (op_dispatch_jSpec hF M) opCost

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.FHyps.preHyps
#print axioms InitECandidate.Solver.MemSafe.Frames.FHyps.opSteps
#print axioms InitECandidate.Solver.MemSafe.Frames.dispOK
#print axioms InitECandidate.Solver.MemSafe.Frames.op_dispatch_jSpec
#print axioms InitECandidate.Solver.MemSafe.Frames.run_frames_condCost_F
