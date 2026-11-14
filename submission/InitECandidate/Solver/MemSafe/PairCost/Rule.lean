import InitECandidate.Solver.MemSafe.PairCost.G1ScaledLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
def g1ReadLoopOk (b : ProgHOL 64) : Bool :=
  match b with
  | .dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]])
      (.decCall rn sh f [.var .local arg,out] rest) =>
      decide (f = nm "bn254_parse_g1" ∧ arg = slot) && isBase i B &&
        decide (1 ≤ k.toNat ∧ k.toNat ≤ addrStepMax) && stepsB i true b && baseKeptB B b
  | _ => false

theorem g1ReadLoopOk_sound {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
    (h : g1ReadLoopOk b = true) (hb : Cost σ guestCtx b C) :
    Cost σ guestCtx (.while c b) ((2^35 + alignSlack 64 + 1)*(C+1)) := by
  unfold g1ReadLoopOk at h
  split at h
  · rename_i slot B i k rn sh f arg out rest
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨⟨rfl,rfl⟩,hB⟩,⟨hk1,hk2⟩⟩,hst⟩,hkb⟩ := h
    exact g1_scaled_loop_cost hB hk1 hk2 hst hkb hb
  · cases h
#print axioms g1ReadLoopOk_sound
end InitECandidate.Solver.MemSafe.PairCost.Read
