import InitECandidate.Solver.MemSafe.DivCost.Reverse.Step
import InitECandidate.Solver.MemSafe.DivCost.Reverse.Rank
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.DivCost.Reverse
variable {σ : Type} {X : Ctx 64}
theorem cost {C : Nat} (hX : DomBounded X) (hb : Cost σ X Helpers.dvBody3 C) :
 Cost σ X Helpers.dvL3 (((2^35+alignSlack 64-1)/8+2)*(C+1)) := by
 obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
 have h8 : (8:BitVec 64).toNat=8 := by decide +kernel
 have hs8 : 8≤addrStepMax := by decide +kernel
 have hLs : L+alignSlack 64≤2^64 := by omega
 have hcost : Cost σ X Helpers.dvL3 (((L+alignSlack 64-1)/(8:BitVec 64).toNat+2)*(C+1)) := by
  unfold Helpers.dvL3
  refine InitECandidate.Solver.MemSafe.DivCost.Reverse.Rank.cost_while_addr_stride addr lo (L+alignSlack 64) (8:BitVec 64)
   (by decide) (by rw [h8]; omega) hb (fun _ => rfl) ?_
  intro t ht hcond hc
  obtain ⟨w,hw,hhit⟩ := read_first hcond hc
  exact ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),step hw hc⟩
 apply hcost.mono
 change ((L+alignSlack 64-1)/8+2)*(C+1)≤((2^35+alignSlack 64-1)/8+2)*(C+1)
 apply Nat.mul_le_mul_right
 apply Nat.add_le_add_right
 apply Nat.div_le_div_right
 omega
#print axioms cost
end InitECandidate.Solver.MemSafe.DivCost.Reverse
