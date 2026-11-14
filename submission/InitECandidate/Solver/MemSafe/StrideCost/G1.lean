import InitECandidate.Solver.MemSafe.StrideCost.Core
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.StrideCost.G1
open InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
theorem g1_scaled_loop_cost_stride {B out c : ExpHOL 64} {i slot rn : MlS} {sh : ShapeHOL}
    {k : BitVec 64} {rest : ProgHOL 64} {C : Nat}
    (hB : isBase i B = true) (hk1 : 1 ≤ k.toNat) (hk2 : k.toNat ≤ addrStepMax)
    (hst : stepsB i true (g1ReadBody B out i slot rn sh k rest) = true)
    (hkb : baseKeptB B (g1ReadBody B out i slot rn sh k rest) = true)
    (hb : Cost σ guestCtx (g1ReadBody B out i slot rn sh k rest) C) :
    Cost σ guestCtx (.while c (g1ReadBody B out i slot rn sh k rest))
      (((2^35 + alignSlack 64 - 1)/k.toNat+2)*(C+1)) := by
  obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2^64 := by omega
  have hcost : Cost σ guestCtx (.while c (g1ReadBody B out i slot rn sh k rest))
      (((L+alignSlack 64-1)/k.toNat+2)*(C+1)) := by
    refine InitECandidate.Solver.MemSafe.StrideCost.cost_while_addr_stride
      (scaledAddr B i k) lo (L+alignSlack 64) k (by omega) (by omega) hb (fun _ => rfl) ?_
    intro t ht hc
    obtain ⟨w,hw,hhit⟩ := g1_scaled_access hB ht hc
    refine ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),?_⟩
    have hsteps := stepsB_sound (σ := σ) i true (g1ReadBody B out i slot rn sh k rest) hst
    have hw' := hw
    unfold scaledAddr at hw'
    cases hv : wordLocal t i with
    | none => rw [hv] at hw'; split at hw' <;> simp_all
    | some v =>
      have hv' := wordLocal_some hv
      have hd := hsteps t v hv' hc
      have hnext := scaledAddr_step hw hv' hd (baseKept hkb hc)
      simpa using hnext
  apply hcost.mono
  apply Nat.mul_le_mul_right
  apply Nat.add_le_add_right
  apply Nat.div_le_div_right
  omega
#print axioms g1_scaled_loop_cost_stride
def factor (b : ProgHOL 64) : Nat :=
 match b with
 | .dec _ .one (.op .add [_,.panop .mul [.var .local _,.const k]]) _ => (2^35+alignSlack 64-1)/k.toNat+2
 | _ => 2^35+alignSlack 64+1
theorem factor_sound {c : ExpHOL 64} {b : ProgHOL 64} {C : Nat}
    (h : g1ReadLoopOk b = true) (hb : Cost σ guestCtx b C) :
    Cost σ guestCtx (.while c b) (factor b*(C+1)) := by
  unfold g1ReadLoopOk at h
  split at h
  · rename_i slot B i k rn sh f arg out rest
    simp only [Bool.and_eq_true,decide_eq_true_eq] at h
    obtain ⟨⟨⟨⟨⟨rfl,rfl⟩,hB⟩,⟨hk1,hk2⟩⟩,hst⟩,hkb⟩ := h
    exact g1_scaled_loop_cost_stride hB hk1 hk2 hst hkb hb
  · cases h

#print axioms factor_sound
end InitECandidate.Solver.MemSafe.StrideCost.G1
