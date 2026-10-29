import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass808_8
import InitECandidate.Proofs.ClashStages808.Allocation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed808 : Option (Spt Nat) := Parallel808.proposed808
def pass808_9 : WordLangProgHOL (BitVec 64) := Parallel808.pass808_9
theorem pass808_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 808 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass808_8 proposed808 = pass808_9 := by
  have input_eq : pass808_8 = Parallel808.pass808_8 := by
    kernel_rfl
  rw [input_eq]
  exact InitECandidate.Proofs.ClashStages808.allocation_eq
#print axioms pass808_9_eq
end InitECandidate.Proofs.WordStages
