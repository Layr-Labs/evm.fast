import InitECandidate.Proofs.BackendStages.AllocChunk176_191
import InitECandidate.Proofs.BackendStages.Removed176
import InitECandidate.Proofs.BackendStages.Removed177
import InitECandidate.Proofs.BackendStages.Removed178
import InitECandidate.Proofs.BackendStages.Removed179
import InitECandidate.Proofs.BackendStages.Removed180
import InitECandidate.Proofs.BackendStages.Removed181
import InitECandidate.Proofs.BackendStages.Removed182
import InitECandidate.Proofs.BackendStages.Removed183
import InitECandidate.Proofs.BackendStages.Removed184
import InitECandidate.Proofs.BackendStages.Removed185
import InitECandidate.Proofs.BackendStages.Removed186
import InitECandidate.Proofs.BackendStages.Removed187
import InitECandidate.Proofs.BackendStages.Removed188
import InitECandidate.Proofs.BackendStages.Removed189
import InitECandidate.Proofs.BackendStages.Removed190
import InitECandidate.Proofs.BackendStages.Removed191
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk176_191
def bodies : List (Nat × StackLang.HolProg 64) := [Removed176, Removed177, Removed178, Removed179, Removed180, Removed181, Removed182, Removed183, Removed184, Removed185, Removed186, Removed187, Removed188, Removed189, Removed190, Removed191]
theorem compiled_eq : AllocChunk176_191.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc176, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc177, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc178, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc179, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc180, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc181, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc182, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc183, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc184, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc185, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc186, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc187, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc188, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc189, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc190, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc191] = bodies
  rw [Removed176_eq, Removed177_eq, Removed178_eq, Removed179_eq, Removed180_eq, Removed181_eq, Removed182_eq, Removed183_eq, Removed184_eq, Removed185_eq, Removed186_eq, Removed187_eq, Removed188_eq, Removed189_eq, Removed190_eq, Removed191_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk176_191
