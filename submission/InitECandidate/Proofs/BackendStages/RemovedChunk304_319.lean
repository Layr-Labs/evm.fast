import InitECandidate.Proofs.BackendStages.AllocChunk304_319
import InitECandidate.Proofs.BackendStages.Removed304
import InitECandidate.Proofs.BackendStages.Removed305
import InitECandidate.Proofs.BackendStages.Removed306
import InitECandidate.Proofs.BackendStages.Removed307
import InitECandidate.Proofs.BackendStages.Removed308
import InitECandidate.Proofs.BackendStages.Removed309
import InitECandidate.Proofs.BackendStages.Removed310
import InitECandidate.Proofs.BackendStages.Removed311
import InitECandidate.Proofs.BackendStages.Removed312
import InitECandidate.Proofs.BackendStages.Removed313
import InitECandidate.Proofs.BackendStages.Removed314
import InitECandidate.Proofs.BackendStages.Removed315
import InitECandidate.Proofs.BackendStages.Removed316
import InitECandidate.Proofs.BackendStages.Removed317
import InitECandidate.Proofs.BackendStages.Removed318
import InitECandidate.Proofs.BackendStages.Removed319
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk304_319
def bodies : List (Nat × StackLang.HolProg 64) := [Removed304, Removed305, Removed306, Removed307, Removed308, Removed309, Removed310, Removed311, Removed312, Removed313, Removed314, Removed315, Removed316, Removed317, Removed318, Removed319]
theorem compiled_eq : AllocChunk304_319.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc304, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc305, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc306, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc307, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc308, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc309, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc310, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc311, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc312, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc313, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc314, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc315, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc316, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc317, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc318, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc319] = bodies
  rw [Removed304_eq, Removed305_eq, Removed306_eq, Removed307_eq, Removed308_eq, Removed309_eq, Removed310_eq, Removed311_eq, Removed312_eq, Removed313_eq, Removed314_eq, Removed315_eq, Removed316_eq, Removed317_eq, Removed318_eq, Removed319_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk304_319
