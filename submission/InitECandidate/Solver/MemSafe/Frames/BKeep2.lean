import InitECandidate.Solver.MemSafe.Frames.SCRunT

/-!
# Block keep: composition helpers over `RunT` (package K)

* `bkeep_of_runT_core`: a `RunT` followed by a step that keeps the block cells of the run's end
  typing keeps those of the start typing;
* `bkeep_of_runT_sumCore`: the same for a summary core whose cell set misses the block cells.
-/

set_option autoImplicit false

namespace InitECandidate.Solver.MemSafe.Frames
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

variable {σ : Type} {C : Cfg} {H : Hooks σ}

theorem bkeep_of_runT_core {gw : List MlS} {Γ0 Γ1 : Gam} {s0 u e t : State σ} {p0 p1 : Ptrs}
    (hrun : RunT C H gw Γ0 s0 Γ1 u p0 p1) (he : e.memory = u.memory) (hb : BKeep C Γ1 e t) :
    BKeep C Γ0 s0 t :=
  bkeep_trans hrun.2.2.2.1 (bkeep_of_runT hrun) (bkeep_congr he.symm rfl hb)

theorem bkeep_of_runT_sumCore {gw : List MlS} {sg : Sig} {PW : BitVec 64 → Prop}
    {Γ0 Γ1 Γ' : Gam} {s0 u e t : State σ} {p0 p1 q q' : Ptrs} {vs : List (ValueHOL 64)}
    {r : PanSemResultExact 64}
    (hrun : RunT C H gw Γ0 s0 Γ1 u p0 p1) (he : e.memory = u.memory) (hG : G C H Γ1 e)
    (hargs : ArgsOK C Γ1 q sg.params vs) (hc : SumCore C H sg PW Γ1 e vs r t Γ' q q')
    (hPW : ∀ a, PW a → ¬ KCell C Γ1 a) : BKeep C Γ0 s0 t :=
  bkeep_of_runT_core hrun he (bkeep_of_sumCore hG hargs hc hPW)

/-- `BufOK` survives a summarized call. -/
theorem bufOK_sumCore {sg : Sig} {PW : BitVec 64 → Prop} {Γ Γ' : Gam} {s t : State σ}
    {vs : List (ValueHOL 64)} {r : PanSemResultExact 64} {p p' : Ptrs} (hG : G C H Γ s)
    (hc : SumCore C H sg PW Γ s vs r t Γ' p p') {b n : Nat} (hb : BufOK C Γ p b n) :
    BufOK C Γ' p' b n := by
  obtain ⟨h1, h2, h3, h4, h5, h6, -⟩ := hc
  obtain ⟨q, hq, hord, -⟩ := hG
  obtain rfl : q = p := Option.some.inj (hq.symm.trans h1)
  obtain ⟨q', hq', hord', -⟩ := h6
  obtain rfl : q' = p' := Option.some.inj (hq'.symm.trans h2)
  exact bufOK_step hord hord' h3 h4 h5 hb

end InitECandidate.Solver.MemSafe.Frames

#print axioms InitECandidate.Solver.MemSafe.Frames.bkeep_of_runT_sumCore
