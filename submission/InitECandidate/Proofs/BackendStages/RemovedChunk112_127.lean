import InitECandidate.Proofs.BackendStages.AllocChunk112_127
import InitECandidate.Proofs.BackendStages.Removed112
import InitECandidate.Proofs.BackendStages.Removed113
import InitECandidate.Proofs.BackendStages.Removed114
import InitECandidate.Proofs.BackendStages.Removed115
import InitECandidate.Proofs.BackendStages.Removed116
import InitECandidate.Proofs.BackendStages.Removed117
import InitECandidate.Proofs.BackendStages.Removed118
import InitECandidate.Proofs.BackendStages.Removed119
import InitECandidate.Proofs.BackendStages.Removed120
import InitECandidate.Proofs.BackendStages.Removed121
import InitECandidate.Proofs.BackendStages.Removed122
import InitECandidate.Proofs.BackendStages.Removed123
import InitECandidate.Proofs.BackendStages.Removed124
import InitECandidate.Proofs.BackendStages.Removed125
import InitECandidate.Proofs.BackendStages.Removed126
import InitECandidate.Proofs.BackendStages.Removed127
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk112_127
def bodies : List (Nat × StackLang.HolProg 64) := [Removed112, Removed113, Removed114, Removed115, Removed116, Removed117, Removed118, Removed119, Removed120, Removed121, Removed122, Removed123, Removed124, Removed125, Removed126, Removed127]
theorem compiled_eq : AllocChunk112_127.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc112, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc113, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc114, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc115, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc116, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc117, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc118, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc119, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc120, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc121, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc122, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc123, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc124, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc125, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc126, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc127] = bodies
  rw [Removed112_eq, Removed113_eq, Removed114_eq, Removed115_eq, Removed116_eq, Removed117_eq, Removed118_eq, Removed119_eq, Removed120_eq, Removed121_eq, Removed122_eq, Removed123_eq, Removed124_eq, Removed125_eq, Removed126_eq, Removed127_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk112_127
