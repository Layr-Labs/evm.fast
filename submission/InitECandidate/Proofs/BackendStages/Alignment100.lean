import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_100
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment100 : LabSem.LabSectionHOL 64 :=
{ sectionId := 100,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 100 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 100 2 0] }
theorem Alignment100_eq : LabToTarget.linesUpdLabLen 10668 TargetChecks.Reencode1_100.lines [] = (Alignment100.lines, 10672) := by
  kernel_rfl
#print axioms Alignment100_eq
end InitECandidate.Proofs.BackendStages
