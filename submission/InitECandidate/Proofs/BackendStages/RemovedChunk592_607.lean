import InitECandidate.Proofs.BackendStages.AllocChunk592_607
import InitECandidate.Proofs.BackendStages.Removed592
import InitECandidate.Proofs.BackendStages.Removed593
import InitECandidate.Proofs.BackendStages.Removed594
import InitECandidate.Proofs.BackendStages.Removed595
import InitECandidate.Proofs.BackendStages.Removed596
import InitECandidate.Proofs.BackendStages.Removed597
import InitECandidate.Proofs.BackendStages.Removed598
import InitECandidate.Proofs.BackendStages.Removed599
import InitECandidate.Proofs.BackendStages.Removed600
import InitECandidate.Proofs.BackendStages.Removed601
import InitECandidate.Proofs.BackendStages.Removed602
import InitECandidate.Proofs.BackendStages.Removed603
import InitECandidate.Proofs.BackendStages.Removed604
import InitECandidate.Proofs.BackendStages.Removed605
import InitECandidate.Proofs.BackendStages.Removed606
import InitECandidate.Proofs.BackendStages.Removed607
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk592_607
def bodies : List (Nat × StackLang.HolProg 64) := [Removed592, Removed593, Removed594, Removed595, Removed596, Removed597, Removed598, Removed599, Removed600, Removed601, Removed602, Removed603, Removed604, Removed605, Removed606, Removed607]
theorem compiled_eq : AllocChunk592_607.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc592, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc593, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc594, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc595, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc596, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc597, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc598, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc599, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc600, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc601, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc602, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc603, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc604, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc605, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc606, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc607] = bodies
  rw [Removed592_eq, Removed593_eq, Removed594_eq, Removed595_eq, Removed596_eq, Removed597_eq, Removed598_eq, Removed599_eq, Removed600_eq, Removed601_eq, Removed602_eq, Removed603_eq, Removed604_eq, Removed605_eq, Removed606_eq, Removed607_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk592_607
