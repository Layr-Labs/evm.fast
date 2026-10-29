import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_2
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment2 : LabSem.LabSectionHOL 64 :=
{ sectionId := 2,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)))
        [19#8, 101#8, 32#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 2 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm Flapjack.Compiler.Backend.LabLang.AsmWithLab.halt
        18446744073709550796#64 [111#8, 240#8, 223#8, 204#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 2 2 0] }
theorem Alignment2_eq : LabToTarget.linesUpdLabLen 764 TargetChecks.Reencode1_2.lines [] = (Alignment2.lines, 772) := by
  kernel_rfl
#print axioms Alignment2_eq
end InitECandidate.Proofs.BackendStages
