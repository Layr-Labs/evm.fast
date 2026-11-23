import InitECandidate.Solver.Improvements.BuilderTableLocalFacts
import InitECandidate.Solver.MemSafe.CsrCost.Span

/-! Read the table's actual count and use the existing live allocation span. -/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace BuilderHeapCount
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ExpHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Hooks

abbrev cap : Nat := 4127616

theorem count_load {σ : Type} {Γ : Gam} {s : State σ} {o : Obj}
    {table : ExpHOL 64} {v : ValueHOL 64}
    (hG : G guestC (guestHooksR (σ := σ)) Γ s) (ho : o ∈ Γ)
    (hkind : hkOf o.ty = .tab)
    (ht : ev s table = some (.val (.word o.base)))
    (hv : ev s (.load .one (.op .add [table, .const 24])) = some v) :
    ∃ cw : BitVec 64, v = .val (.word cw) ∧ cw.toNat ≤ cap := by
  obtain ⟨w, hw, _, rfl⟩ := ev_load_one hv
  rw [ev_add2 ht (ev_const (s := s) (24 : BitVec 64))] at hw
  simp only [Option.some.injEq, ValueHOL.val.injEq, HolWordLab.word.injEq] at hw
  subst w
  refine ⟨rd s.memory (o.base + BitVec.ofNat 64 24), ?_, ?_⟩
  · exact congrArg ValueHOL.val (mem_rd s.memory (o.base + BitVec.ofNat 64 24))
  · exact CsrCost.Span.g_table_count_live_span (htabHooks_guestR (σ := σ)) hG ho hkind

#print axioms count_load
end BuilderHeapCount
