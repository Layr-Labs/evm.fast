import InitECandidate.Solver.MemSafe.BalEnc.BblDefs

set_option autoImplicit false

/-!
# `build_block_access_list_rlp`, phase 2: an above-writer

`hoareG_phase2`: from `APre a (Hs [])` (entry data `a` at `guestCS` / `nwH guestHooksR`, `bal_accounts`
a non-null table of the entry typing), `phase2` ends by returning `<start, len>` with `h0 ≤ start`,
`start + len ≤ B0`, `AwInv` kept.
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option synthInstance.maxSize 100000
set_option synthInstance.maxHeartbeats 1000000

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type}

theorem item_C : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) (nm "htab_item")
    ⟨[.any, .any], [], [], false⟩ [] :=
  ctab% InitECandidate.Solver.MemSafe.Rec.tab26_guestR

/-- A two-`any`-argument non-growing table entry of the BAL set, as an `ASp`. -/
theorem asp_cs_any2 {a : AwE σ} (hK : AwOK a) (hc : CsE a) {f : MlS}
    (hex : FunSpec σ guestCtx f (fun _ s _ t => ∀ g ∈ Bal.bal4, t.globals.lookup g = s.globals.lookup g))
    (hC : CSumm σ guestCtx guestC (guestHooksR (σ := σ)) f ⟨[.any, .any], [], [], false⟩ []) :
    ASp a guestCtx f (fun vs _ => ∃ A B, vs = [A, B]) (fun _ _ _ => True) := by
  have hf : CSumm σ guestCtx a.C a.H f ⟨[.any, .any], [], [], false⟩ [] := by
    rw [hc.C, hc.H]
    exact csumm_cs (fun pt hpt => by
      simp only [List.mem_cons, List.not_mem_nil, or_false] at hpt
      rcases hpt with rfl | rfl <;> exact ⟨(fun n h => nomatch h), (fun i c d h => nomatch h)⟩) hex hC
  refine asp_pre_inv (asp_of_cs hK hf rfl (fun g hg => absurd hg (by simp))) ?_
  intro vs s hinv ⟨A, B, hvs⟩
  obtain ⟨Γ', p', hG, hp, -⟩ := hinv
  subst hvs
  refine ⟨rfl, p', hp, fun i pt v hpt hv => ?_⟩
  rcases i with _ | _ | i <;> simp at hpt <;> subst hpt <;> trivial

theorem asp_htab_item {a : AwE σ} (hK : AwOK a) (hc : CsE a) :
    ASp a guestCtx (nm "htab_item") (fun vs _ => ∃ A B, vs = [A, B]) (fun _ _ _ => True) :=
  asp_cs_any2 hK hc (Bal.funSpec_bal_gw4 SourceCost.guestCtx_code (f := nm "htab_item") (by decide_cbv)) item_C

/-- The `bal_accounts` global is the entry table (an object of the entry typing), at any state of the invariant. -/
theorem ba_ev {a : AwE σ} (hc : CsE a) (hBA : Bal.BalNN a.s0 a.Γ0) {t : State σ} (hinv : AwInv a t)
    (hgw : a.gw = []) : ∃ B ∈ a.Γ0, B.ty = tHTd20 ∧ ev t (gE "bal_accounts") = some (.val (.word B.base)) := by
  obtain ⟨Γ', p', hG, hp, e1, e2, e3, e4, e5, e6⟩ := hinv
  have hmem : nm "bal_accounts" ∈ a.C.PG := by
    rw [hc.C]
    simp only [guestCS, List.mem_append]
    right
    decide
  have h1 := e6 _ hmem (by rw [hgw]; simp)
  obtain ⟨B, hB, hBt, hBg⟩ := hBA
  have h2 : a.s0.globals.lookup (nm "bal_accounts") = some (.val (.word B.base)) := by
    unfold gword at hBg
    split at hBg
    · rename_i w hw
      cases hBg
      exact hw
    · cases hBg
  exact ⟨B, hB, hBt, by unfold gE; rw [ev_gv, h1, h2]⟩

theorem ba_fits {a : AwE σ} (hc : CsE a) (hBA : Bal.BalNN a.s0 a.Γ0) {t : State σ} (hinv : AwInv a t)
    (hgw : a.gw = []) {v : ValueHOL 64} (hT : ev t (gE "bal_accounts") = some v) :
    ∃ T : BitVec 64, v = .val (.word T) ∧ Fits a.Γ0 (.ptr tHTd20) T := by
  obtain ⟨B, hB, hBt, hev⟩ := ba_ev hc hBA hinv hgw
  rw [hev] at hT
  cases hT
  exact ⟨B.base, rfl, B, hB, rfl, hBt⟩

end InitECandidate.Solver.MemSafe.BalEnc
