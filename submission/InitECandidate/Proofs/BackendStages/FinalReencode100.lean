import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment100
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode100 : LabSem.LabSectionHOL 64 :=
{ sectionId := 100,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 100 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 100 2 0] }
theorem FinalReencode100_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 10668 riscvConfig.encode Alignment100.lines [] true = (FinalReencode100.lines, 10672, true) := by
  kernel_rfl
#print axioms FinalReencode100_eq
end InitECandidate.Proofs.BackendStages
