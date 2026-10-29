import InitECandidate.Proofs.BackendStages.TargetChecks.CorrectData0_737
import InitECandidate.Proofs.BackendStages.TargetLabels1
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels1_737 : List (Nat × Nat) :=
[(2, 805324), (1, 805312)]
def Reencode1_737 : LabSem.LabSectionHOL 64 :=
{ sectionId := 737,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 737 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 11
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))))
        [51#8, 230#8, 181#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 734 0))
        18446744073709549548#64 [111#8, 240#8, 207#8, 254#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 737 2 4] }
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
