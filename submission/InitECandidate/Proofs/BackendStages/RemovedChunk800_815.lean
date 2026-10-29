import InitECandidate.Proofs.BackendStages.AllocChunk800_815
import InitECandidate.Proofs.BackendStages.Removed800
import InitECandidate.Proofs.BackendStages.Removed801
import InitECandidate.Proofs.BackendStages.Removed802
import InitECandidate.Proofs.BackendStages.Removed803
import InitECandidate.Proofs.BackendStages.Removed804
import InitECandidate.Proofs.BackendStages.Removed805
import InitECandidate.Proofs.BackendStages.Removed806
import InitECandidate.Proofs.BackendStages.Removed807
import InitECandidate.Proofs.BackendStages.Removed808
import InitECandidate.Proofs.BackendStages.Removed809
import InitECandidate.Proofs.BackendStages.Removed810
import InitECandidate.Proofs.BackendStages.Removed811
import InitECandidate.Proofs.BackendStages.Removed812
import InitECandidate.Proofs.BackendStages.Removed813
import InitECandidate.Proofs.BackendStages.Removed814
import InitECandidate.Proofs.BackendStages.Removed815
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk800_815
def bodies : List (Nat × StackLang.HolProg 64) := [Removed800, Removed801, Removed802, Removed803, Removed804, Removed805, Removed806, Removed807, Removed808, Removed809, Removed810, Removed811, Removed812, Removed813, Removed814, Removed815]
theorem compiled_eq : AllocChunk800_815.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc800, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc801, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc802, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc803, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc804, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc805, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc806, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc807, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc808, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc809, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc810, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc811, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc812, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc813, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc814, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc815] = bodies
  rw [Removed800_eq, Removed801_eq, Removed802_eq, Removed803_eq, Removed804_eq, Removed805_eq, Removed806_eq, Removed807_eq, Removed808_eq, Removed809_eq, Removed810_eq, Removed811_eq, Removed812_eq, Removed813_eq, Removed814_eq, Removed815_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk800_815
