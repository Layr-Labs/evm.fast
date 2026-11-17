import InitECandidate.Solver.MemSafe.TrieStorage.C001
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieStorage
variable {σ : Type}
def body_ws_account_leaf := (declPair Guest.Software.guestFn_ws_account_leaf).2.2
def b_ws_account_leaf : Nat := 330222981379357795972842862413568
theorem cost_ws_account_leaf : Cost σ guestCtx body_ws_account_leaf b_ws_account_leaf := ArenaCost.Analyzer.analyze_sound table1_sound (by cbv)
theorem cc_ws_account_leaf : CalleeCost σ guestCtx (nm "ws_account_leaf") b_ws_account_leaf := by
 have hc : ∃ rs, guestCode (nm "ws_account_leaf") = some ((declPair Guest.Software.guestFn_ws_account_leaf).2.1,body_ws_account_leaf,rs) :=
  declPair_valid (List.getElem_mem (n := 365) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ArenaCost.Analyzer.callee_of_body hc cost_ws_account_leaf
def table2 := ArenaCost.Analyzer.extend table1 (nm "ws_account_leaf") b_ws_account_leaf
theorem table2_sound : TblSound σ guestCtx table2 := ArenaCost.Analyzer.extend_sound table1_sound cc_ws_account_leaf
#print axioms cc_ws_account_leaf
end InitECandidate.Solver.MemSafe.TrieStorage
