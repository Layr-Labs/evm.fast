import InitECandidate.Proofs.BackendStages.AllocChunk480_495
import InitECandidate.Proofs.BackendStages.Removed480
import InitECandidate.Proofs.BackendStages.Removed481
import InitECandidate.Proofs.BackendStages.Removed482
import InitECandidate.Proofs.BackendStages.Removed483
import InitECandidate.Proofs.BackendStages.Removed484
import InitECandidate.Proofs.BackendStages.Removed485
import InitECandidate.Proofs.BackendStages.Removed486
import InitECandidate.Proofs.BackendStages.Removed487
import InitECandidate.Proofs.BackendStages.Removed488
import InitECandidate.Proofs.BackendStages.Removed489
import InitECandidate.Proofs.BackendStages.Removed490
import InitECandidate.Proofs.BackendStages.Removed491
import InitECandidate.Proofs.BackendStages.Removed492
import InitECandidate.Proofs.BackendStages.Removed493
import InitECandidate.Proofs.BackendStages.Removed494
import InitECandidate.Proofs.BackendStages.Removed495
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages.RemovedChunk480_495
def bodies : List (Nat × StackLang.HolProg 64) := [Removed480, Removed481, Removed482, Removed483, Removed484, Removed485, Removed486, Removed487, Removed488, Removed489, Removed490, Removed491, Removed492, Removed493, Removed494, Removed495]
theorem compiled_eq : AllocChunk480_495.bodies.map (StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3))) = bodies := by
  change [StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc480, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc481, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc482, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc483, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc484, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc485, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc486, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc487, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc488, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc489, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc490, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc491, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc492, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc493, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc494, StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc495] = bodies
  rw [Removed480_eq, Removed481_eq, Removed482_eq, Removed483_eq, Removed484_eq, Removed485_eq, Removed486_eq, Removed487_eq, Removed488_eq, Removed489_eq, Removed490_eq, Removed491_eq, Removed492_eq, Removed493_eq, Removed494_eq, Removed495_eq]
  rfl
#print axioms compiled_eq
end InitECandidate.Proofs.BackendStages.RemovedChunk480_495
