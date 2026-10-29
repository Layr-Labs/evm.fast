import InitECandidate.Proofs.BackendStages.AllocChunk608_623
import InitECandidate.Proofs.BackendStages.Removed608
import InitECandidate.Proofs.BackendStages.Removed609
import InitECandidate.Proofs.BackendStages.Removed610
import InitECandidate.Proofs.BackendStages.Removed611
import InitECandidate.Proofs.BackendStages.Removed612
import InitECandidate.Proofs.BackendStages.Removed613
import InitECandidate.Proofs.BackendStages.Removed614
import InitECandidate.Proofs.BackendStages.Removed615
import InitECandidate.Proofs.BackendStages.Removed616
import InitECandidate.Proofs.BackendStages.Removed617
import InitECandidate.Proofs.BackendStages.Removed618
import InitECandidate.Proofs.BackendStages.Removed619
import InitECandidate.Proofs.BackendStages.Removed620
import InitECandidate.Proofs.BackendStages.Removed621
import InitECandidate.Proofs.BackendStages.Removed622
import InitECandidate.Proofs.BackendStages.Removed623
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk608_623
def bodies : List (Nat × StackLang.HolProg 64) := [Removed608, Removed609, Removed610, Removed611, Removed612, Removed613, Removed614, Removed615, Removed616, Removed617, Removed618, Removed619, Removed620, Removed621, Removed622, Removed623]
theorem compiled_eq : AllocChunk608_623.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc608, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc609, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc610, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc611, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc612, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc613, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc614, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc615, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc616, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc617, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc618, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc619, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc620, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc621, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc622, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc623] = bodies
  rw [Removed608_eq, Removed609_eq, Removed610_eq, Removed611_eq, Removed612_eq, Removed613_eq, Removed614_eq, Removed615_eq, Removed616_eq, Removed617_eq, Removed618_eq, Removed619_eq, Removed620_eq, Removed621_eq, Removed622_eq, Removed623_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk608_623
