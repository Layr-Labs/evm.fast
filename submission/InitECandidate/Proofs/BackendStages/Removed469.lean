import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc469
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody469_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody469_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody469_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody469_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody469_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 64#64))

def RemovedBody469_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody469_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 4#64)

def RemovedBody469_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody469_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def RemovedBody469_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_14 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody469_15 : StackLang.HolProg 64 :=
.seq RemovedBody469_13 RemovedBody469_14

def RemovedBody469_16 : StackLang.HolProg 64 :=
.seq RemovedBody469_12 RemovedBody469_15

def RemovedBody469_17 : StackLang.HolProg 64 :=
.seq RemovedBody469_11 RemovedBody469_16

def RemovedBody469_18 : StackLang.HolProg 64 :=
.seq RemovedBody469_10 RemovedBody469_17

def RemovedBody469_19 : StackLang.HolProg 64 :=
.seq RemovedBody469_9 RemovedBody469_18

def RemovedBody469_20 : StackLang.HolProg 64 :=
.seq RemovedBody469_8 RemovedBody469_19

def RemovedBody469_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_22 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody469_20 RemovedBody469_21

def RemovedBody469_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody469_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody469_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody469_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody469_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody469_28 : StackLang.HolProg 64 :=
.seq RemovedBody469_26 RemovedBody469_27

def RemovedBody469_29 : StackLang.HolProg 64 :=
.seq RemovedBody469_25 RemovedBody469_28

def RemovedBody469_30 : StackLang.HolProg 64 :=
.seq RemovedBody469_24 RemovedBody469_29

def RemovedBody469_31 : StackLang.HolProg 64 :=
.seq RemovedBody469_23 RemovedBody469_30

def RemovedBody469_32 : StackLang.HolProg 64 :=
.seq RemovedBody469_22 RemovedBody469_31

def RemovedBody469_33 : StackLang.HolProg 64 :=
.seq RemovedBody469_7 RemovedBody469_32

def RemovedBody469_34 : StackLang.HolProg 64 :=
.seq RemovedBody469_6 RemovedBody469_33

def RemovedBody469_35 : StackLang.HolProg 64 :=
.seq RemovedBody469_5 RemovedBody469_34

def RemovedBody469_36 : StackLang.HolProg 64 :=
.seq RemovedBody469_4 RemovedBody469_35

def RemovedBody469_37 : StackLang.HolProg 64 :=
.seq RemovedBody469_3 RemovedBody469_36

def RemovedBody469_38 : StackLang.HolProg 64 :=
.seq RemovedBody469_2 RemovedBody469_37

def RemovedBody469_39 : StackLang.HolProg 64 :=
.seq RemovedBody469_1 RemovedBody469_38

def RemovedBody469_40 : StackLang.HolProg 64 :=
.seq RemovedBody469_0 RemovedBody469_39

def Removed469 : Nat × StackLang.HolProg 64 := (469, RemovedBody469_40)
theorem Removed469_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc469 = Removed469 := by
  kernel_rfl
#print axioms Removed469_eq
end InitECandidate.Proofs.BackendStages
