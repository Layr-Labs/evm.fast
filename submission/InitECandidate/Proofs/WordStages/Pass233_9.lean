import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass233_8
import InitECandidate.Proofs.ClashStages233.Allocation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed233 : Option (Spt Nat) := Parallel233.proposed233
def pass233_9 : WordLangProgHOL (BitVec 64) := Parallel233.pass233_9
theorem pass233_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 233 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass233_8 proposed233 = pass233_9 := by
  have input_eq : pass233_8 = Parallel233.pass233_8 := by
    kernel_rfl
  rw [input_eq]
  exact InitECandidate.Proofs.ClashStages233.allocation_eq
#print axioms pass233_9_eq
end InitECandidate.Proofs.WordStages
