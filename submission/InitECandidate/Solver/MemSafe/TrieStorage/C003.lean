import InitECandidate.Solver.MemSafe.TrieStorage.C002
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieStorage
variable {σ : Type}
def body_ws_get_account_optional := (declPair Guest.Software.guestFn_ws_get_account_optional).2.2
def b_ws_get_account_optional : Nat := 330222982341023458542163817732280
theorem cost_ws_get_account_optional : Cost σ guestCtx body_ws_get_account_optional b_ws_get_account_optional := ArenaCost.Analyzer.analyze_sound table2_sound (by cbv)
theorem cc_ws_get_account_optional : CalleeCost σ guestCtx (nm "ws_get_account_optional") b_ws_get_account_optional := by
 have hc : ∃ rs, guestCode (nm "ws_get_account_optional") = some ((declPair Guest.Software.guestFn_ws_get_account_optional).2.1,body_ws_get_account_optional,rs) :=
  declPair_valid (List.getElem_mem (n := 366) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ArenaCost.Analyzer.callee_of_body hc cost_ws_get_account_optional
def table3 := ArenaCost.Analyzer.extend table2 (nm "ws_get_account_optional") b_ws_get_account_optional
theorem table3_sound : TblSound σ guestCtx table3 := ArenaCost.Analyzer.extend_sound table2_sound cc_ws_get_account_optional
#print axioms cc_ws_get_account_optional
end InitECandidate.Solver.MemSafe.TrieStorage
