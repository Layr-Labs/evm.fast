import InitECandidate.Solver.MemSafe.Hooks.List

set_option autoImplicit false

/-!
# The node types have the trivial hook in `guestHooksJL`

`wf Γ s o` holds for every object of the four MPT node types (`nhashedTy`, `nleafTy`, `nextTy`,
`nbranchTy`): they are none of the EV, table-header, journal, list types (`hkOf = .none`).
-/

namespace InitECandidate.Solver.MemSafe.Node
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types InitECandidate.Solver.MemSafe.Hooks

/-- The four node types. -/
def nodeTys : List Nat := [Types.tNHASHED, Types.tNLEAF, Types.tNEXT, Types.tNBRANCH]

theorem nodeHooks_guestJL {σ : Type} : ∀ (Γ : Gam) (s : State σ) (o : Obj), o.ty ∈ nodeTys →
    (guestHooksJL (σ := σ)).wf Γ s o := by
  intro Γ s o ht
  have h1 : o.ty ≠ tEV ∧ o.ty ∉ hdrTys ∧ o.ty ≠ tJOURNAL ∧ o.ty ∉ lstTys := by
    simp only [nodeTys, List.mem_cons, List.not_mem_nil, or_false] at ht
    rcases ht with h | h | h | h <;> rw [h] <;> decide
  exact ⟨⟨gwf_none (hkOf_none h1.1 h1.2.1), fun hj => absurd hj h1.2.2.1⟩,
    fun hl => absurd hl h1.2.2.2⟩

end InitECandidate.Solver.MemSafe.Node

#print axioms InitECandidate.Solver.MemSafe.Node.nodeHooks_guestJL
