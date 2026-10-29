import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.TargetChecks.Data1_216
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def Alignment216 : LabSem.LabSectionHOL 64 :=
{ sectionId := 216,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 216 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 18446744073709551615#64)))
        [147#8, 110#8, 240#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 18446744073709551614#64)))
        [19#8, 110#8, 224#8, 255#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 13451932020343611451#64)))
        [183#8, 175#8, 72#8, 175#8, 147#8, 143#8, 191#8, 3#8, 183#8, 45#8, 81#8, 69#8, 147#8, 141#8, 157#8, 49#8, 147#8,
          157#8, 13#8, 2#8, 179#8, 205#8, 253#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 13822214165235122497#64)))
        [183#8, 79#8, 54#8, 208#8, 147#8, 143#8, 31#8, 20#8, 183#8, 164#8, 45#8, 64#8, 147#8, 132#8, 52#8, 23#8, 147#8,
          148#8, 4#8, 2#8, 179#8, 196#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 135 0))
        18446744073709447144#64 [111#8, 96#8, 142#8, 254#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 216 2 0] }
theorem Alignment216_eq : LabToTarget.linesUpdLabLen 124004 TargetChecks.Reencode1_216.lines [] = (Alignment216.lines, 124064) := by
  kernel_rfl
#print axioms Alignment216_eq
end InitECandidate.Proofs.BackendStages
