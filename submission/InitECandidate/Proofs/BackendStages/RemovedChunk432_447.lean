import InitECandidate.Proofs.BackendStages.AllocChunk432_447
import InitECandidate.Proofs.BackendStages.Removed432
import InitECandidate.Proofs.BackendStages.Removed433
import InitECandidate.Proofs.BackendStages.Removed434
import InitECandidate.Proofs.BackendStages.Removed435
import InitECandidate.Proofs.BackendStages.Removed436
import InitECandidate.Proofs.BackendStages.Removed437
import InitECandidate.Proofs.BackendStages.Removed438
import InitECandidate.Proofs.BackendStages.Removed439
import InitECandidate.Proofs.BackendStages.Removed440
import InitECandidate.Proofs.BackendStages.Removed441
import InitECandidate.Proofs.BackendStages.Removed442
import InitECandidate.Proofs.BackendStages.Removed443
import InitECandidate.Proofs.BackendStages.Removed444
import InitECandidate.Proofs.BackendStages.Removed445
import InitECandidate.Proofs.BackendStages.Removed446
import InitECandidate.Proofs.BackendStages.Removed447
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk432_447
def bodies : List (Nat × StackLang.HolProg 64) := [Removed432, Removed433, Removed434, Removed435, Removed436, Removed437, Removed438, Removed439, Removed440, Removed441, Removed442, Removed443, Removed444, Removed445, Removed446, Removed447]
theorem compiled_eq : AllocChunk432_447.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc432, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc433, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc434, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc435, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc436, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc437, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc438, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc439, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc440, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc441, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc442, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc443, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc444, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc445, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc446, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc447] = bodies
  rw [Removed432_eq, Removed433_eq, Removed434_eq, Removed435_eq, Removed436_eq, Removed437_eq, Removed438_eq, Removed439_eq, Removed440_eq, Removed441_eq, Removed442_eq, Removed443_eq, Removed444_eq, Removed445_eq, Removed446_eq, Removed447_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk432_447
