import InitECandidate.Solver.MemSafe.Ptx.PtT17

/-!
# F3g: loop 1's body
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem lstA_not_block {t : Nat} (h : IsLstA t) : t ∉ bkTys := by
  unfold bkTys blockTys recKTys
  rcases h with rfl | rfl <;> decide

theorem push_fin : ptAllNames.contains (nm "lst_push") = true := by decide_cbv

theorem lstPushSpec : SumSpecA σ guestCtx guestC (HR σ) (nm "lst_push") HtabEntries.lpSigA HtabEntries.LpPre
    HtabEntries.LpPW HtabEntries.LpPost :=
  HtabEntries.sumSpec_lst_push (Rec.foldOK_guestR (σ := σ)) Hooks.drvCfg_guestHooksR.mono Hooks.lstHooks_guestR

theorem pag_res {B : State σ → Prop} {En : Env} (hB : BLoc B) {u : State σ} (h : PAg B En u) {n : MlS} (hn : En n = none)
    (old : Option (ValueHOL 64)) : PAg B En { u with locals := u.locals.resVarEq (n, old) } :=
  ⟨hB _ _ _ h.1, lke_res h.2 hn old⟩

theorem resIns_PAg {B : State σ → Prop} {En : Env} (hB : BLoc B) {n : MlS} (hn : En n = none) :
    ResIns n (fun (r : Option (PanSemResultExact 64)) (t : State σ) => r = none ∧ PAg B En t) :=
  fun r t old h => ⟨h.1, pag_res hB h.2 hn old⟩

section body
variable {A : TlA σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {u : State σ} {Γ : Gam} {p : Ptrs}

/-- Kept block cells transported to the current typing. -/
theorem bc_ext (h : TlS A ref Z O u Γ p) {Γ0 : Gam} (hext : Ext Γ0 Γ)
    (hB : ∀ a, Z a → ∃ o ∈ Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k) :
    ∀ a, Z a → ∃ o ∈ Γ, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k := by
  intro a ha
  obtain ⟨o, ho, hot, k, hk, rfl⟩ := hB a ha
  obtain ⟨o1, ho1, hb, ht, hs⟩ := hext o ho
  refine ⟨o1, ho1, by rw [ht]; exact hot, k, ?_, by unfold Obj.cell; rw [hb]⟩
  unfold Obj.HasSlot at hk ⊢; omega

/-- A cell of an object that is no block object is not a kept block cell. -/
theorem z_ne_cell (h : TlS A ref Z O u Γ p) (hB : ∀ a, Z a → ∃ o ∈ Γ, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    {x : Obj} (hx : x ∈ Γ) (hxt : x.ty ∉ bkTys) {k : Nat} (hk : x.HasSlot k) : ¬ Z (x.cell k) := by
  intro hz
  obtain ⟨o, ho, hot, k', hk', he⟩ := hB _ hz
  obtain ⟨rfl, -⟩ := cell_inj (tl_ord h) (tl_layout h) hx ho hk hk' he
  exact hxt hot

end body

end InitECandidate.Solver.MemSafe.Ptx
