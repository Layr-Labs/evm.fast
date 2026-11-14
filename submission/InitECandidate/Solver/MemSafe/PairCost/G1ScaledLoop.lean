import InitECandidate.Solver.MemSafe.PairCost.G1ScaledRead
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Read
variable {σ : Type}
def g1ReadBody (B out : ExpHOL 64) (i slot rn : MlS) (sh : ShapeHOL) (k : BitVec 64) (rest : ProgHOL 64) : ProgHOL 64 :=
  .dec slot .one (.op .add [B,.panop .mul [.var .local i,.const k]])
    (.decCall rn sh (nm "bn254_parse_g1") [.var .local slot,out] rest)

theorem g1_scaled_loop_cost {B out c : ExpHOL 64} {i slot rn : MlS} {sh : ShapeHOL}
    {k : BitVec 64} {rest : ProgHOL 64} {C : Nat}
    (hB : isBase i B = true) (hk1 : 1 ≤ k.toNat) (hk2 : k.toNat ≤ addrStepMax)
    (hst : stepsB i true (g1ReadBody B out i slot rn sh k rest) = true)
    (hkb : baseKeptB B (g1ReadBody B out i slot rn sh k rest) = true)
    (hb : Cost σ guestCtx (g1ReadBody B out i slot rn sh k rest) C) :
    Cost σ guestCtx (.while c (g1ReadBody B out i slot rn sh k rest))
      ((2^35 + alignSlack 64 + 1)*(C+1)) := by
  obtain ⟨L,hL,⟨lo,hD⟩,⟨lo2,hD2⟩,hLen⟩ := guestCtx_bounded
  have hLs : L + alignSlack 64 ≤ 2^64 := by omega
  refine (cost_while_addr (scaledAddr B i k) lo (L + alignSlack 64) addrStepMax hL hb
    (fun _ => rfl) ?_).mono (Nat.mul_le_mul_right _ (by omega))
  intro t ht hc
  obtain ⟨w,hw,hhit⟩ := g1_scaled_access hB ht hc
  refine ⟨w,hw,hit_offset hD hLs (ht.2.1 ▸ hhit),k,hk1,hk2,?_⟩
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
#print axioms g1_scaled_loop_cost
end InitECandidate.Solver.MemSafe.PairCost.Read
