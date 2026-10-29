import InitECandidate.Proofs.BackendStages.AllocChunk144_159
import InitECandidate.Proofs.BackendStages.Removed144
import InitECandidate.Proofs.BackendStages.Removed145
import InitECandidate.Proofs.BackendStages.Removed146
import InitECandidate.Proofs.BackendStages.Removed147
import InitECandidate.Proofs.BackendStages.Removed148
import InitECandidate.Proofs.BackendStages.Removed149
import InitECandidate.Proofs.BackendStages.Removed150
import InitECandidate.Proofs.BackendStages.Removed151
import InitECandidate.Proofs.BackendStages.Removed152
import InitECandidate.Proofs.BackendStages.Removed153
import InitECandidate.Proofs.BackendStages.Removed154
import InitECandidate.Proofs.BackendStages.Removed155
import InitECandidate.Proofs.BackendStages.Removed156
import InitECandidate.Proofs.BackendStages.Removed157
import InitECandidate.Proofs.BackendStages.Removed158
import InitECandidate.Proofs.BackendStages.Removed159
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk144_159
def bodies : List (Nat × StackLang.HolProg 64) := [Removed144, Removed145, Removed146, Removed147, Removed148, Removed149, Removed150, Removed151, Removed152, Removed153, Removed154, Removed155, Removed156, Removed157, Removed158, Removed159]
theorem compiled_eq : AllocChunk144_159.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc144, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc145, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc146, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc147, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc148, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc149, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc150, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc151, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc152, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc153, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc154, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc155, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc156, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc157, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc158, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc159] = bodies
  rw [Removed144_eq, Removed145_eq, Removed146_eq, Removed147_eq, Removed148_eq, Removed149_eq, Removed150_eq, Removed151_eq, Removed152_eq, Removed153_eq, Removed154_eq, Removed155_eq, Removed156_eq, Removed157_eq, Removed158_eq, Removed159_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk144_159
