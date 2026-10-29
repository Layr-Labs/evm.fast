import InitECandidate.Proofs.BackendStages.AllocChunk64_79
import InitECandidate.Proofs.BackendStages.Removed64
import InitECandidate.Proofs.BackendStages.Removed65
import InitECandidate.Proofs.BackendStages.Removed66
import InitECandidate.Proofs.BackendStages.Removed67
import InitECandidate.Proofs.BackendStages.Removed68
import InitECandidate.Proofs.BackendStages.Removed69
import InitECandidate.Proofs.BackendStages.Removed70
import InitECandidate.Proofs.BackendStages.Removed71
import InitECandidate.Proofs.BackendStages.Removed72
import InitECandidate.Proofs.BackendStages.Removed73
import InitECandidate.Proofs.BackendStages.Removed74
import InitECandidate.Proofs.BackendStages.Removed75
import InitECandidate.Proofs.BackendStages.Removed76
import InitECandidate.Proofs.BackendStages.Removed77
import InitECandidate.Proofs.BackendStages.Removed78
import InitECandidate.Proofs.BackendStages.Removed79
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk64_79
def bodies : List (Nat × StackLang.HolProg 64) := [Removed64, Removed65, Removed66, Removed67, Removed68, Removed69, Removed70, Removed71, Removed72, Removed73, Removed74, Removed75, Removed76, Removed77, Removed78, Removed79]
theorem compiled_eq : AllocChunk64_79.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc64, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc65, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc66, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc67, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc68, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc69, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc70, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc71, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc72, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc73, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc74, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc75, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc76, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc77, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc78, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc79] = bodies
  rw [Removed64_eq, Removed65_eq, Removed66_eq, Removed67_eq, Removed68_eq, Removed69_eq, Removed70_eq, Removed71_eq, Removed72_eq, Removed73_eq, Removed74_eq, Removed75_eq, Removed76_eq, Removed77_eq, Removed78_eq, Removed79_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk64_79
