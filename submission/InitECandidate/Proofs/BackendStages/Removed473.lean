import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc473
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody473_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody473_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 192#64))

def RemovedBody473_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody473_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def RemovedBody473_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody473_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody473_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody473_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody473_13 : StackLang.HolProg 64 :=
.seq RemovedBody473_11 RemovedBody473_12

def RemovedBody473_14 : StackLang.HolProg 64 :=
.seq RemovedBody473_10 RemovedBody473_13

def RemovedBody473_15 : StackLang.HolProg 64 :=
.seq RemovedBody473_9 RemovedBody473_14

def RemovedBody473_16 : StackLang.HolProg 64 :=
.seq RemovedBody473_8 RemovedBody473_15

def RemovedBody473_17 : StackLang.HolProg 64 :=
.seq RemovedBody473_7 RemovedBody473_16

def RemovedBody473_18 : StackLang.HolProg 64 :=
.seq RemovedBody473_6 RemovedBody473_17

def RemovedBody473_19 : StackLang.HolProg 64 :=
.seq RemovedBody473_5 RemovedBody473_18

def RemovedBody473_20 : StackLang.HolProg 64 :=
.seq RemovedBody473_4 RemovedBody473_19

def RemovedBody473_21 : StackLang.HolProg 64 :=
.seq RemovedBody473_3 RemovedBody473_20

def RemovedBody473_22 : StackLang.HolProg 64 :=
.seq RemovedBody473_2 RemovedBody473_21

def RemovedBody473_23 : StackLang.HolProg 64 :=
.seq RemovedBody473_1 RemovedBody473_22

def RemovedBody473_24 : StackLang.HolProg 64 :=
.seq RemovedBody473_0 RemovedBody473_23

def Removed473 : Nat × StackLang.HolProg 64 := (473, RemovedBody473_24)
theorem Removed473_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc473 = Removed473 := by
  kernel_rfl
#print axioms Removed473_eq
end InitECandidate.Proofs.BackendStages
