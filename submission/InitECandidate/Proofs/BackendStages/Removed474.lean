import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc474
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody474_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody474_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody474_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody474_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody474_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 112#64))

def RemovedBody474_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def RemovedBody474_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 192#64))

def RemovedBody474_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def RemovedBody474_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody474_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody474_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody474_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def RemovedBody474_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 48#64))

def RemovedBody474_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody474_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody474_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def RemovedBody474_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody474_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody474_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody474_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody474_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody474_32 : StackLang.HolProg 64 :=
.seq RemovedBody474_30 RemovedBody474_31

def RemovedBody474_33 : StackLang.HolProg 64 :=
.seq RemovedBody474_29 RemovedBody474_32

def RemovedBody474_34 : StackLang.HolProg 64 :=
.seq RemovedBody474_28 RemovedBody474_33

def RemovedBody474_35 : StackLang.HolProg 64 :=
.seq RemovedBody474_27 RemovedBody474_34

def RemovedBody474_36 : StackLang.HolProg 64 :=
.seq RemovedBody474_26 RemovedBody474_35

def RemovedBody474_37 : StackLang.HolProg 64 :=
.seq RemovedBody474_25 RemovedBody474_36

def RemovedBody474_38 : StackLang.HolProg 64 :=
.seq RemovedBody474_24 RemovedBody474_37

def RemovedBody474_39 : StackLang.HolProg 64 :=
.seq RemovedBody474_23 RemovedBody474_38

def RemovedBody474_40 : StackLang.HolProg 64 :=
.seq RemovedBody474_22 RemovedBody474_39

def RemovedBody474_41 : StackLang.HolProg 64 :=
.seq RemovedBody474_21 RemovedBody474_40

def RemovedBody474_42 : StackLang.HolProg 64 :=
.seq RemovedBody474_20 RemovedBody474_41

def RemovedBody474_43 : StackLang.HolProg 64 :=
.seq RemovedBody474_19 RemovedBody474_42

def RemovedBody474_44 : StackLang.HolProg 64 :=
.seq RemovedBody474_18 RemovedBody474_43

def RemovedBody474_45 : StackLang.HolProg 64 :=
.seq RemovedBody474_17 RemovedBody474_44

def RemovedBody474_46 : StackLang.HolProg 64 :=
.seq RemovedBody474_16 RemovedBody474_45

def RemovedBody474_47 : StackLang.HolProg 64 :=
.seq RemovedBody474_15 RemovedBody474_46

def RemovedBody474_48 : StackLang.HolProg 64 :=
.seq RemovedBody474_14 RemovedBody474_47

def RemovedBody474_49 : StackLang.HolProg 64 :=
.seq RemovedBody474_13 RemovedBody474_48

def RemovedBody474_50 : StackLang.HolProg 64 :=
.seq RemovedBody474_12 RemovedBody474_49

def RemovedBody474_51 : StackLang.HolProg 64 :=
.seq RemovedBody474_11 RemovedBody474_50

def RemovedBody474_52 : StackLang.HolProg 64 :=
.seq RemovedBody474_10 RemovedBody474_51

def RemovedBody474_53 : StackLang.HolProg 64 :=
.seq RemovedBody474_9 RemovedBody474_52

def RemovedBody474_54 : StackLang.HolProg 64 :=
.seq RemovedBody474_8 RemovedBody474_53

def RemovedBody474_55 : StackLang.HolProg 64 :=
.seq RemovedBody474_7 RemovedBody474_54

def RemovedBody474_56 : StackLang.HolProg 64 :=
.seq RemovedBody474_6 RemovedBody474_55

def RemovedBody474_57 : StackLang.HolProg 64 :=
.seq RemovedBody474_5 RemovedBody474_56

def RemovedBody474_58 : StackLang.HolProg 64 :=
.seq RemovedBody474_4 RemovedBody474_57

def RemovedBody474_59 : StackLang.HolProg 64 :=
.seq RemovedBody474_3 RemovedBody474_58

def RemovedBody474_60 : StackLang.HolProg 64 :=
.seq RemovedBody474_2 RemovedBody474_59

def RemovedBody474_61 : StackLang.HolProg 64 :=
.seq RemovedBody474_1 RemovedBody474_60

def RemovedBody474_62 : StackLang.HolProg 64 :=
.seq RemovedBody474_0 RemovedBody474_61

def Removed474 : Nat × StackLang.HolProg 64 := (474, RemovedBody474_62)
theorem Removed474_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc474 = Removed474 := by
  kernel_rfl
#print axioms Removed474_eq
end InitECandidate.Proofs.BackendStages
