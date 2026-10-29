import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named347
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section347 : LabSem.LabSectionHOL 64 :=
{ sectionId := 347,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 347 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 144#64))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 347 2 0] }
theorem section347_eq : StackToLab.progToSectionHOL Named347 = section347 := by
  kernel_rfl
#print axioms section347_eq
end InitECandidate.Proofs.BackendStages
