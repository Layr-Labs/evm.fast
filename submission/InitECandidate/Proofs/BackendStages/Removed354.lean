import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc354
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody354_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody354_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody354_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody354_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody354_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody354_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody354_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody354_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody354_8 : StackLang.HolProg 64 :=
.seq RemovedBody354_6 RemovedBody354_7

def RemovedBody354_9 : StackLang.HolProg 64 :=
.seq RemovedBody354_5 RemovedBody354_8

def RemovedBody354_10 : StackLang.HolProg 64 :=
.seq RemovedBody354_4 RemovedBody354_9

def RemovedBody354_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody354_12 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody354_10 RemovedBody354_11

def RemovedBody354_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody354_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody354_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody354_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody354_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody354_18 : StackLang.HolProg 64 :=
.seq RemovedBody354_16 RemovedBody354_17

def RemovedBody354_19 : StackLang.HolProg 64 :=
.seq RemovedBody354_15 RemovedBody354_18

def RemovedBody354_20 : StackLang.HolProg 64 :=
.seq RemovedBody354_14 RemovedBody354_19

def RemovedBody354_21 : StackLang.HolProg 64 :=
.seq RemovedBody354_13 RemovedBody354_20

def RemovedBody354_22 : StackLang.HolProg 64 :=
.seq RemovedBody354_12 RemovedBody354_21

def RemovedBody354_23 : StackLang.HolProg 64 :=
.seq RemovedBody354_3 RemovedBody354_22

def RemovedBody354_24 : StackLang.HolProg 64 :=
.seq RemovedBody354_2 RemovedBody354_23

def RemovedBody354_25 : StackLang.HolProg 64 :=
.seq RemovedBody354_1 RemovedBody354_24

def RemovedBody354_26 : StackLang.HolProg 64 :=
.seq RemovedBody354_0 RemovedBody354_25

def Removed354 : Nat × StackLang.HolProg 64 := (354, RemovedBody354_26)
theorem Removed354_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc354 = Removed354 := by
  kernel_rfl
#print axioms Removed354_eq
end InitECandidate.Proofs.BackendStages
