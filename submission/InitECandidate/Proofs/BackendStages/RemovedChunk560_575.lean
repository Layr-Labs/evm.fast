import InitECandidate.Proofs.BackendStages.AllocChunk560_575
import InitECandidate.Proofs.BackendStages.Removed560
import InitECandidate.Proofs.BackendStages.Removed561
import InitECandidate.Proofs.BackendStages.Removed562
import InitECandidate.Proofs.BackendStages.Removed563
import InitECandidate.Proofs.BackendStages.Removed564
import InitECandidate.Proofs.BackendStages.Removed565
import InitECandidate.Proofs.BackendStages.Removed566
import InitECandidate.Proofs.BackendStages.Removed567
import InitECandidate.Proofs.BackendStages.Removed568
import InitECandidate.Proofs.BackendStages.Removed569
import InitECandidate.Proofs.BackendStages.Removed570
import InitECandidate.Proofs.BackendStages.Removed571
import InitECandidate.Proofs.BackendStages.Removed572
import InitECandidate.Proofs.BackendStages.Removed573
import InitECandidate.Proofs.BackendStages.Removed574
import InitECandidate.Proofs.BackendStages.Removed575
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk560_575
def bodies : List (Nat × StackLang.HolProg 64) := [Removed560, Removed561, Removed562, Removed563, Removed564, Removed565, Removed566, Removed567, Removed568, Removed569, Removed570, Removed571, Removed572, Removed573, Removed574, Removed575]
theorem compiled_eq : AllocChunk560_575.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc560, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc561, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc562, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc563, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc564, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc565, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc566, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc567, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc568, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc569, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc570, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc571, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc572, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc573, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc574, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc575] = bodies
  rw [Removed560_eq, Removed561_eq, Removed562_eq, Removed563_eq, Removed564_eq, Removed565_eq, Removed566_eq, Removed567_eq, Removed568_eq, Removed569_eq, Removed570_eq, Removed571_eq, Removed572_eq, Removed573_eq, Removed574_eq, Removed575_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk560_575
