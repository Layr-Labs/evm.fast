import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc855
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody855_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody855_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody855_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody855_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 3#64)

def RemovedBody855_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody855_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody855_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody855_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody855_8 : StackLang.HolProg 64 :=
.seq RemovedBody855_6 RemovedBody855_7

def RemovedBody855_9 : StackLang.HolProg 64 :=
.seq RemovedBody855_5 RemovedBody855_8

def RemovedBody855_10 : StackLang.HolProg 64 :=
.seq RemovedBody855_4 RemovedBody855_9

def RemovedBody855_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody855_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody855_10 RemovedBody855_11

def RemovedBody855_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody855_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody855_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody855_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody855_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody855_18 : StackLang.HolProg 64 :=
.seq RemovedBody855_16 RemovedBody855_17

def RemovedBody855_19 : StackLang.HolProg 64 :=
.seq RemovedBody855_15 RemovedBody855_18

def RemovedBody855_20 : StackLang.HolProg 64 :=
.seq RemovedBody855_14 RemovedBody855_19

def RemovedBody855_21 : StackLang.HolProg 64 :=
.seq RemovedBody855_13 RemovedBody855_20

def RemovedBody855_22 : StackLang.HolProg 64 :=
.seq RemovedBody855_12 RemovedBody855_21

def RemovedBody855_23 : StackLang.HolProg 64 :=
.seq RemovedBody855_3 RemovedBody855_22

def RemovedBody855_24 : StackLang.HolProg 64 :=
.seq RemovedBody855_2 RemovedBody855_23

def RemovedBody855_25 : StackLang.HolProg 64 :=
.seq RemovedBody855_1 RemovedBody855_24

def RemovedBody855_26 : StackLang.HolProg 64 :=
.seq RemovedBody855_0 RemovedBody855_25

def Removed855 : Nat × StackLang.HolProg 64 := (855, RemovedBody855_26)
theorem Removed855_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc855 = Removed855 := by
  kernel_rfl
#print axioms Removed855_eq
end InitECandidate.Proofs.BackendStages
