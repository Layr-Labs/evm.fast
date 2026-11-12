import InitECandidate.Solver.MemSafe.BalEnc.Defs
import InitECandidate.Solver.MemSafe.Aw.Hdr

set_option autoImplicit false

/-!
# Calling an `AWSpecG` whose precondition depends on the current typing

`asp_of_awG2`: like `asp_of_awG`, but the precondition `Pre vs s Γ' h0` may use the current
typing `Γ'` of the invariant, and is derived from a typing-free `Pre'` together with `G` and
`Ext a.Γ0 Γ'` (so the callee's cover for in-place writes can be read off the current `G`).
-/

set_option maxRecDepth 100000
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.BalEnc
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Helpers InitECandidate.Solver.MemSafe.Hooks
open InitECandidate.Solver.MemSafe.Aw

variable {σ : Type} {X : Ctx 64}

/-- `awInv_aw` where the call hypothesis also gets `Ext a.Γ0 Γ'`. -/
theorem awInv_aw2 {a : AwE σ} (hK : AwOK a) {s t : State σ} (h : AwInv a s)
    {gw' : List MlS} (hgw : ∀ g, g ∈ gw' → g ∈ a.gw)
    (hcall : ∀ (Γ' : Gam) (p' : Ptrs), G a.C a.H Γ' s → Ext a.Γ0 Γ' → ptrsOf s = some p' →
      Below Γ' a.h0 → a.h0 % 8 = 0 → a.h0 ≤ p'.hp → ∃ (Γ'' : Gam) (p'' : Ptrs), G a.C a.H Γ'' t ∧
        ptrsOf t = some p'' ∧ Ext Γ' Γ'' ∧ NewFresh Γ' Γ'' p' p'' ∧ Below Γ'' a.h0 ∧ p'.Mono p'' ∧
        ModifiesOnly (fun x => a.h0 ≤ x.toNat ∨ WCell a.C Γ' x ∨ ¬ p'.Allocated x.toNat) s.memory
          t.memory ∧
        (∀ g ∈ a.C.PG, g ∉ gw' → t.globals.lookup g = s.globals.lookup g)) : AwInv a t := by
  obtain ⟨Γ', p', hG, hp, h1, h2, h3, h4, h5, h6⟩ := h
  have hle : a.h0 ≤ p'.hp := by
    have := hK.hle
    unfold Ptrs.Mono at h4
    omega
  obtain ⟨Γ'', p'', hG'', hp'', e1, e2, e3, e4, e5, e6⟩ := hcall Γ' p' hG h1 hp h3 hK.h8 hle
  have hord'' : p''.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG''
    rw [hp''] at hq
    cases hq
    exact ho
  have hord' : p'.Ordered := by
    obtain ⟨q, hq, ho, -⟩ := hG
    rw [hp] at hq
    cases hq
    exact ho
  have hS : Sub Γ' Γ'' := sub_of_newFresh_below e2 e3 hord' hord'' hle (obj_pos hG'')
  refine ⟨Γ'', p'', hG'', hp'', ext_trans' h1 e1, sub_trans h2 hS, e3, mono_trans' h4 e4, ?_, ?_⟩
  · intro x hx
    have hnm : ¬ (a.h0 ≤ x.toNat ∨ WCell a.C Γ' x ∨ ¬ p'.Allocated x.toNat) := by
      intro hh
      apply hx
      rcases hh with hh | hh | hh
      · exact Or.inl hh
      · exact Or.inr (Or.inl (wcell_of_sub h2 (obj_hi_le hG) hh))
      · exact Or.inr (Or.inr (fun hal => hh (allocated_mono' h4 hal)))
    rw [e5 x hnm]
    exact h5 x hx
  · intro g hg1 hg2
    rw [e6 g hg1 (fun hh => hg2 (hgw g hh))]
    exact h6 g hg1 hg2

/-- `asp_of_awG`, with the precondition built from the current typing. -/
theorem asp_of_awG2 {a : AwE σ} (hK : AwOK a) {f : MlS} {gw' : List MlS}
    {Pre : List (ValueHOL 64) → State σ → Gam → Nat → Prop}
    {Post : List (ValueHOL 64) → State σ → ValueHOL 64 → State σ → Prop}
    (hf : AWSpecG σ X a.C a.H f gw' Pre Post) (hgw : ∀ g, g ∈ gw' → g ∈ a.gw)
    {Pre' : List (ValueHOL 64) → State σ → Prop}
    (hP : ∀ vs s Γ, G a.C a.H Γ s → Ext a.Γ0 Γ → Pre' vs s → Pre vs s Γ a.h0)
    {Ret : List (ValueHOL 64) → ValueHOL 64 → State σ → Prop}
    (hR : ∀ vs s v t, Post vs s v t → Ret vs v t) :
    ASp a X f Pre' Ret := by
  intro vs body callee rs hl s hs hloc r hr hinv hP' v hv
  subst hv
  have h1 := hf vs body callee rs hl s hs hloc _ hr v rfl
  have hinv0 := hinv
  obtain ⟨Γ', p', hG, hp, e1, e2, e3, e4, -⟩ := hinv0
  have hle : a.h0 ≤ p'.hp := by
    have := hK.hle
    unfold Ptrs.Mono at e4
    omega
  obtain ⟨Γ'', p'', c1, c2, c3, c4, c5, c6, c7, c8, c9⟩ :=
    h1 Γ' a.h0 p' hG hp e3 hK.h8 hK.hbase hle (hP vs s Γ' hG e1 hP')
  exact ⟨awInv_aw2 hK hinv hgw (fun Γ1 p1 hG1 hE1 hp1 hB1 h81 hle1 => by
    obtain ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8, -⟩ := hf vs body callee rs hl s hs hloc _ hr v rfl
      Γ1 a.h0 p1 hG1 hp1 hB1 h81 hK.hbase hle1 (hP vs s Γ1 hG1 hE1 hP')
    exact ⟨Γ2, p2, d1, d2, d3, d4, d5, d6, d7, d8⟩), hR vs s v _ c9⟩

end InitECandidate.Solver.MemSafe.BalEnc
