import InitECandidate.Solver.MemSafe.IvvhCost.Main
import InitECandidate.Solver.MemSafe.Ra.AttPart2a
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (MlS ProgHOL ExpHOL ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb InitECandidate.Solver.MemSafe.Att
namespace InitECandidate.Solver.MemSafe.IvvhCost.Caller
variable {σ : Type} {E : EbE σ}
  {si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD : BitVec 64} {En : Env} {S : FS}

theorem pre_at_call (hOk : Ok2 si0 pl0 ptxs0 ntx0 nwd0 T1 T2 z bsw skw bh nh H C WD En S) :
    ∀ s, InCtx s guestCtx → PA E En S s → ∀ vs, evs s [lv (nm "si")] = some vs →
      ∀ callee, InitECandidate.Solver.MemSafe.IvvhCost.Pre vs (callEntryStateHOLFinite s callee) := by
  intro s hs hpa vs hvs callee
  have hpa0 := hpa
  obtain ⟨⟨Γ, p, hr, hL⟩, hlk⟩ := hpa
  obtain ⟨v1, vs1, rfl, h1, hr1⟩ := evs_cons_inv hvs
  rw [evs_nil] at hr1
  cases hr1
  have hsi : En (nm "si") = some (.val (.word si0)) :=
    hOk.en _ _ (by simp (config := {decide := true}) [En2, Env.set])
  have e := evI_lv_pa hpa0 hsi v1 h1
  subst e
  have hpcv := hL (Fct.pcv (si0 + BitVec.ofNat 64 0) pl0) (hOk.sub _ (by simp [S2, S2b]))
  obtain ⟨o, ho, hb, ht, -⟩ := hL (Fct.obj pl0 tPL 136) (hOk.sub _ (by simp [S2, S2b]))
  exact InitECandidate.Solver.MemSafe.IvvhCost.pre_of_ivPre (ebRun_G (ebRun_loc hr callee (s.clock - 1)))
    (ivPre_of_facts (ebRun_G (ebRun_loc hr callee (s.clock - 1))) hpcv.1 ho hb ht)

#print axioms pre_at_call
end InitECandidate.Solver.MemSafe.IvvhCost.Caller
