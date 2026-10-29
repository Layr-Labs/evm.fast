import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc604
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody604_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody604_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody604_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody604_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody604_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 184#64)))

def RemovedBody604_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody604_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 184#64))

def RemovedBody604_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody604_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody604_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody604_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody604_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody604_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody604_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def RemovedBody604_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody604_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody604_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody604_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody604_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody604_28 : StackLang.HolProg 64 :=
.seq RemovedBody604_26 RemovedBody604_27

def RemovedBody604_29 : StackLang.HolProg 64 :=
.seq RemovedBody604_25 RemovedBody604_28

def RemovedBody604_30 : StackLang.HolProg 64 :=
.seq RemovedBody604_24 RemovedBody604_29

def RemovedBody604_31 : StackLang.HolProg 64 :=
.seq RemovedBody604_23 RemovedBody604_30

def RemovedBody604_32 : StackLang.HolProg 64 :=
.seq RemovedBody604_22 RemovedBody604_31

def RemovedBody604_33 : StackLang.HolProg 64 :=
.seq RemovedBody604_21 RemovedBody604_32

def RemovedBody604_34 : StackLang.HolProg 64 :=
.seq RemovedBody604_20 RemovedBody604_33

def RemovedBody604_35 : StackLang.HolProg 64 :=
.seq RemovedBody604_19 RemovedBody604_34

def RemovedBody604_36 : StackLang.HolProg 64 :=
.seq RemovedBody604_18 RemovedBody604_35

def RemovedBody604_37 : StackLang.HolProg 64 :=
.seq RemovedBody604_17 RemovedBody604_36

def RemovedBody604_38 : StackLang.HolProg 64 :=
.seq RemovedBody604_16 RemovedBody604_37

def RemovedBody604_39 : StackLang.HolProg 64 :=
.seq RemovedBody604_15 RemovedBody604_38

def RemovedBody604_40 : StackLang.HolProg 64 :=
.seq RemovedBody604_14 RemovedBody604_39

def RemovedBody604_41 : StackLang.HolProg 64 :=
.seq RemovedBody604_13 RemovedBody604_40

def RemovedBody604_42 : StackLang.HolProg 64 :=
.seq RemovedBody604_12 RemovedBody604_41

def RemovedBody604_43 : StackLang.HolProg 64 :=
.seq RemovedBody604_11 RemovedBody604_42

def RemovedBody604_44 : StackLang.HolProg 64 :=
.seq RemovedBody604_10 RemovedBody604_43

def RemovedBody604_45 : StackLang.HolProg 64 :=
.seq RemovedBody604_9 RemovedBody604_44

def RemovedBody604_46 : StackLang.HolProg 64 :=
.seq RemovedBody604_8 RemovedBody604_45

def RemovedBody604_47 : StackLang.HolProg 64 :=
.seq RemovedBody604_7 RemovedBody604_46

def RemovedBody604_48 : StackLang.HolProg 64 :=
.seq RemovedBody604_6 RemovedBody604_47

def RemovedBody604_49 : StackLang.HolProg 64 :=
.seq RemovedBody604_5 RemovedBody604_48

def RemovedBody604_50 : StackLang.HolProg 64 :=
.seq RemovedBody604_4 RemovedBody604_49

def RemovedBody604_51 : StackLang.HolProg 64 :=
.seq RemovedBody604_3 RemovedBody604_50

def RemovedBody604_52 : StackLang.HolProg 64 :=
.seq RemovedBody604_2 RemovedBody604_51

def RemovedBody604_53 : StackLang.HolProg 64 :=
.seq RemovedBody604_1 RemovedBody604_52

def RemovedBody604_54 : StackLang.HolProg 64 :=
.seq RemovedBody604_0 RemovedBody604_53

def Removed604 : Nat × StackLang.HolProg 64 := (604, RemovedBody604_54)
theorem Removed604_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc604 = Removed604 := by
  kernel_rfl
#print axioms Removed604_eq
end InitECandidate.Proofs.BackendStages
