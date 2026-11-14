import InitECandidate.Solver.MemSafe.PairCost.FromBeRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}

theorem from_be_call_no_hit {e : ExpHOL 64} {rn : MlS} {sh : ShapeHOL} {k : ProgHOL 64} :
    Hoare σ guestCtx (fun s => ∃ A : BitVec 64,
      ev s e = some (.val (.word A)) ∧ ¬ Hit s.memaddrs A)
      (.decCall rn sh (nm "u256_from_be") [e,.const 32] k) (fun _ _ => False) := by
  refine hoare_decCallS FromBe.read_spec ?_
  intro s hs hp vs hvs callee v st hR hctx hshape
  obtain ⟨A,he,hno⟩ := hp
  obtain ⟨v0,vs0,rfl,hv0,ht0⟩ := evs_cons_inv hvs
  rw [he] at hv0
  cases hv0
  obtain ⟨v1,vs1,rfl,hv1,ht1⟩ := evs_cons_inv ht0
  change some (.val (.word (32 : BitVec 64))) = some v1 at hv1
  cases hv1
  change some [] = some vs1 at ht1
  cases ht1
  exact False.elim (hno (hR A v rfl rfl))
#print axioms from_be_call_no_hit
end InitECandidate.Solver.MemSafe.PairCost.Read
