import InitECandidate.Solver.MemSafe.StrideCost.Rank
import InitECandidate.Solver.MemSafe.SlotCost.Rule
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
namespace InitECandidate.Solver.MemSafe.StrideCost.Slot
open InitECandidate.Solver.MemSafe.SlotCost.Read
open InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem scaled_loop_cost_stride {B c : ExpHOL 64} {i slot : MlS}
 {k : BitVec 64} {rest : ProgHOL 64} {C : Nat}
 (hB : isProjectedBase i B = true) (hr : readSlotB slot rest = true)
 (hk1 : 1 ≤ k.toNat) (hk2 : k.toNat ≤ addrStepMax)
 (hst : stepsB i true (slotBody B i slot k rest) = true)
 (hkb : projectedBaseKeptB B (slotBody B i slot k rest) = true)
 (hb : Cost σ guestCtx (slotBody B i slot k rest) C) :
 Cost σ guestCtx (.while c (slotBody B i slot k rest))
  (((2^35+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
 obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := guestCtx_bounded
 have hLs : L+alignSlack 64 ≤ 2^64 := by omega
 have hCost : Cost σ guestCtx (.while c (slotBody B i slot k rest))
   (((L+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
  refine InitECandidate.Solver.MemSafe.StrideCost.cost_while_addr_stride (projectedAddr B i k) lo
   (L+alignSlack 64) k (by omega) (by omega) hb
   (fun s => projectedAddr_clk hB s) ?_
  intro t ht hc
  obtain ⟨w,hw,hhit⟩ := scaled_access hB hr ht hc
  refine ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),?_⟩
  have hsteps := stepsB_sound (σ := σ) i true (slotBody B i slot k rest) hst
  have hw' := hw
  unfold projectedAddr at hw'
  cases hv : wordLocal t i with
  | none => rw [hv] at hw'; split at hw' <;> simp_all
  | some v =>
   have hv' := wordLocal_some hv
   have hd := hsteps t v hv' hc
   have hnext := projectedAddr_step hw hv' hd (projectedBase_kept hkb hc)
   simpa using hnext
 apply hCost.mono
 apply Nat.mul_le_mul_right
 apply Nat.add_le_add_right
 apply Nat.div_le_div_right
 omega
#print axioms scaled_loop_cost_stride
end InitECandidate.Solver.MemSafe.StrideCost.Slot
