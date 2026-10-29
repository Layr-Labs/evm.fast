import InitECandidate.Proofs.BackendStages.AllocChunk96_111
import InitECandidate.Proofs.BackendStages.Removed96
import InitECandidate.Proofs.BackendStages.Removed97
import InitECandidate.Proofs.BackendStages.Removed98
import InitECandidate.Proofs.BackendStages.Removed99
import InitECandidate.Proofs.BackendStages.Removed100
import InitECandidate.Proofs.BackendStages.Removed101
import InitECandidate.Proofs.BackendStages.Removed102
import InitECandidate.Proofs.BackendStages.Removed103
import InitECandidate.Proofs.BackendStages.Removed104
import InitECandidate.Proofs.BackendStages.Removed105
import InitECandidate.Proofs.BackendStages.Removed106
import InitECandidate.Proofs.BackendStages.Removed107
import InitECandidate.Proofs.BackendStages.Removed108
import InitECandidate.Proofs.BackendStages.Removed109
import InitECandidate.Proofs.BackendStages.Removed110
import InitECandidate.Proofs.BackendStages.Removed111
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk96_111
def bodies : List (Nat × StackLang.HolProg 64) := [Removed96, Removed97, Removed98, Removed99, Removed100, Removed101, Removed102, Removed103, Removed104, Removed105, Removed106, Removed107, Removed108, Removed109, Removed110, Removed111]
theorem compiled_eq : AllocChunk96_111.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc96, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc97, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc98, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc99, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc100, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc101, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc102, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc103, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc104, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc105, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc106, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc107, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc108, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc109, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc110, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc111] = bodies
  rw [Removed96_eq, Removed97_eq, Removed98_eq, Removed99_eq, Removed100_eq, Removed101_eq, Removed102_eq, Removed103_eq, Removed104_eq, Removed105_eq, Removed106_eq, Removed107_eq, Removed108_eq, Removed109_eq, Removed110_eq, Removed111_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk96_111
