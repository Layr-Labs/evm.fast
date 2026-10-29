import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment349
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode349 : LabSem.LabSectionHOL 64 :=
{ sectionId := 349,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 349 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 152#64))))
        [3#8, 53#8, 133#8, 9#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1))
        [103#8, 128#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 349 2 0] }
theorem FinalReencode349_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 276448 riscvConfig.encode Alignment349.lines [] true = (FinalReencode349.lines, 276456, true) := by
  kernel_rfl
#print axioms FinalReencode349_eq
end InitECandidate.Proofs.BackendStages
