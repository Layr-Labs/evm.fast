import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages.TargetChecks
def Initial215 : LabSem.LabSectionHOL 64 :=
{ sectionId := 215,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 215 1 4,
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
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 136 0)) 0#64
        [111#8, 0#8, 0#8, 0#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 215 2 4] }
end InitECandidate.Proofs.BackendStages.TargetChecks
