import InitECandidate.Proofs.BackendStages.AllocChunk80_95
import InitECandidate.Proofs.BackendStages.Removed80
import InitECandidate.Proofs.BackendStages.Removed81
import InitECandidate.Proofs.BackendStages.Removed82
import InitECandidate.Proofs.BackendStages.Removed83
import InitECandidate.Proofs.BackendStages.Removed84
import InitECandidate.Proofs.BackendStages.Removed85
import InitECandidate.Proofs.BackendStages.Removed86
import InitECandidate.Proofs.BackendStages.Removed87
import InitECandidate.Proofs.BackendStages.Removed88
import InitECandidate.Proofs.BackendStages.Removed89
import InitECandidate.Proofs.BackendStages.Removed90
import InitECandidate.Proofs.BackendStages.Removed91
import InitECandidate.Proofs.BackendStages.Removed92
import InitECandidate.Proofs.BackendStages.Removed93
import InitECandidate.Proofs.BackendStages.Removed94
import InitECandidate.Proofs.BackendStages.Removed95
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk80_95
def bodies : List (Nat × StackLang.HolProg 64) := [Removed80, Removed81, Removed82, Removed83, Removed84, Removed85, Removed86, Removed87, Removed88, Removed89, Removed90, Removed91, Removed92, Removed93, Removed94, Removed95]
theorem compiled_eq : AllocChunk80_95.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc80, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc81, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc82, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc83, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc84, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc85, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc86, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc87, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc88, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc89, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc90, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc91, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc92, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc93, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc94, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc95] = bodies
  rw [Removed80_eq, Removed81_eq, Removed82_eq, Removed83_eq, Removed84_eq, Removed85_eq, Removed86_eq, Removed87_eq, Removed88_eq, Removed89_eq, Removed90_eq, Removed91_eq, Removed92_eq, Removed93_eq, Removed94_eq, Removed95_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk80_95
