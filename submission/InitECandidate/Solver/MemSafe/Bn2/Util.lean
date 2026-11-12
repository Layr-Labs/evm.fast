import InitECandidate.Solver.MemSafe.Helpers.Basic

set_option autoImplicit false

/-! Argument helpers for the `Bn2` summaries. -/

namespace InitECandidate.Solver.MemSafe.Bn2
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe

/-- The value at index `i` of fitting arguments. -/
theorem argAt {C : Cfg} {Γ : Gam} {p : Ptrs} {ps : List PT} {vs : List (ValueHOL 64)}
    (hA : ArgsOK C Γ p ps vs) {i : Nat} {pt : PT} (hps : ps[i]? = some pt) :
    ∃ v, vs[i]? = some v ∧ ArgOK C Γ p vs pt v := by
  have hlen : i < vs.length := by
    rw [← hA.1]
    exact (List.getElem?_eq_some_iff.mp hps).1
  obtain ⟨v, hv⟩ : ∃ v, vs[i]? = some v := ⟨_, List.getElem?_eq_getElem hlen⟩
  exact ⟨v, hv, hA.2 i _ v hps hv⟩

theorem argWOf {vs : List (ValueHOL 64)} {i : Nat} {v : ValueHOL 64} {w : BitVec 64}
    (hv : vs[i]? = some v) (hw : wordOf v = some w) : argW vs i = some w := by
  rw [argW, hv]; exact hw

end InitECandidate.Solver.MemSafe.Bn2
