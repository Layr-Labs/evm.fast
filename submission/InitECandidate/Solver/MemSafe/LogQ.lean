import InitECandidate.Solver.MemSafe.LogDefs

/-!
# The post of a log writer (package L)

`LogQ`: a returned run of a callee that appends log records (`emit_transfer_log`,
`incorporate_child_on_success`) leaves every list described by `LogSub`.
-/

namespace InitECandidate.Solver.MemSafe
open Flapjack Flapjack.PanSemStateFiniteExact

/-- **The post of a log writer**: with `p'` the allocator of the end state, `LogSub Γ Γ' p'.hp`. -/
def LogQ {σ : Type} (_ : List (ValueHOL 64)) (s : State σ) (Γ : Gam) (r : PanSemResultExact 64)
    (t : State σ) (Γ' : Gam) : Prop :=
  (∃ v, r = .returned v) ∧
    ∀ v, r = .returned v → ∀ p', ptrsOf t = some p' → LogSub Γ Γ' p'.hp s.memory t.memory

theorem logQ_sub {σ : Type} {vs : List (ValueHOL 64)} {s t : State σ} {Γ Γ' : Gam}
    {r : PanSemResultExact 64} {p' : Ptrs} (h : LogQ vs s Γ r t Γ') (hp : ptrsOf t = some p') :
    LogSub Γ Γ' p'.hp s.memory t.memory :=
  let ⟨v, hv⟩ := h.1
  h.2 v hv p' hp

end InitECandidate.Solver.MemSafe
