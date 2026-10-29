import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Section368
import InitECandidate.Proofs.CompilerComputation
import Flapjack.Compiler.Backend.LabToTarget.Compile
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def Filtered368 : LabSem.LabSectionHOL 64 :=
{ sectionId := 368,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 368 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.labAsm
        (Flapjack.Compiler.Backend.LabLang.AsmWithLab.jump (Flapjack.Compiler.Backend.LabLang.Lab.lab 367 0)) 0#64 [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 368 2 0] }
theorem Filtered368_eq : { section368 with lines := section368.lines.filter LabFilter.notSkip } = Filtered368 := by
  kernel_rfl
#print axioms Filtered368_eq
end InitECandidate.Proofs.BackendStages
