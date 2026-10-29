import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named201
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section201 : LabSem.LabSectionHOL 64 :=
{ sectionId := 201,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 201 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 201 2 0] }
theorem section201_eq : StackToLab.progToSectionHOL Named201 = section201 := by
  kernel_rfl
#print axioms section201_eq
end InitECandidate.Proofs.BackendStages
