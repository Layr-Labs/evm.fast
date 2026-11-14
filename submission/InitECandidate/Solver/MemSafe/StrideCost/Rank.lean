import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.StrideCost
/-- The number of stride-sized steps left inside a finite half-open interval. -/
def rank (L stride offset : Nat) : Nat := if offset < L then (L-1-offset)/stride+1 else 0
theorem rank_le (L stride offset : Nat) : rank L stride offset ≤ (L-1)/stride+1 := by
 unfold rank
 split
 · exact Nat.add_le_add_right (Nat.div_le_div_right (Nat.sub_le (L-1) offset)) 1
 · exact Nat.zero_le _
theorem rank_decreases {L stride offset : Nat} (hs : 0 < stride) (ho : offset < L) :
 rank L stride (offset+stride) < rank L stride offset := by
 unfold rank
 rw [if_pos ho]
 by_cases hn : offset+stride < L
 · rw [if_pos hn]
   have he : L-1-offset = (L-1-(offset+stride))+stride := by omega
   rw [he,Nat.add_div_right _ hs]
   omega
 · rw [if_neg hn]
   exact Nat.zero_lt_succ _

variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
/-- A fixed positive stride permits the rank to count remaining steps rather than bytes. -/
theorem cost_while_addr_stride {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
 (addr : PanSemStateFiniteExact width σ → Option (BitVec width)) (lo : BitVec width)
 (L : Nat) (d : BitVec width) (hd : 0 < d.toNat) (hLd : L+d.toNat ≤ 2^width)
 (hb : Cost σ X body B)
 (hclk : ∀ s, addr (decClockHOLFinite s) = addr s)
 (hacc : ∀ t, InCtx t X → Completes t body →
  ∃ w, addr t = some w ∧ (w-lo).toNat < L ∧
   addr (evaluateHOLFiniteState t body).2 = some (w+d)) :
 Cost σ X (.while c body) (((L-1)/d.toNat+2)*(B+1)) := by
 have hc : Cost σ X (.while c body) ((((L-1)/d.toNat+1)+1)*(B+1)) := by
  refine cost_while (fun s => match addr s with
    | some w => rank L d.toNat (w-lo).toNat | none => 0) ((L-1)/d.toNat+1) hb ?_ ?_
  · intro s hs hp
    cases he : addr s with
    | none => simpa only [he] using (Nat.zero_le ((L-1)/d.toNat+1))
    | some w => simpa only [he] using rank_le L d.toNat (w-lo).toNat
  · intro s hs hp hc hexit
    obtain ⟨w,hw,hwL,hw'⟩ := hacc (decClockHOLFinite s) hs hexit
    rw [hclk] at hw
    (try dsimp only)
    rw [hw,hw']
    have hsum : (w+d-lo).toNat = (w-lo).toNat+d.toNat := by
     rw [add_sub_comm',BitVec.toNat_add,Nat.mod_eq_of_lt (by omega)]
    change rank L d.toNat (w+d-lo).toNat < rank L d.toNat (w-lo).toNat
    rw [hsum]
    exact rank_decreases hd hwL
 simpa only [Nat.add_assoc] using hc
#print axioms cost_while_addr_stride
end InitECandidate.Solver.MemSafe.StrideCost
