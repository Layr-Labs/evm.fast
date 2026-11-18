import InitECandidate.Solver.SourceCost.LoopExtra.AddrLoop
import InitECandidate.Solver.SourceCost.LoopExtra.FlagLoop
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.DivCost.Reverse.Rank
def rank (L d x : Nat) : Nat := if x<L then x/d+1 else 0
theorem rank_le (L d x : Nat) : rank L d x ≤ (L-1)/d+1 := by
 unfold rank
 split
 · apply Nat.add_le_add_right
   apply Nat.div_le_div_right
   omega
 · exact Nat.zero_le _
theorem rank_decreases {N L d x : Nat} (hd : 0<d) (hL : L+d≤N) (hx : x<L) :
 rank L d ((N+x-d)%N) < rank L d x := by
 have hN : 0<N := by omega
 unfold rank
 rw [if_pos hx]
 by_cases hdx : d≤x
 · have he : N+x-d=N+(x-d) := by omega
   have hxN : x-d<N := by omega
   rw [he,Nat.add_mod_left,Nat.mod_eq_of_lt hxN,if_pos (by omega)]
   have he' : x=(x-d)+d := by omega
   conv => rhs; rw [he',Nat.add_div_right _ hd]
   omega
 · have hh : N+x-d<N := by omega
   rw [Nat.mod_eq_of_lt hh,if_neg (by omega)]
   exact Nat.zero_lt_succ _
variable {width : Nat} [NeZero width] {σ : Type} {X : Ctx width}
theorem cost_while_addr_stride {c : ExpHOL width} {body : ProgHOL width} {B : Nat}
 (addr : PanSemStateFiniteExact width σ → Option (BitVec width)) (lo : BitVec width)
 (L : Nat) (d : BitVec width) (hd : 0<d.toNat) (hLd : L+d.toNat≤2^width)
 (hb : Cost σ X body B)
 (hclk : ∀ s, addr (decClockHOLFinite s)=addr s)
 (hacc : ∀ t, InCtx t X → CondTrue t c → Completes t body →
  ∃ w, addr t=some w ∧ (w-lo).toNat<L ∧ addr (evaluateHOLFiniteState t body).2=some (w-d)) :
 Cost σ X (.while c body) (((L-1)/d.toNat+2)*(B+1)) := by
 have hc : Cost σ X (.while c body) ((((L-1)/d.toNat+1)+1)*(B+1)) := by
  refine cost_while (fun s => match addr s with
   | some w => rank L d.toNat (w-lo).toNat | none => 0) ((L-1)/d.toNat+1) hb ?_ ?_
  · intro s hs hp
    cases he : addr s with
    | none => simpa only [he] using (Nat.zero_le ((L-1)/d.toNat+1))
    | some w => simpa only [he] using rank_le L d.toNat (w-lo).toNat
  · intro s hs hp hc hexit
    obtain ⟨w,hw,hL,hw'⟩ := hacc (decClockHOLFinite s) hs (condTrue_decClock.mpr hp) hexit
    rw [hclk] at hw
    (try dsimp only)
    rw [hw,hw']
    have he : (w-d-lo).toNat=(2^width+(w-lo).toNat-d.toNat)%2^width := by
     have hs : w-d-lo=(w-lo)-d := by
      rw [BitVec.sub_sub,BitVec.sub_sub,BitVec.add_comm d lo]
     rw [hs,BitVec.toNat_sub]
     congr 1
     have := BitVec.isLt d
     omega
    change rank L d.toNat (w-d-lo).toNat < rank L d.toNat (w-lo).toNat
    rw [he]
    exact rank_decreases hd hLd hL
 simpa only [Nat.add_assoc] using hc
#print axioms cost_while_addr_stride
end InitECandidate.Solver.MemSafe.DivCost.Reverse.Rank
