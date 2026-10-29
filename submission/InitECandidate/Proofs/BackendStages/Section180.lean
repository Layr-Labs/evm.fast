import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named180
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 0] }
theorem section180_eq : StackToLab.progToSectionHOL Named180 = section180 := by
  kernel_rfl
#print axioms section180_eq
end InitECandidate.Proofs.BackendStages
