import InitECandidate.Proofs.BackendStages.TargetChecks.Initial716
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
def localLabels0_716 : List (Nat × Nat) :=
[(2, 791192), (1, 791040)]
def Reencode0_716 : LabSem.LabSectionHOL 64 :=
{ sectionId := 716,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 716 1 4,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 1267921511277847466#64)))
        [183#8, 239#8, 202#8, 146#8, 147#8, 143#8, 175#8, 58#8, 183#8, 126#8, 103#8, 238#8, 147#8, 142#8, 174#8, 1#8,
          147#8, 158#8, 14#8, 2#8, 179#8, 206#8, 254#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 11130996698012816685#64)))
        [183#8, 159#8, 25#8, 181#8, 147#8, 143#8, 223#8, 82#8, 55#8, 206#8, 134#8, 101#8, 19#8, 14#8, 174#8, 23#8, 19#8,
          30#8, 14#8, 2#8, 51#8, 78#8, 254#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 7488229067341005760#64)))
        [183#8, 143#8, 157#8, 147#8, 147#8, 143#8, 15#8, 60#8, 183#8, 125#8, 20#8, 152#8, 147#8, 141#8, 109#8, 117#8,
          147#8, 157#8, 13#8, 2#8, 179#8, 205#8, 253#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 10224657059481499349#64)))
        [183#8, 191#8, 149#8, 76#8, 147#8, 143#8, 95#8, 109#8, 183#8, 68#8, 229#8, 141#8, 147#8, 132#8, 196#8, 118#8,
          147#8, 148#8, 4#8, 2#8, 179#8, 228#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 754043588434789617#64)))
        [183#8, 15#8, 209#8, 9#8, 147#8, 143#8, 31#8, 79#8, 55#8, 228#8, 118#8, 10#8, 19#8, 4#8, 100#8, 106#8, 19#8,
          20#8, 4#8, 2#8, 51#8, 100#8, 244#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17644856173732828998#64)))
        [183#8, 31#8, 52#8, 28#8, 147#8, 143#8, 111#8, 116#8, 183#8, 227#8, 32#8, 11#8, 147#8, 195#8, 67#8, 243#8,
          147#8, 147#8, 3#8, 2#8, 179#8, 227#8, 243#8, 1#8]
        24,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 714 0))
        18446744073709532108#64 [111#8, 176#8, 207#8, 188#8] 4,
      Flapjack.Compiler.Backend.LabLang.Line.label 716 2 4] }
end InitECandidate.Proofs.BackendStages.TargetChecks.Correct
