import InitECandidate.Solver.MemSafe.DelegationCost.Read
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
namespace InitECandidate.Solver.MemSafe.DelegationCost.Read
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost
open InitECandidate.Solver.MemSafe.ArrayCost.Read InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type} {X : Ctx 64}
theorem read_stride_cost {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
 {B : ExpHOL 64} {i : MlS} {k : BitVec 64}
 (hX : DomBounded X) (hk1 : 1 ≤ k.toNat) (hk2 : k.toNat ≤ addrStepMax)
 (hst : stepsB i true b = true) (hkb : baseKeptB B b = true)
 (hread : ∀ t : PanSemStateFiniteExact 64 σ, Completes t b →
   ∃ w, scaledAddr B i k t = some w ∧ Hit t.memaddrs w)
 (hb : Cost σ X b C) :
 Cost σ X (.while c b) (((2^35+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
 obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := hX
 have hLs : L+alignSlack 64 ≤ 2^64 := by omega
 have hc : Cost σ X (.while c b) (((L+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
  refine InitECandidate.Solver.MemSafe.DivCost.Rank.cost_while_addr_stride (scaledAddr B i k) lo (L+alignSlack 64) k
   (by omega) (by omega) hb (fun _ => rfl) ?_
  intro t ht hdone
  obtain ⟨w,hw,hhit⟩ := hread t hdone
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
 apply hc.mono
 apply Nat.mul_le_mul_right
 apply Nat.add_le_add_right
 apply Nat.div_le_div_right
 omega
#print axioms read_stride_cost
end InitECandidate.Solver.MemSafe.DelegationCost.Read
