import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_1
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment1 : LabSem.LabSectionHOL 64 :=
{ sectionId := 1,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [19#8, 101#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt
        18446744073709550812#64 [111#8, 240#8, 223#8, 205#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 1 2 0] }
theorem Alignment1_eq : LabToTarget.linesUpdLabLen 756 TargetChecks.Reencode1_1.lines [] = (Alignment1.lines, 764) := by
  kernel_rfl
#print axioms Alignment1_eq
end InitECandidate.Proofs.BackendStages
