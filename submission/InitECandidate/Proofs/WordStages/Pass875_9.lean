import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass875_8
import InitECandidate.Proofs.ClashStages875.Allocation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed875 : Option (Spt Nat) := Parallel875.proposed875
def pass875_9 : WordLangProgHOL (BitVec 64) := Parallel875.pass875_9
theorem pass875_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 875 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass875_8 proposed875 = pass875_9 := by
  have input_eq : pass875_8 = Parallel875.pass875_8 := by
    kernel_rfl
  rw [input_eq]
  exact InitECandidate.Proofs.ClashStages875.allocation_eq
#print axioms pass875_9_eq
end InitECandidate.Proofs.WordStages
