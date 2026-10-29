import InitECandidate.Proofs.BackendStages.AllocChunk416_431
import InitECandidate.Proofs.BackendStages.Removed416
import InitECandidate.Proofs.BackendStages.Removed417
import InitECandidate.Proofs.BackendStages.Removed418
import InitECandidate.Proofs.BackendStages.Removed419
import InitECandidate.Proofs.BackendStages.Removed420
import InitECandidate.Proofs.BackendStages.Removed421
import InitECandidate.Proofs.BackendStages.Removed422
import InitECandidate.Proofs.BackendStages.Removed423
import InitECandidate.Proofs.BackendStages.Removed424
import InitECandidate.Proofs.BackendStages.Removed425
import InitECandidate.Proofs.BackendStages.Removed426
import InitECandidate.Proofs.BackendStages.Removed427
import InitECandidate.Proofs.BackendStages.Removed428
import InitECandidate.Proofs.BackendStages.Removed429
import InitECandidate.Proofs.BackendStages.Removed430
import InitECandidate.Proofs.BackendStages.Removed431
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk416_431
def bodies : List (Nat × StackLang.HolProg 64) := [Removed416, Removed417, Removed418, Removed419, Removed420, Removed421, Removed422, Removed423, Removed424, Removed425, Removed426, Removed427, Removed428, Removed429, Removed430, Removed431]
theorem compiled_eq : AllocChunk416_431.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc416, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc417, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc418, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc419, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc420, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc421, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc422, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc423, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc424, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc425, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc426, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc427, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc428, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc429, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc430, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc431] = bodies
  rw [Removed416_eq, Removed417_eq, Removed418_eq, Removed419_eq, Removed420_eq, Removed421_eq, Removed422_eq, Removed423_eq, Removed424_eq, Removed425_eq, Removed426_eq, Removed427_eq, Removed428_eq, Removed429_eq, Removed430_eq, Removed431_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk416_431
