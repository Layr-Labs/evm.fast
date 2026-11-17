import InitECandidate.Solver.Improvements.ThirdCombinedSmallCryptoTable

/-! Actual accepted source-callee costs from the min-preserving replayed table.
These proofs do not change source code, memory premises, or compiler facts. -/
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
namespace EntryFreshCallees
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

def foB : Nat := 239807672958224171065
def d0B : Nat :=
  231584178474632496591197857072379107619544296283500456949374176308916539776252
def fsB : Nat := 1519058619963580483919569147301215169394811446181349804834174

theorem frame_open_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "frame_open") foB :=
  ThirdCombinedSmallCryptoTable.callee_cost (by decide +kernel)

theorem depth0_prepare_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "depth0_prepare") d0B :=
  ThirdCombinedSmallCryptoTable.callee_cost (by decide +kernel)

theorem frame_start_cost {σ : Type} :
    CalleeCost σ guestCtx (nm "frame_start") fsB :=
  ThirdCombinedSmallCryptoTable.callee_cost (by decide +kernel)

#print axioms frame_open_cost
#print axioms depth0_prepare_cost
#print axioms frame_start_cost
end EntryFreshCallees
