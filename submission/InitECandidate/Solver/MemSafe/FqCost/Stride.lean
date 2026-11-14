import InitECandidate.Solver.MemSafe.FqCost.Finder
import InitECandidate.Solver.MemSafe.DivCost.Rank
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
open InitECandidate.Solver.MemSafe.ArrayCost.Read InitECandidate.Solver.MemSafe.PairCost.Read
namespace InitECandidate.Solver.MemSafe.FqCost.Finder
variable {σ : Type} {X : Ctx 64}
def stride (b : ProgHOL 64) : Nat :=
 match access b with | some (_,_,k) => k.toNat | none => 1
def loopOk (b : ProgHOL 64) : Bool :=
 match access b with
 | some (B,i,k) => decide (1 ≤ k.toNat) && decide (k.toNat ≤ addrStepMax) && stepsB i true b && baseKeptB B b
 | none => false
theorem factor_sound (hX : DomBounded X) {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 (h : loopOk b = true) (hb : Cost σ X b C) :
 Cost σ X (.while c b) (((2^35+alignSlack 64-1)/stride b+2)*(C+1)) := by
 unfold loopOk at h
 split at h
 · rename_i B i k hacc
   simp only [Bool.and_eq_true,decide_eq_true_eq] at h
   obtain ⟨⟨⟨hk1,hk2⟩,hst⟩,hkb⟩ := h
   obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
   have hLs : L+alignSlack 64 ≤ 2^64 := by omega
   have hc : Cost σ X (.while c b) (((L+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
    refine InitECandidate.Solver.MemSafe.DivCost.Rank.cost_while_addr_stride (scaledAddr B i k) lo (L+alignSlack 64) k
     (by omega) (by omega) hb (fun _ => rfl) ?_
    intro t ht hdone
    obtain ⟨w,hw,hhit⟩ := access_hit hacc hdone
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
   simp only [stride,hacc]
   apply hc.mono
   apply Nat.mul_le_mul_right
   apply Nat.add_le_add_right
   apply Nat.div_le_div_right
   omega
 · cases h

#print axioms factor_sound
end InitECandidate.Solver.MemSafe.FqCost.Finder
