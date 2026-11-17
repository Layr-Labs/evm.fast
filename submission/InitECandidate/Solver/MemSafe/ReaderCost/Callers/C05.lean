import InitECandidate.Solver.MemSafe.ReaderCost.Callers.C04
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.ReaderCost.Callers
variable {σ : Type}
def body__insert_into_leaf := (declPair Guest.Software.guestFn__insert_into_leaf).2.2
def b__insert_into_leaf : Nat := 309237645414
theorem cost__insert_into_leaf : Cost σ guestCtx body__insert_into_leaf b__insert_into_leaf :=
  ReaderCost.Analyzer.analyze_sound table4_sound (by cbv)
theorem cc__insert_into_leaf : CalleeCost σ guestCtx (nm "_insert_into_leaf") b__insert_into_leaf := by
  have hc : ∃ rs, guestCode (nm "_insert_into_leaf") = some ((declPair Guest.Software.guestFn__insert_into_leaf).2.1,body__insert_into_leaf,rs) :=
    declPair_valid (List.getElem_mem (n := 273) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact ReaderCost.Analyzer.callee_of_body hc cost__insert_into_leaf
def table5 := ReaderCost.Analyzer.extend table4 (nm "_insert_into_leaf") b__insert_into_leaf
theorem table5_sound : TblSound σ guestCtx table5 := ReaderCost.Analyzer.extend_sound table4_sound cc__insert_into_leaf
#print axioms cc__insert_into_leaf
end InitECandidate.Solver.MemSafe.ReaderCost.Callers
