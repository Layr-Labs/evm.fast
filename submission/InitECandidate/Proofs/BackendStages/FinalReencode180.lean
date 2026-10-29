import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment180
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode180 : LabSem.LabSectionHOL 64 :=
{ sectionId := 180,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 180 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 175 0))
        18446744073709550476#64 [111#8, 240#8, 223#8, 184#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 180 2 0] }
theorem FinalReencode180_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 97592 riscvConfig.encode Alignment180.lines [] true = (FinalReencode180.lines, 97596, true) := by
  kernel_rfl
#print axioms FinalReencode180_eq
end InitECandidate.Proofs.BackendStages
