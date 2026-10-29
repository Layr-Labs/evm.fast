import InitECandidate.Proofs.BackendStages.AllocChunk160_175
import InitECandidate.Proofs.BackendStages.Removed160
import InitECandidate.Proofs.BackendStages.Removed161
import InitECandidate.Proofs.BackendStages.Removed162
import InitECandidate.Proofs.BackendStages.Removed163
import InitECandidate.Proofs.BackendStages.Removed164
import InitECandidate.Proofs.BackendStages.Removed165
import InitECandidate.Proofs.BackendStages.Removed166
import InitECandidate.Proofs.BackendStages.Removed167
import InitECandidate.Proofs.BackendStages.Removed168
import InitECandidate.Proofs.BackendStages.Removed169
import InitECandidate.Proofs.BackendStages.Removed170
import InitECandidate.Proofs.BackendStages.Removed171
import InitECandidate.Proofs.BackendStages.Removed172
import InitECandidate.Proofs.BackendStages.Removed173
import InitECandidate.Proofs.BackendStages.Removed174
import InitECandidate.Proofs.BackendStages.Removed175
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk160_175
def bodies : List (Nat × StackLang.HolProg 64) := [Removed160, Removed161, Removed162, Removed163, Removed164, Removed165, Removed166, Removed167, Removed168, Removed169, Removed170, Removed171, Removed172, Removed173, Removed174, Removed175]
theorem compiled_eq : AllocChunk160_175.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc160, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc161, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc162, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc163, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc164, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc165, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc166, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc167, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc168, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc169, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc170, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc171, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc172, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc173, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc174, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc175] = bodies
  rw [Removed160_eq, Removed161_eq, Removed162_eq, Removed163_eq, Removed164_eq, Removed165_eq, Removed166_eq, Removed167_eq, Removed168_eq, Removed169_eq, Removed170_eq, Removed171_eq, Removed172_eq, Removed173_eq, Removed174_eq, Removed175_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk160_175
