import InitECandidate.Solver.MemSafe.Trie.FillBody

set_option autoImplicit false
set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedTactic false
set_option linter.unreachableTactic false

/-!
# The `_node_rlp_fill` loop and the function, exception-inclusive
-/

namespace InitECandidate.Solver.MemSafe.Trie
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Helpers
open InitECandidate.Solver.Spec.Mpt InitECandidate.Solver.Spec.Mpt.Leaves

variable {σ : Type} {X : Ctx 64}

theorem foF_of_stepW {S0 : Nat} {Nd : BitVec 64 → Prop} {se t : State σ} {p : Ptrs}
    (hS : p.sp ≤ S0) (hp : ptrsOf se = some p) (h : StepW S0 Nd se t) : FoF se Nd p.hp S0 t := by
  obtain ⟨p0, q, hp0, hq, o1, a1, a2, a3, a4⟩ := h
  rw [hp] at hp0; cases hp0
  exact ⟨q, hq, o1, a1, by omega, a3, a4⟩

/-- **The loop.** -/
theorem loopG (hC : X.code.lookup = guestCode) (hA : AlignedDom X) (hT : DomTop X)
    (hNS : MemSafe.NullSafe X) (hX0 : DomBounded X) {Nd : BitVec 64 → Prop} {HP0 S0 : Nat}
    {se : State σ} :
    HoareG σ X (fun t => FInvX Nd HP0 S0 t ∧ FoF se Nd HP0 S0 t) (.while fillCond fillBody)
      (PG (fun t => FInvX Nd HP0 S0 t ∧ FoF se Nd HP0 S0 t) (FoF se Nd HP0 S0)) := by
  refine hoareG_while (I := fun t => FInvX Nd HP0 S0 t ∧ FoF se Nd HP0 S0 t) (fun s h => ⟨(finvX_congr (s := s) (t := decClockHOLFinite s) rfl rfl rfl rfl h.1).1,
    foF_of_eq (t := decClockHOLFinite s) h.2 rfl rfl⟩) ?_
    (fun s _ h _ => pg_none h)
  intro t ht ⟨hI, hcond⟩ hg
  have H := body_stepG hC hA hT hNS hX0 hI.1 hcond t ht rfl hg
  have hnoCB : ∀ r', (evaluateHOLFiniteState t fillBody).1 = some r' →
      ¬ (r' = .continue ∨ r' = .break) := fun r' hr' h => by
    have := (H.2 r' hr').1
    rcases this with ⟨e, v, e'⟩ | ⟨e, e'⟩ <;> rcases h with h | h <;> subst h <;> cases e'
  refine ⟨fun hr => ⟨(H.1 hr).1, foF_trans hI.2 (H.1 hr).2.2⟩, fun hr => ?_, fun hr => ?_,
    fun r' hr' _ _ => ?_⟩
  · exact absurd (Or.inl rfl) (hnoCB _ hr)
  · exact absurd (Or.inr rfl) (hnoCB _ hr)
  · rw [hr']; exact pg_abn (H.2 r' hr').1 (foF_trans hI.2 (H.2 r' hr').2)

end InitECandidate.Solver.MemSafe.Trie
