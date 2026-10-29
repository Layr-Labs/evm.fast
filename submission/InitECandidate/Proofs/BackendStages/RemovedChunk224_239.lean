import InitECandidate.Proofs.BackendStages.AllocChunk224_239
import InitECandidate.Proofs.BackendStages.Removed224
import InitECandidate.Proofs.BackendStages.Removed225
import InitECandidate.Proofs.BackendStages.Removed226
import InitECandidate.Proofs.BackendStages.Removed227
import InitECandidate.Proofs.BackendStages.Removed228
import InitECandidate.Proofs.BackendStages.Removed229
import InitECandidate.Proofs.BackendStages.Removed230
import InitECandidate.Proofs.BackendStages.Removed231
import InitECandidate.Proofs.BackendStages.Removed232
import InitECandidate.Proofs.BackendStages.Removed233
import InitECandidate.Proofs.BackendStages.Removed234
import InitECandidate.Proofs.BackendStages.Removed235
import InitECandidate.Proofs.BackendStages.Removed236
import InitECandidate.Proofs.BackendStages.Removed237
import InitECandidate.Proofs.BackendStages.Removed238
import InitECandidate.Proofs.BackendStages.Removed239
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk224_239
def bodies : List (Nat × StackLang.HolProg 64) := [Removed224, Removed225, Removed226, Removed227, Removed228, Removed229, Removed230, Removed231, Removed232, Removed233, Removed234, Removed235, Removed236, Removed237, Removed238, Removed239]
theorem compiled_eq : AllocChunk224_239.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc224, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc225, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc226, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc227, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc228, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc229, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc230, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc231, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc232, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc233, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc234, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc235, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc236, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc237, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc238, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc239] = bodies
  rw [Removed224_eq, Removed225_eq, Removed226_eq, Removed227_eq, Removed228_eq, Removed229_eq, Removed230_eq, Removed231_eq, Removed232_eq, Removed233_eq, Removed234_eq, Removed235_eq, Removed236_eq, Removed237_eq, Removed238_eq, Removed239_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk224_239
