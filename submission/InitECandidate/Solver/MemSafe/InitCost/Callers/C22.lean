import InitECandidate.Solver.MemSafe.InitCost.Callers.C21
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_decode_account_from_leaf := (declPair Guest.Software.guestFn_decode_account_from_leaf).2.2
def b_decode_account_from_leaf : Nat := 961665662569320955318707
theorem cost_decode_account_from_leaf : Cost σ guestCtx body_decode_account_from_leaf b_decode_account_from_leaf :=
  InitCost.Analyzer.analyze_sound table21_sound (by cbv)
theorem cc_decode_account_from_leaf : CalleeCost σ guestCtx (nm "decode_account_from_leaf") b_decode_account_from_leaf := by
  have hc : ∃ rs, guestCode (nm "decode_account_from_leaf") = some ((declPair Guest.Software.guestFn_decode_account_from_leaf).2.1,body_decode_account_from_leaf,rs) :=
    declPair_valid (List.getElem_mem (n := 293) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_decode_account_from_leaf
def table22 := InitCost.Analyzer.extend table21 (nm "decode_account_from_leaf") b_decode_account_from_leaf
theorem table22_sound : TblSound σ guestCtx table22 := InitCost.Analyzer.extend_sound table21_sound cc_decode_account_from_leaf
#print axioms cc_decode_account_from_leaf
end InitECandidate.Solver.MemSafe.InitCost.Callers
