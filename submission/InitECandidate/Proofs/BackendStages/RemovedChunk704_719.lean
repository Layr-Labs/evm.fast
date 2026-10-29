import InitECandidate.Proofs.BackendStages.AllocChunk704_719
import InitECandidate.Proofs.BackendStages.Removed704
import InitECandidate.Proofs.BackendStages.Removed705
import InitECandidate.Proofs.BackendStages.Removed706
import InitECandidate.Proofs.BackendStages.Removed707
import InitECandidate.Proofs.BackendStages.Removed708
import InitECandidate.Proofs.BackendStages.Removed709
import InitECandidate.Proofs.BackendStages.Removed710
import InitECandidate.Proofs.BackendStages.Removed711
import InitECandidate.Proofs.BackendStages.Removed712
import InitECandidate.Proofs.BackendStages.Removed713
import InitECandidate.Proofs.BackendStages.Removed714
import InitECandidate.Proofs.BackendStages.Removed715
import InitECandidate.Proofs.BackendStages.Removed716
import InitECandidate.Proofs.BackendStages.Removed717
import InitECandidate.Proofs.BackendStages.Removed718
import InitECandidate.Proofs.BackendStages.Removed719
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk704_719
def bodies : List (Nat × StackLang.HolProg 64) := [Removed704, Removed705, Removed706, Removed707, Removed708, Removed709, Removed710, Removed711, Removed712, Removed713, Removed714, Removed715, Removed716, Removed717, Removed718, Removed719]
theorem compiled_eq : AllocChunk704_719.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc704, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc705, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc706, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc707, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc708, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc709, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc710, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc711, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc712, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc713, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc714, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc715, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc716, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc717, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc718, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc719] = bodies
  rw [Removed704_eq, Removed705_eq, Removed706_eq, Removed707_eq, Removed708_eq, Removed709_eq, Removed710_eq, Removed711_eq, Removed712_eq, Removed713_eq, Removed714_eq, Removed715_eq, Removed716_eq, Removed717_eq, Removed718_eq, Removed719_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk704_719
