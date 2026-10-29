import InitECandidate.Proofs.BackendStages.AllocChunk576_591
import InitECandidate.Proofs.BackendStages.Removed576
import InitECandidate.Proofs.BackendStages.Removed577
import InitECandidate.Proofs.BackendStages.Removed578
import InitECandidate.Proofs.BackendStages.Removed579
import InitECandidate.Proofs.BackendStages.Removed580
import InitECandidate.Proofs.BackendStages.Removed581
import InitECandidate.Proofs.BackendStages.Removed582
import InitECandidate.Proofs.BackendStages.Removed583
import InitECandidate.Proofs.BackendStages.Removed584
import InitECandidate.Proofs.BackendStages.Removed585
import InitECandidate.Proofs.BackendStages.Removed586
import InitECandidate.Proofs.BackendStages.Removed587
import InitECandidate.Proofs.BackendStages.Removed588
import InitECandidate.Proofs.BackendStages.Removed589
import InitECandidate.Proofs.BackendStages.Removed590
import InitECandidate.Proofs.BackendStages.Removed591
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk576_591
def bodies : List (Nat × StackLang.HolProg 64) := [Removed576, Removed577, Removed578, Removed579, Removed580, Removed581, Removed582, Removed583, Removed584, Removed585, Removed586, Removed587, Removed588, Removed589, Removed590, Removed591]
theorem compiled_eq : AllocChunk576_591.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc576, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc577, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc578, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc579, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc580, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc581, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc582, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc583, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc584, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc585, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc586, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc587, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc588, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc589, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc590, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc591] = bodies
  rw [Removed576_eq, Removed577_eq, Removed578_eq, Removed579_eq, Removed580_eq, Removed581_eq, Removed582_eq, Removed583_eq, Removed584_eq, Removed585_eq, Removed586_eq, Removed587_eq, Removed588_eq, Removed589_eq, Removed590_eq, Removed591_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk576_591
