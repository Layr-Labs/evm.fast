import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Named349
import Flapjack.Compiler.Backend.StackToLab.Native
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def section349 : LabSem.LabSectionHOL 64 :=
{ sectionId := 349,
  lines :=
    [Flapjack.Compiler.Backend.LabLang.Line.label 349 1 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi
          (Flapjack.Compiler.Encoders.Asm.HolAsm.inst
            (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
              (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 152#64))))
        [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.asm
        (Flapjack.Compiler.Backend.LabLang.AsmOrCbw.asmi (Flapjack.Compiler.Encoders.Asm.HolAsm.jumpReg 1)) [] 0,
      Flapjack.Compiler.Backend.LabLang.Line.label 349 2 0] }
theorem section349_eq : StackToLab.progToSectionHOL Named349 = section349 := by
  kernel_rfl
#print axioms section349_eq
end InitECandidate.Proofs.BackendStages
