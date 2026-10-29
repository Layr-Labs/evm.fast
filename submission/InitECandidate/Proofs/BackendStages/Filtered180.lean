import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section180
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 0] }
theorem Filtered180_eq : { section180 with lines := section180.lines.filter LabFilter.notSkip } = Filtered180 := by
  kernel_rfl
#print axioms Filtered180_eq
end InitECandidate.Proofs.BackendStages
