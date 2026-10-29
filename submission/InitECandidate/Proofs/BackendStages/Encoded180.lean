import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Filtered180
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Encoded180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0)) 0#64
        [111#8, 0#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 4] }
theorem Encoded180_eq : LabToTarget.encSec riscvConfig.encode (riscvConfig.encode (.inst .skip)).length Filtered180 = Encoded180 := by
  kernel_rfl
#print axioms Encoded180_eq
end InitECandidate.Proofs.BackendStages
