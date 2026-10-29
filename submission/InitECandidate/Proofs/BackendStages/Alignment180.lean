import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_180
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0))
        18446744073709550276#64 [111#8, 240#8, 95#8, 172#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 0] }
theorem Alignment180_eq : LabToTarget.linesUpdLabLen 97592 TargetChecks.Reencode1_180.lines [] = (Alignment180.lines, 97596) := by
  kernel_rfl
#print axioms Alignment180_eq
end InitECandidate.Proofs.BackendStages
