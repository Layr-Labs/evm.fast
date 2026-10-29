import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alignment286
import InitECandidate.Proofs.BackendStages.TargetLabelsFinal
import InitECandidate.Proofs.BackendStages.TargetFfis
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def FinalReencode286 : LabSem.LabSectionHOL 64 :=
{ sectionId := 286,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 286 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))))
        [35#8, 188#8, 172#8, 246#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 5#64)))
        [19#8, 101#8, 80#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 5 0))
        18446744073709323200#64 [111#8, 128#8, 12#8, 188#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 286 2 0] }
theorem FinalReencode286_eq : LabToTarget.encLinesAgain Target.labelsFinal Target.ffis 229220 riscvConfig.encode Alignment286.lines [] true = (FinalReencode286.lines, 229232, true) := by
  kernel_rfl
#print axioms FinalReencode286_eq
end InitECandidate.Proofs.BackendStages
