import InitECandidate.Proofs.BackendStages.AllocChunk336_351
import InitECandidate.Proofs.BackendStages.Removed336
import InitECandidate.Proofs.BackendStages.Removed337
import InitECandidate.Proofs.BackendStages.Removed338
import InitECandidate.Proofs.BackendStages.Removed339
import InitECandidate.Proofs.BackendStages.Removed340
import InitECandidate.Proofs.BackendStages.Removed341
import InitECandidate.Proofs.BackendStages.Removed342
import InitECandidate.Proofs.BackendStages.Removed343
import InitECandidate.Proofs.BackendStages.Removed344
import InitECandidate.Proofs.BackendStages.Removed345
import InitECandidate.Proofs.BackendStages.Removed346
import InitECandidate.Proofs.BackendStages.Removed347
import InitECandidate.Proofs.BackendStages.Removed348
import InitECandidate.Proofs.BackendStages.Removed349
import InitECandidate.Proofs.BackendStages.Removed350
import InitECandidate.Proofs.BackendStages.Removed351
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk336_351
def bodies : List (Nat × StackLang.HolProg 64) := [Removed336, Removed337, Removed338, Removed339, Removed340, Removed341, Removed342, Removed343, Removed344, Removed345, Removed346, Removed347, Removed348, Removed349, Removed350, Removed351]
theorem compiled_eq : AllocChunk336_351.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc336, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc337, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc338, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc339, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc340, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc341, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc342, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc343, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc344, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc345, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc346, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc347, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc348, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc349, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc350, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc351] = bodies
  rw [Removed336_eq, Removed337_eq, Removed338_eq, Removed339_eq, Removed340_eq, Removed341_eq, Removed342_eq, Removed343_eq, Removed344_eq, Removed345_eq, Removed346_eq, Removed347_eq, Removed348_eq, Removed349_eq, Removed350_eq, Removed351_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk336_351
