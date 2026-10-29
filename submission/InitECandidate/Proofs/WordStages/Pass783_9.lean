import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.WordStages.Pass783_8
import InitECandidate.Proofs.ClashStages783.Allocation
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.WordStages
def proposed783 : Option (Spt Nat) := Parallel783.proposed783
def pass783_9 : WordLangProgHOL (BitVec 64) := Parallel783.pass783_9
theorem pass783_9_eq : WordToWord.wordAllocWith RegAlloc.regAllocExecutable 783 riscvConfig RiscVConfig.pancakeRiscVBackendConfig.wordToWordConf.regAlg (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass783_8 proposed783 = pass783_9 := by
  have input_eq : pass783_8 = Parallel783.pass783_8 := by
    kernel_rfl
  rw [input_eq]
  exact InitECandidate.Proofs.ClashStages783.allocation_eq
#print axioms pass783_9_eq
end InitECandidate.Proofs.WordStages
