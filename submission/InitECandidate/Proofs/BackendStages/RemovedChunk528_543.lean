import InitECandidate.Proofs.BackendStages.AllocChunk528_543
import InitECandidate.Proofs.BackendStages.Removed528
import InitECandidate.Proofs.BackendStages.Removed529
import InitECandidate.Proofs.BackendStages.Removed530
import InitECandidate.Proofs.BackendStages.Removed531
import InitECandidate.Proofs.BackendStages.Removed532
import InitECandidate.Proofs.BackendStages.Removed533
import InitECandidate.Proofs.BackendStages.Removed534
import InitECandidate.Proofs.BackendStages.Removed535
import InitECandidate.Proofs.BackendStages.Removed536
import InitECandidate.Proofs.BackendStages.Removed537
import InitECandidate.Proofs.BackendStages.Removed538
import InitECandidate.Proofs.BackendStages.Removed539
import InitECandidate.Proofs.BackendStages.Removed540
import InitECandidate.Proofs.BackendStages.Removed541
import InitECandidate.Proofs.BackendStages.Removed542
import InitECandidate.Proofs.BackendStages.Removed543
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk528_543
def bodies : List (Nat × StackLang.HolProg 64) := [Removed528, Removed529, Removed530, Removed531, Removed532, Removed533, Removed534, Removed535, Removed536, Removed537, Removed538, Removed539, Removed540, Removed541, Removed542, Removed543]
theorem compiled_eq : AllocChunk528_543.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc528, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc529, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc530, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc531, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc532, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc533, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc534, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc535, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc536, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc537, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc538, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc539, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc540, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc541, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc542, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc543] = bodies
  rw [Removed528_eq, Removed529_eq, Removed530_eq, Removed531_eq, Removed532_eq, Removed533_eq, Removed534_eq, Removed535_eq, Removed536_eq, Removed537_eq, Removed538_eq, Removed539_eq, Removed540_eq, Removed541_eq, Removed542_eq, Removed543_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk528_543
