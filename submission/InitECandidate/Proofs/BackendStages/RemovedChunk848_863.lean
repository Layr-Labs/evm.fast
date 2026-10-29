import InitECandidate.Proofs.BackendStages.AllocChunk848_863
import InitECandidate.Proofs.BackendStages.Removed848
import InitECandidate.Proofs.BackendStages.Removed849
import InitECandidate.Proofs.BackendStages.Removed850
import InitECandidate.Proofs.BackendStages.Removed851
import InitECandidate.Proofs.BackendStages.Removed852
import InitECandidate.Proofs.BackendStages.Removed853
import InitECandidate.Proofs.BackendStages.Removed854
import InitECandidate.Proofs.BackendStages.Removed855
import InitECandidate.Proofs.BackendStages.Removed856
import InitECandidate.Proofs.BackendStages.Removed857
import InitECandidate.Proofs.BackendStages.Removed858
import InitECandidate.Proofs.BackendStages.Removed859
import InitECandidate.Proofs.BackendStages.Removed860
import InitECandidate.Proofs.BackendStages.Removed861
import InitECandidate.Proofs.BackendStages.Removed862
import InitECandidate.Proofs.BackendStages.Removed863
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk848_863
def bodies : List (Nat × StackLang.HolProg 64) := [Removed848, Removed849, Removed850, Removed851, Removed852, Removed853, Removed854, Removed855, Removed856, Removed857, Removed858, Removed859, Removed860, Removed861, Removed862, Removed863]
theorem compiled_eq : AllocChunk848_863.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc848, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc849, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc850, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc851, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc852, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc853, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc854, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc855, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc856, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc857, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc858, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc859, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc860, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc861, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc862, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc863] = bodies
  rw [Removed848_eq, Removed849_eq, Removed850_eq, Removed851_eq, Removed852_eq, Removed853_eq, Removed854_eq, Removed855_eq, Removed856_eq, Removed857_eq, Removed858_eq, Removed859_eq, Removed860_eq, Removed861_eq, Removed862_eq, Removed863_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk848_863
