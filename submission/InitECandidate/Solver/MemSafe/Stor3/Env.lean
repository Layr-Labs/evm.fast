import InitECandidate.Solver.MemSafe.Stor3.Lib

set_option autoImplicit false

/-!
# The checker environment of the storage handlers (sonnet-store3)

`s3Tab` = `opsTab` plus the plain (all-`any`) callees the three handlers use.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

def s3Tab : CTab :=
  opsTab ++
  [(nm "is_warm_storage_key", ⟨[.any, .any], [], [], false⟩, [⟨nm "sk_buf", 24, [], false⟩]),
   (nm "warm_storage_key", ⟨[.any, .any], [], [], true⟩,
     [⟨nm "sk_buf", 24, [], false⟩, ⟨nm "*", 10, [], true⟩, ⟨nm "*", 14, [], true⟩,
      ⟨nm "*", 11, [], true⟩, ⟨nm "*", 12, [], true⟩, ⟨nm "*", 42, [], true⟩,
      ⟨nm "*", 43, [], true⟩, ⟨nm "*", 44, [], true⟩, ⟨nm "*", 45, [], true⟩, ⟨nm "*", 55, [], true⟩, ⟨nm "*", 65, [], true⟩, ⟨nm "*", 66, [], true⟩, ⟨nm "*", 67, [], true⟩, ⟨nm "*", 68, [], true⟩, ⟨nm "*", 69, [], true⟩, ⟨nm "*", 70, [], true⟩, ⟨nm "*", 71, [], true⟩]),
   (nm "check_gas", ⟨[.any], [], [], false⟩, []),
   (nm "max", ⟨[.any, .any], [], [], false⟩, []),
   (nm "memeq", ⟨[.any, .any, .any], [], [], false⟩, []),
   (nm "htab_has", ⟨[.any, .any], [], [], false⟩, []),
   (nm "is_warm_address", ⟨[.any], [], [], false⟩, [])]

def s3Fp : List MlS := s3Tab.map (·.1)

def s3E : GEnv := ⟨s3Tab, s3Fp, [Hooks.gJn]⟩

theorem s3Tab_sub : ∀ q ∈ s3Tab, q ∈ ShardsJL.tab26 := by decide +kernel

theorem s3Tab_sound : CTabSound σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) s3Tab :=
  fun f sg cs h => tabJL_guestR f sg cs (s3Tab_sub _ h)

theorem s3Fp_sub : ∀ f ∈ s3Fp, f ∈ Shards.fptab26 := by decide +kernel

theorem s3Fp_sound : ∀ f ∈ s3Fp, KeepsFp σ guestCtx f :=
  fun f h => Wire.keepsFp_guest (s3Fp_sub f h)

/-- The checker's call semantics at `guestHooksR` for `s3E`. -/
theorem callSem_s3E {Γ0 : Gam} {s0 : State σ} {p0 : Ptrs} {fs : List Frame} {e c : BitVec 64}
    {rest : List Frame} (hfs : fs = (e, c) :: rest) :
    CallSem σ guestCtx s3E (GK (Hooks.guestHooksR (σ := σ)) [Hooks.gJn] Γ0 s0 p0 fs) :=
  callSem_gk guestCtx_code Hooks.frameCfg_guestHooksR s3Tab_sound s3Fp_sound charge_fp hfs
    (fun g h => h)

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.callSem_s3E
