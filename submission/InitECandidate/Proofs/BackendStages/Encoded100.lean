import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Filtered100
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Encoded100 : LabSem.LabSectionHOL 64 :=
{ sectionId := 100,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 100 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 100 2 4] }
theorem Encoded100_eq : LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered100 = Encoded100 := by
  kernel_rfl
#print axioms Encoded100_eq
end InitECandidate.Proofs.BackendStages
