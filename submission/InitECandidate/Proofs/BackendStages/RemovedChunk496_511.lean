import InitECandidate.Proofs.BackendStages.AllocChunk496_511
import InitECandidate.Proofs.BackendStages.Removed496
import InitECandidate.Proofs.BackendStages.Removed497
import InitECandidate.Proofs.BackendStages.Removed498
import InitECandidate.Proofs.BackendStages.Removed499
import InitECandidate.Proofs.BackendStages.Removed500
import InitECandidate.Proofs.BackendStages.Removed501
import InitECandidate.Proofs.BackendStages.Removed502
import InitECandidate.Proofs.BackendStages.Removed503
import InitECandidate.Proofs.BackendStages.Removed504
import InitECandidate.Proofs.BackendStages.Removed505
import InitECandidate.Proofs.BackendStages.Removed506
import InitECandidate.Proofs.BackendStages.Removed507
import InitECandidate.Proofs.BackendStages.Removed508
import InitECandidate.Proofs.BackendStages.Removed509
import InitECandidate.Proofs.BackendStages.Removed510
import InitECandidate.Proofs.BackendStages.Removed511
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk496_511
def bodies : List (Nat × StackLang.HolProg 64) := [Removed496, Removed497, Removed498, Removed499, Removed500, Removed501, Removed502, Removed503, Removed504, Removed505, Removed506, Removed507, Removed508, Removed509, Removed510, Removed511]
theorem compiled_eq : AllocChunk496_511.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc496, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc497, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc498, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc499, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc500, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc501, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc502, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc503, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc504, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc505, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc506, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc507, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc508, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc509, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc510, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc511] = bodies
  rw [Removed496_eq, Removed497_eq, Removed498_eq, Removed499_eq, Removed500_eq, Removed501_eq, Removed502_eq, Removed503_eq, Removed504_eq, Removed505_eq, Removed506_eq, Removed507_eq, Removed508_eq, Removed509_eq, Removed510_eq, Removed511_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk496_511
