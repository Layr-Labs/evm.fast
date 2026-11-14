import InitECandidate.Solver.MemSafe.InitCost.Callers.C08
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.InitCost.Callers
variable {σ : Type}
def body_trie_lookup := (declPair Guest.Software.guestFn_trie_lookup).2.2
def b_trie_lookup : Nat := 174224571919297119720113323270747581317356
theorem cost_trie_lookup : Cost σ guestCtx body_trie_lookup b_trie_lookup :=
  InitCost.Analyzer.analyze_sound table8_sound (by cbv)
theorem cc_trie_lookup : CalleeCost σ guestCtx (nm "trie_lookup") b_trie_lookup := by
  have hc : ∃ rs, guestCode (nm "trie_lookup") = some ((declPair Guest.Software.guestFn_trie_lookup).2.1,body_trie_lookup,rs) :=
    declPair_valid (List.getElem_mem (n := 267) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact InitCost.Analyzer.callee_of_body hc cost_trie_lookup
def table9 := InitCost.Analyzer.extend table8 (nm "trie_lookup") b_trie_lookup
theorem table9_sound : TblSound σ guestCtx table9 := InitCost.Analyzer.extend_sound table8_sound cc_trie_lookup
#print axioms cc_trie_lookup
end InitECandidate.Solver.MemSafe.InitCost.Callers
