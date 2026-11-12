import InitECandidate.Solver.MemSafe.Init.Main10

/-!
# Init: `main`'s conditional cost
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.warning false
set_option cbv.maxSteps 4000000000
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Init
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Aw
open Guest.Software

variable {σ : Type}

theorem hoare_initCall {f : MlS} {pi po : List MlS} (hf : InitFS σ f pi po) :
    Hoare σ guestCtx (fun s => ∃ Γ, WI Γ pi s) (.call (some (none, none)) f [])
      (fun r t => r = none → ∃ Γ, WI Γ po t) := by
  refine Spec.hoare_callD hf ?_
  intro s hs ⟨Γ, hW⟩ vs hvs callee v st hR hst _
  obtain ⟨Γ', hW'⟩ := hR (by simp [Good]) v rfl Γ (wi_congr rfl hW)
  exact ⟨Γ', wi_congr rfl hW'⟩

theorem step_init {f : MlS} {pi po : List MlS} (hf : InitFS σ f pi po) {B : Nat}
    (hc : Cost σ guestCtx (.call (some (none, none)) f []) B) {k : ProgHOL 64} {Bk : Nat}
    (hk : Inv.CostP σ guestCtx (fun s => ∃ Γ, WI Γ po s) k Bk) :
    Inv.CostP σ guestCtx (fun s => ∃ Γ, WI Γ pi s) (.seq (.call (some (none, none)) f []) k) (B + Bk) :=
  Inv.costP_seq (R := fun s => ∃ Γ, WI Γ po s) (Inv.costP_of_cost hc) (hoare_initCall hf) hk

theorem memFS : FunSpec σ guestCtx (nmOf guestFn_mem_init)
    (fun vs s r t => Good (some r) → ∀ v, r = .returned v → PInit s → WI [] Pnd0 t) := by
  intro vs body callee rs hl s hs hloc r hr hg v rfl hP
  have hc : guestCode (nmOf guestFn_mem_init) = some (fnEntry guestFn_mem_init).2 :=
    initFns_valid _ (by simp [initFns])
  obtain ⟨rfl, rfl⟩ := AllocImpl.lookupCode_zero (by rw [guestCtx_code]; exact hc) hl
  have h : Hoare σ guestCtx (fun t => t = s) (initBody guestFn_mem_init) (fun r t => WI [] Pnd0 t) := by
    rw [memBody_eq]; exact hoare_memBody s hP
  have hr' : (s.evaluateHOLFiniteState (initBody guestFn_mem_init)).1 = some (.returned v) := hr
  have := h s hs rfl (by rw [hr']; trivial)
  exact this

theorem step_mem {B : Nat} (hc : Cost σ guestCtx (.call (some (none, none)) (nmOf guestFn_mem_init) []) B)
    {k : ProgHOL 64} {Bk : Nat} (hk : Inv.CostP σ guestCtx (fun s => ∃ Γ, WI Γ Pnd0 s) k Bk) :
    Inv.CostP σ guestCtx PInit (.seq (.call (some (none, none)) (nmOf guestFn_mem_init) []) k) (B + Bk) := by
  refine Inv.costP_seq (R := fun s => ∃ Γ, WI Γ Pnd0 s) (Inv.costP_of_cost hc) ?_ hk
  refine Spec.hoare_post (Spec.hoare_callD (memFS (σ := σ)) ?_) (fun r t _ _ h => h)
  intro s hs hP vs hvs callee v st hR hst _
  exact ⟨[], hR (by simp [Good]) v rfl hP⟩

def bPre (Bv : Nat) : Nat :=
  ((1 + tbN "mem_init" + 0) + ((1 + tbN "sha256_init" + 0) + ((1 + tbN "keccak_init" + 0) + ((1 + tbN "ssz_init" + 0) + ((1 + tbN "mpt_init" + 0) + ((1 + tbN "u256_ws_init" + 0) + ((1 + tbN "secp256k1_init" + 0) + ((1 + tbN "bn254_init" + 0) + ((1 + tbN "bls_precompiles_init" + 0) + ((1 + tbN "ripemd160_init" + 0) + ((1 + tbN "blake2_init" + 0) + ((1 + tbN "header_init" + 0) + ((1 + tbN "evm_init" + 0) + ((1 + tbN "fork_init" + 0) + bRest Bv))))))))))))))

end InitECandidate.Solver.MemSafe.Init
