import InitECandidate.Proofs.BackendStages.TargetChecks.Initial779
import InitECandidate.Proofs.BackendStages.TargetLabels0
import InitECandidate.Proofs.BackendStages.TargetFfis
import Flapjack.Compiler.Encoders.RiscV.Target.Configuration
set_option autoImplicit false
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
open InitECandidate.Proofs.BackendStages
namespace InitECandidate.Proofs.BackendStages.TargetChecks.Correct
def localLabels0_779 : List (Nat × Nat) :=
[(2, 865408), (1, 865396)]
def Reencode0_779 : LabSem.LabSectionHOL 64 :=
{ sectionId := 779,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 779 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.arith
              (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 10
                (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))))
        [19#8, 5#8, 5#8, 12#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 732 0))
        18446744073709488972#64 [111#8, 0#8, 223#8, 180#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 779 2 4] }
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
