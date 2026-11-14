import InitECandidate.Solver.MemSafe.InitCost.Seed
import InitECandidate.Solver.MemSafe.SeqCost.Analyzer
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.SeqCost.Callers
variable {σ : Type}
def table0 := InitCost.seedTable
theorem table0_sound : TblSound σ guestCtx table0 := InitCost.seed_sound
def body_keccak_f1600 := (declPair Guest.Software.guestFn_keccak_f1600).2.2
def b_keccak_f1600 : Nat := 25
theorem cost_keccak_f1600 : Cost σ guestCtx body_keccak_f1600 b_keccak_f1600 :=
  SeqCost.Analyzer.analyze_sound table0_sound (by cbv)
theorem cc_keccak_f1600 : CalleeCost σ guestCtx (nm "keccak_f1600") b_keccak_f1600 := by
  have hc : ∃ rs, guestCode (nm "keccak_f1600") = some ((declPair Guest.Software.guestFn_keccak_f1600).2.1,body_keccak_f1600,rs) :=
    declPair_valid (List.getElem_mem (n := 101) (by decide)) ⟨_,rfl⟩
  obtain ⟨rs,hc⟩ := hc
  exact SeqCost.Analyzer.callee_of_body hc cost_keccak_f1600
def table1 := SeqCost.Analyzer.extend table0 (nm "keccak_f1600") b_keccak_f1600
theorem table1_sound : TblSound σ guestCtx table1 := SeqCost.Analyzer.extend_sound table0_sound cc_keccak_f1600
#print axioms cc_keccak_f1600
end InitECandidate.Solver.MemSafe.SeqCost.Callers
