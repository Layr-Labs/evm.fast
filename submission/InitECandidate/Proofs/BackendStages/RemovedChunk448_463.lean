import InitECandidate.Proofs.BackendStages.AllocChunk448_463
import InitECandidate.Proofs.BackendStages.Removed448
import InitECandidate.Proofs.BackendStages.Removed449
import InitECandidate.Proofs.BackendStages.Removed450
import InitECandidate.Proofs.BackendStages.Removed451
import InitECandidate.Proofs.BackendStages.Removed452
import InitECandidate.Proofs.BackendStages.Removed453
import InitECandidate.Proofs.BackendStages.Removed454
import InitECandidate.Proofs.BackendStages.Removed455
import InitECandidate.Proofs.BackendStages.Removed456
import InitECandidate.Proofs.BackendStages.Removed457
import InitECandidate.Proofs.BackendStages.Removed458
import InitECandidate.Proofs.BackendStages.Removed459
import InitECandidate.Proofs.BackendStages.Removed460
import InitECandidate.Proofs.BackendStages.Removed461
import InitECandidate.Proofs.BackendStages.Removed462
import InitECandidate.Proofs.BackendStages.Removed463
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk448_463
def bodies : List (Nat × StackLang.HolProg 64) := [Removed448, Removed449, Removed450, Removed451, Removed452, Removed453, Removed454, Removed455, Removed456, Removed457, Removed458, Removed459, Removed460, Removed461, Removed462, Removed463]
theorem compiled_eq : AllocChunk448_463.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc448, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc449, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc450, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc451, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc452, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc453, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc454, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc455, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc456, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc457, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc458, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc459, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc460, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc461, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc462, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc463] = bodies
  rw [Removed448_eq, Removed449_eq, Removed450_eq, Removed451_eq, Removed452_eq, Removed453_eq, Removed454_eq, Removed455_eq, Removed456_eq, Removed457_eq, Removed458_eq, Removed459_eq, Removed460_eq, Removed461_eq, Removed462_eq, Removed463_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk448_463
