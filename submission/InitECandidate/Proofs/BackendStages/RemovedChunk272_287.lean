import InitECandidate.Proofs.BackendStages.AllocChunk272_287
import InitECandidate.Proofs.BackendStages.Removed272
import InitECandidate.Proofs.BackendStages.Removed273
import InitECandidate.Proofs.BackendStages.Removed274
import InitECandidate.Proofs.BackendStages.Removed275
import InitECandidate.Proofs.BackendStages.Removed276
import InitECandidate.Proofs.BackendStages.Removed277
import InitECandidate.Proofs.BackendStages.Removed278
import InitECandidate.Proofs.BackendStages.Removed279
import InitECandidate.Proofs.BackendStages.Removed280
import InitECandidate.Proofs.BackendStages.Removed281
import InitECandidate.Proofs.BackendStages.Removed282
import InitECandidate.Proofs.BackendStages.Removed283
import InitECandidate.Proofs.BackendStages.Removed284
import InitECandidate.Proofs.BackendStages.Removed285
import InitECandidate.Proofs.BackendStages.Removed286
import InitECandidate.Proofs.BackendStages.Removed287
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk272_287
def bodies : List (Nat × StackLang.HolProg 64) := [Removed272, Removed273, Removed274, Removed275, Removed276, Removed277, Removed278, Removed279, Removed280, Removed281, Removed282, Removed283, Removed284, Removed285, Removed286, Removed287]
theorem compiled_eq : AllocChunk272_287.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc272, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc273, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc274, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc275, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc276, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc277, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc278, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc279, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc280, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc281, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc282, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc283, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc284, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc285, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc286, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc287] = bodies
  rw [Removed272_eq, Removed273_eq, Removed274_eq, Removed275_eq, Removed276_eq, Removed277_eq, Removed278_eq, Removed279_eq, Removed280_eq, Removed281_eq, Removed282_eq, Removed283_eq, Removed284_eq, Removed285_eq, Removed286_eq, Removed287_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk272_287
