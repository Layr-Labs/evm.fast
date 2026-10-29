import InitECandidate.Proofs.BackendStages.AllocChunk464_479
import InitECandidate.Proofs.BackendStages.Removed464
import InitECandidate.Proofs.BackendStages.Removed465
import InitECandidate.Proofs.BackendStages.Removed466
import InitECandidate.Proofs.BackendStages.Removed467
import InitECandidate.Proofs.BackendStages.Removed468
import InitECandidate.Proofs.BackendStages.Removed469
import InitECandidate.Proofs.BackendStages.Removed470
import InitECandidate.Proofs.BackendStages.Removed471
import InitECandidate.Proofs.BackendStages.Removed472
import InitECandidate.Proofs.BackendStages.Removed473
import InitECandidate.Proofs.BackendStages.Removed474
import InitECandidate.Proofs.BackendStages.Removed475
import InitECandidate.Proofs.BackendStages.Removed476
import InitECandidate.Proofs.BackendStages.Removed477
import InitECandidate.Proofs.BackendStages.Removed478
import InitECandidate.Proofs.BackendStages.Removed479
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk464_479
def bodies : List (Nat × StackLang.HolProg 64) := [Removed464, Removed465, Removed466, Removed467, Removed468, Removed469, Removed470, Removed471, Removed472, Removed473, Removed474, Removed475, Removed476, Removed477, Removed478, Removed479]
theorem compiled_eq : AllocChunk464_479.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc464, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc465, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc466, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc467, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc468, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc469, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc470, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc471, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc472, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc473, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc474, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc475, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc476, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc477, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc478, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc479] = bodies
  rw [Removed464_eq, Removed465_eq, Removed466_eq, Removed467_eq, Removed468_eq, Removed469_eq, Removed470_eq, Removed471_eq, Removed472_eq, Removed473_eq, Removed474_eq, Removed475_eq, Removed476_eq, Removed477_eq, Removed478_eq, Removed479_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk464_479
