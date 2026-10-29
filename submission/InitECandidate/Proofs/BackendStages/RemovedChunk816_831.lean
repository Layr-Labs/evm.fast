import InitECandidate.Proofs.BackendStages.AllocChunk816_831
import InitECandidate.Proofs.BackendStages.Removed816
import InitECandidate.Proofs.BackendStages.Removed817
import InitECandidate.Proofs.BackendStages.Removed818
import InitECandidate.Proofs.BackendStages.Removed819
import InitECandidate.Proofs.BackendStages.Removed820
import InitECandidate.Proofs.BackendStages.Removed821
import InitECandidate.Proofs.BackendStages.Removed822
import InitECandidate.Proofs.BackendStages.Removed823
import InitECandidate.Proofs.BackendStages.Removed824
import InitECandidate.Proofs.BackendStages.Removed825
import InitECandidate.Proofs.BackendStages.Removed826
import InitECandidate.Proofs.BackendStages.Removed827
import InitECandidate.Proofs.BackendStages.Removed828
import InitECandidate.Proofs.BackendStages.Removed829
import InitECandidate.Proofs.BackendStages.Removed830
import InitECandidate.Proofs.BackendStages.Removed831
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk816_831
def bodies : List (Nat × StackLang.HolProg 64) := [Removed816, Removed817, Removed818, Removed819, Removed820, Removed821, Removed822, Removed823, Removed824, Removed825, Removed826, Removed827, Removed828, Removed829, Removed830, Removed831]
theorem compiled_eq : AllocChunk816_831.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc816, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc817, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc818, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc819, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc820, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc821, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc822, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc823, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc824, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc825, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc826, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc827, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc828, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc829, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc830, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc831] = bodies
  rw [Removed816_eq, Removed817_eq, Removed818_eq, Removed819_eq, Removed820_eq, Removed821_eq, Removed822_eq, Removed823_eq, Removed824_eq, Removed825_eq, Removed826_eq, Removed827_eq, Removed828_eq, Removed829_eq, Removed830_eq, Removed831_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk816_831
