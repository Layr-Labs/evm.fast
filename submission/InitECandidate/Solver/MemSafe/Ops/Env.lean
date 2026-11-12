import InitECandidate.Solver.MemSafe.Ops.PcStore
import InitECandidate.Solver.MemSafe.Ops.HLib
import InitECandidate.Solver.MemSafe.Hooks.Rec

/-!
# The checker environment for the hand-proved handlers (sonnet-ops)

`opsTab` = `gtab` plus `is_valid_jumpdest`, `u256_byte_length`, `u256_exp`, `to_address_masked`,
`access_gas_cost`, `acct_is_empty` (sub-table of
`ShardsJL.tab26`); `opsE` the environment; `callSem_opsE` the call semantics on a `GK` chain.
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

def opsTab : CTab :=
  gtab ++
  [(nm "is_valid_jumpdest", ⟨[.any], [], [], false⟩, []),
   (nm "u256_byte_length", ⟨[.any], [], [], false⟩, []),
   (nm "u256_exp", ⟨[.any, .any], [], [], false⟩, []),
   (nm "to_address_masked", ⟨[.any], [], [], false⟩, [⟨nm "ev", 0, [], false⟩]),
   (nm "access_gas_cost", ⟨[.any], [], [], false⟩, []),
   (nm "acct_is_empty", ⟨[.any], [], [], false⟩, []),
   (nm "require_not_static", ⟨[], [], [], false⟩, []),
   (nm "get_transient_storage", ⟨[.any, .any], [], [], false⟩, [⟨nm "sk_buf", 24, [], false⟩]),
   (nm "set_transient_storage", ⟨[.any, .any, .any], [], [Hooks.gJn], true⟩,
     [⟨nm "sk_buf", 24, [], false⟩, ⟨nm "journal", 9, [], true⟩, ⟨nm "*", 10, [], true⟩,
      ⟨nm "*", 14, [], true⟩, ⟨nm "*", 11, [], true⟩, ⟨nm "*", 42, [], true⟩,
      ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩])]

def opsFp : List MlS := opsTab.map (·.1)

def opsE : GEnv := ⟨opsTab, opsFp, [Hooks.gJn]⟩

theorem opsTab_sub : ∀ q ∈ opsTab, q ∈ ShardsJL.tab26 := by decide +kernel

theorem opsTab_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) opsTab :=
  fun f sg cs h => tabJL_guestR f sg cs (opsTab_sub _ h)

theorem opsFp_sub : ∀ f ∈ opsFp, f ∈ Shards.fptab26 := by decide +kernel

theorem opsFp_sound : ∀ f ∈ opsFp, KeepsFp σ guestCtx f := fun f h => Wire.keepsFp_guest (opsFp_sub f h)

/-- The checker's call semantics at `guestHooksR` for `opsE`. -/
theorem callSem_opsE {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) :
    CallSem σ guestCtx opsE (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) :=
  callSem_gk guestCtx_code Hooks.frameCfg_guestHooksR opsTab_sound opsFp_sound charge_fp hfs
    (fun g h => h)

end InitECandidate.Solver.MemSafe.Frames
