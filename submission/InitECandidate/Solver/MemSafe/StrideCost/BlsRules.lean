import InitECandidate.Solver.MemSafe.StrideCost.Bls
import InitECandidate.Solver.MemSafe.StrideCost.Rules
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.StrideCost.BlsRules
open InitECandidate.Solver.MemSafe.BlsSlotCost.Read
open InitECandidate.Solver.MemSafe.PairCost.Read
open InitECandidate.Solver.MemSafe.ArrayCost.Read
variable {σ : Type} {X : Ctx 64}
def slotStride : ProgHOL 64 → Nat
 | .dec _ .one (.op .add [_,.panop .mul [.var .local _,.const k]]) _ => k.toNat
 | _ => 1
def callStride (b : ProgHOL 64) : Nat :=
 match callScaledAccessB b with | some (_,_,k) => k.toNat | none => 1

theorem slot_factor_sound {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : slotReadLoopOk b = true) (hb : Cost σ guestCtx b C) :
 Cost σ guestCtx (.while c b) (((2^35+alignSlack 64-1)/slotStride b+2)*(C+1)) := by
 unfold slotReadLoopOk at h
 split at h
 · rename_i slot B i k rest
   simp only [Bool.and_eq_true,decide_eq_true_eq] at h
   obtain ⟨⟨⟨⟨hr,hB⟩,⟨hk1,hk2⟩⟩,hst⟩,hkb⟩ := h
   exact InitECandidate.Solver.MemSafe.StrideCost.Bls.scaled_loop_cost_stride hB hr hk1 hk2 hst hkb hb
 · cases h

theorem call_factor_sound (hX : DomBounded X) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : callScaledReadLoopOk b = true) (hb : Cost σ X b C) :
 Cost σ X (.while c b) (((2^35+alignSlack 64-1)/callStride b+2)*(C+1)) := by
 unfold callScaledReadLoopOk at h
 split at h
 · rename_i B i k hacc
   simp only [Bool.and_eq_true,decide_eq_true_eq] at h
   obtain ⟨⟨⟨hk1,hk2⟩,hst⟩,hkb⟩ := h
   obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
   have hLs : L+alignSlack 64 ≤ 2^64 := by omega
   have hc : Cost σ X (.while c b) (((L+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
    refine InitECandidate.Solver.MemSafe.StrideCost.cost_while_addr_stride (scaledAddr B i k) lo (L+alignSlack 64) k
     (by omega) (by omega) hb (fun _ => rfl) ?_
    intro t ht hdone
    obtain ⟨w,hw,hhit⟩ := callScaledAccessB_hit hacc hdone
    refine ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),?_⟩
    have hsteps := stepsB_sound (σ := σ) i true b hst
    have hw' := hw
    unfold scaledAddr at hw'
    cases hv : wordLocal t i with
    | none => rw [hv] at hw'; split at hw' <;> simp_all
    | some v =>
     have hv' := wordLocal_some hv
     have hd := hsteps t v hv' hdone
     have hnext := scaledAddr_step hw hv' hd (baseKept hkb hdone)
     simpa using hnext
   simp only [callStride,hacc]
   apply hc.mono
   apply Nat.mul_le_mul_right
   apply Nat.add_le_add_right
   apply Nat.div_le_div_right
   omega
 · cases h

def factor (b : ProgHOL 64) : Nat :=
 (2^35+alignSlack 64-1)/(if slotReadLoopOk b then slotStride b else callStride b)+2

theorem factor_sound (hX : DomBounded guestCtx) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : slotOrCallLoopOk b = true) (hb : Cost σ guestCtx b C) :
 Cost σ guestCtx (.while c b) (factor b*(C+1)) := by
 by_cases hs : slotReadLoopOk b = true
 · simpa [factor,hs] using slot_factor_sound hs hb
 · have hc : callScaledReadLoopOk b = true := by
    unfold slotOrCallLoopOk at h
    rcases Bool.or_eq_true_iff.mp h with h | h
    · exact False.elim (hs h)
    · exact h
   simpa [factor,hs] using call_factor_sound hX hc hb
#print axioms factor_sound
end InitECandidate.Solver.MemSafe.StrideCost.BlsRules

namespace InitECandidate.Solver.MemSafe.StrideCost.BlsBest
variable {σ : Type}
def factor (c : ExpHOL 64) (b : ProgHOL 64) : Nat :=
 match unsignedConstF c b with
 | some F => min (InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor b) F
 | none => InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor b

theorem factor_sound (hX : DomBounded guestCtx) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : InitECandidate.Solver.MemSafe.BlsSlotCost.Read.slotOrCallLoopOk b = true)
 (hb : Cost σ guestCtx b C) : Cost σ guestCtx (.while c b) (factor c b*(C+1)) := by
 have hp := InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor_sound (c := c) hX h hb
 cases hf : unsignedConstF c b with
 | none => simpa only [factor,hf] using hp
 | some F =>
  have hu := unsignedConstF_sound hf hb
  by_cases hle : InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor b ≤ F
  · simpa only [factor,hf,Nat.min_eq_left hle] using hp
  · have hle' : F ≤ InitECandidate.Solver.MemSafe.StrideCost.BlsRules.factor b := by omega
    simpa only [factor,hf,Nat.min_eq_right hle'] using hu
#print axioms factor_sound
end InitECandidate.Solver.MemSafe.StrideCost.BlsBest
