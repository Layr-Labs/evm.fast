import InitECandidate.Solver.MemSafe.TrieStorage.C003
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieStorage
variable {σ : Type}
def body_ws_storage_root_of := (declPair Guest.Software.guestFn_ws_storage_root_of).2.2
def b_ws_storage_root_of : Nat := 330222982341023458542163817732281
theorem cost_ws_storage_root_of : Cost σ guestCtx body_ws_storage_root_of b_ws_storage_root_of := ArenaCost.Analyzer.analyze_sound table3_sound (by cbv)
theorem cc_ws_storage_root_of : CalleeCost σ guestCtx (nm "ws_storage_root_of") b_ws_storage_root_of := by
 have hc : ∃ rs, guestCode (nm "ws_storage_root_of") = some ((declPair Guest.Software.guestFn_ws_storage_root_of).2.1,body_ws_storage_root_of,rs) :=
  declPair_valid (List.getElem_mem (n := 367) (by decide)) ⟨_,rfl⟩
 obtain ⟨rs,hc⟩ := hc
 exact ArenaCost.Analyzer.callee_of_body hc cost_ws_storage_root_of
def table4 := ArenaCost.Analyzer.extend table3 (nm "ws_storage_root_of") b_ws_storage_root_of
theorem table4_sound : TblSound σ guestCtx table4 := ArenaCost.Analyzer.extend_sound table3_sound cc_ws_storage_root_of
#print axioms cc_ws_storage_root_of
end InitECandidate.Solver.MemSafe.TrieStorage
