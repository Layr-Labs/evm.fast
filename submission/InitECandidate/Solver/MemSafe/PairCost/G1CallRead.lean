import InitECandidate.Solver.MemSafe.PairCost.G1Read
set_option autoImplicit false
set_option maxHeartbeats 0
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem g1_call_no_hit {e out : ExpHOL 64} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} :
    Hoare σ guestCtx (fun s => ∃ A : BitVec 64,
      ev s e = some (.val (.word A)) ∧ ¬ Hit s.memaddrs A)
      (.decCall rn sh (nm "bn254_parse_g1") [e,out] k) (fun _ _ => False) := by
  refine hoare_decCallS G1.read_spec ?_
  intro s hs hp vs hvs callee v st hR hctx hshape
  obtain ⟨A,he,hno⟩ := hp
  obtain ⟨v0,vs0,rfl,hv0,ht0⟩ := evs_cons_inv hvs
  rw [he] at hv0
  cases hv0
  obtain ⟨vo,vs1,rfl,hvo,ht1⟩ := evs_cons_inv ht0
  change some [] = some vs1 at ht1
  cases ht1
  exact False.elim (hno (hR A vo v rfl rfl))
#print axioms g1_call_no_hit
end InitECandidate.Solver.MemSafe.PairCost.Read
