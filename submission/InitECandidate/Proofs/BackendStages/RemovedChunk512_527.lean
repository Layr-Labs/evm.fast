import InitECandidate.Proofs.BackendStages.AllocChunk512_527
import InitECandidate.Proofs.BackendStages.Removed512
import InitECandidate.Proofs.BackendStages.Removed513
import InitECandidate.Proofs.BackendStages.Removed514
import InitECandidate.Proofs.BackendStages.Removed515
import InitECandidate.Proofs.BackendStages.Removed516
import InitECandidate.Proofs.BackendStages.Removed517
import InitECandidate.Proofs.BackendStages.Removed518
import InitECandidate.Proofs.BackendStages.Removed519
import InitECandidate.Proofs.BackendStages.Removed520
import InitECandidate.Proofs.BackendStages.Removed521
import InitECandidate.Proofs.BackendStages.Removed522
import InitECandidate.Proofs.BackendStages.Removed523
import InitECandidate.Proofs.BackendStages.Removed524
import InitECandidate.Proofs.BackendStages.Removed525
import InitECandidate.Proofs.BackendStages.Removed526
import InitECandidate.Proofs.BackendStages.Removed527
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk512_527
def bodies : List (Nat × StackLang.HolProg 64) := [Removed512, Removed513, Removed514, Removed515, Removed516, Removed517, Removed518, Removed519, Removed520, Removed521, Removed522, Removed523, Removed524, Removed525, Removed526, Removed527]
theorem compiled_eq : AllocChunk512_527.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc512, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc513, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc514, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc515, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc516, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc517, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc518, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc519, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc520, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc521, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc522, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc523, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc524, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc525, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc526, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc527] = bodies
  rw [Removed512_eq, Removed513_eq, Removed514_eq, Removed515_eq, Removed516_eq, Removed517_eq, Removed518_eq, Removed519_eq, Removed520_eq, Removed521_eq, Removed522_eq, Removed523_eq, Removed524_eq, Removed525_eq, Removed526_eq, Removed527_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk512_527
