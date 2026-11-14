import InitECandidate.Solver.MemSafe.ArrayCost.ScaledCallReads
import InitECandidate.Solver.MemSafe.SlotCost.ScaledLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.SlotCost.Read
open InitECandidate.Solver.MemSafe.SlotCost.Read
open InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
def slotReadLoopOk (b : ProgHOL 64) : Bool :=
  match b with
  | .dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]])
      rest =>
      readSlotB slot rest && isProjectedBase i B &&
        decide (1 ≤ k.toNat ∧ k.toNat ≤ addrStepMax) && stepsB i true b && projectedBaseKeptB B b
  | _ => false

theorem slotReadLoopOk_sound {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
    (h : slotReadLoopOk b = true) (hb : Cost σ guestCtx b C) :
    Cost σ guestCtx (.while c b) ((2^35 + alignSlack 64 + 1)*(C+1)) := by
  unfold slotReadLoopOk at h
  split at h
  · rename_i slot B i k rest
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨hr,hB⟩,⟨hk1,hk2⟩⟩,hst⟩,hkb⟩ := h
    exact scaled_loop_cost hB hr hk1 hk2 hst hkb hb
  · cases h
def slotOrCallLoopOk (b : ProgHOL 64) : Bool := slotReadLoopOk b || InitECandidate.Solver.MemSafe.ArrayCost.Read.callScaledReadLoopOk b
theorem slotOrCallLoopOk_sound (hX : DomBounded guestCtx) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : slotOrCallLoopOk b = true) (hb : Cost σ guestCtx b C) :
 Cost σ guestCtx (.while c b) ((2^35 + alignSlack 64 + 1)*(C+1)) := by
 rcases Bool.or_eq_true_iff.mp h with h | h
 · exact slotReadLoopOk_sound h hb
 · exact InitECandidate.Solver.MemSafe.ArrayCost.Read.callScaledReadLoopOk_sound hX h hb
#print axioms slotReadLoopOk_sound
#print axioms slotOrCallLoopOk_sound
end InitECandidate.Solver.MemSafe.SlotCost.Read
