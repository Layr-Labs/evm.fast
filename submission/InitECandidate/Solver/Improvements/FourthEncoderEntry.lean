import InitECandidate.Solver.Improvements.FourthEncoderPrefix
import InitECandidate.Solver.Spec.Mpt.Callees
import InitECandidate.Solver.Improvements.AcceptedBalEncodeCallee

/-! Connect the encoder prefix bound to the actual four-argument guest entry. -/
set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
namespace FourthEncoderEntry
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Aw
open InitECandidate.Solver.MemSafe.Types
variable {σ : Type}

def EncoderArgs (a : AwE σ) (vs : List (ValueHOL 64)) (_ : State σ) : Prop :=
  ∃ dst addr ad tmp : BitVec 64, vs = [.val (.word dst), .val (.word addr),
    .val (.word ad), .val (.word tmp)] ∧ Fits a.Γ0 (.nptr tAD) ad ∧
    a.h0 ≤ dst.toNat ∧ dst.toNat + 16 ≤ 2^60
def encoderCost : Nat := FourthBalEncodeContinuation.boundedCost

theorem callee_cost {a : AwE σ} (hK : AwOK a) (hc : FourthEncoderPrefix.PrefixFacts a) :
    Inv.CalleeCostP σ guestCtx (AcceptedIvvhCalleeCore.nm "bal_encode_account")
      (fun vs s => AwInv a s ∧ EncoderArgs a vs s) encoderCost := by
  intro vs actual callee rs lookup
  have hl := lookup
  rw [InitECandidate.Solver.SourceCost.guestCtx_code] at hl
  obtain ⟨hbody, hrs, A, B, C, D, hvs, hA, hB, hC, hD⟩ := Mpt.lookupCode_four
    AcceptedBalEncodeCallee.code_encode (by decide) (by decide) (by decide)
    (by decide) (by decide) (by decide) hl
  subst actual
  intro s hs hp hg
  obtain ⟨hloc, hinv, dst, addr, ad, tmp, hvs', hfit, hlo, hhi⟩ := hp
  rw [hvs'] at hvs
  simp only [List.cons.injEq, and_true] at hvs
  obtain ⟨rfl, rfl, rfl, rfl⟩ := hvs
  have hInput : FourthEncoderPrefix.Input a s := by
    refine ⟨hinv, dst, addr, ad, tmp, ?_, ?_, ?_, ?_, hfit, hlo, hhi⟩
    · rw [hloc]; exact hA
    · rw [hloc]; exact hB
    · rw [hloc]; exact hC
    · rw [hloc]; exact hD
  have hcost := FourthEncoderPrefix.body_cost hK hc
    (AcceptedBalEncodeCallee.accepted_callees (σ := σ)) s hs hInput hg
  rw [FourthEncoderPrefix.prefixB_eq] at hcost
  exact hcost

theorem encoderCost_eq : encoderCost =
    41713567048847405185401701990816677726508866420125617849867660959028 := by decide
#print axioms callee_cost
end FourthEncoderEntry
