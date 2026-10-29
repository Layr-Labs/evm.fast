import InitECandidate.Proofs.WordStages.OracleReuse
import InitECandidate.Proofs.SmallStages.Compact650.Data
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.SmallOptimizerComputation InitECandidate.Proofs.ClashComputation
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.WordStages
namespace InitECandidate.Proofs.SmallStages.Compact650
/-- Cache the checked oracle result once; both guest functions share this program. -/
theorem oracle_checked : WordAlloc.oracleColourOk
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) oracle
    (WordAlloc.getClashTree pass8 []) pass8 (WordAlloc.getForced riscvConfig pass8 []) =
    some pass10 := by
  kernel_rfl

theorem pass10_eq : WordRemove.removeMustTerminate (WordToWord.wordAllocWith RegAlloc.regAllocExecutable 650 riscvConfig 3 (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) pass8 oracle) = pass10 := by
  rw [InitECandidate.Proofs.WordStages.wordAllocWith_of_oracle RegAlloc.regAllocExecutable 650 3
    (riscvConfig.regCount - (5 + riscvConfig.avoidRegs.length)) riscvConfig pass8 pass10 oracle
    oracle_checked]
  kernel_rfl
#print axioms pass10_eq
end InitECandidate.Proofs.SmallStages.Compact650
