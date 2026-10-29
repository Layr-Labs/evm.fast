import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc96
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody96_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody96_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody96_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody96_3 : StackLang.HolProg 64 :=
.seq RemovedBody96_1 RemovedBody96_2

def RemovedBody96_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody96_3 RemovedBody96_4

def RemovedBody96_6 : StackLang.HolProg 64 :=
.seq RemovedBody96_0 RemovedBody96_5

def RemovedBody96_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody96_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 42#64)

def RemovedBody96_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody96_11 : StackLang.HolProg 64 :=
.seq RemovedBody96_9 RemovedBody96_10

def RemovedBody96_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody96_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody96_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody96_15 : StackLang.HolProg 64 :=
.seq RemovedBody96_13 RemovedBody96_14

def RemovedBody96_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody96_15 RemovedBody96_16

def RemovedBody96_18 : StackLang.HolProg 64 :=
.seq RemovedBody96_12 RemovedBody96_17

def RemovedBody96_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody96_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody96_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 96 3

def RemovedBody96_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody96_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody96_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody96_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody96_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody96_28 : StackLang.HolProg 64 :=
.seq RemovedBody96_26 RemovedBody96_27

def RemovedBody96_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody96_30 : StackLang.HolProg 64 :=
.seq RemovedBody96_28 RemovedBody96_29

def RemovedBody96_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody96_32 : StackLang.HolProg 64 :=
.seq RemovedBody96_30 RemovedBody96_31

def RemovedBody96_33 : StackLang.HolProg 64 :=
.seq RemovedBody96_25 RemovedBody96_32

def RemovedBody96_34 : StackLang.HolProg 64 :=
.seq RemovedBody96_24 RemovedBody96_33

def RemovedBody96_35 : StackLang.HolProg 64 :=
.seq RemovedBody96_23 RemovedBody96_34

def RemovedBody96_36 : StackLang.HolProg 64 :=
.seq RemovedBody96_22 RemovedBody96_35

def RemovedBody96_37 : StackLang.HolProg 64 :=
.seq RemovedBody96_21 RemovedBody96_36

def RemovedBody96_38 : StackLang.HolProg 64 :=
.seq RemovedBody96_20 RemovedBody96_37

def RemovedBody96_39 : StackLang.HolProg 64 :=
.seq RemovedBody96_19 RemovedBody96_38

def RemovedBody96_40 : StackLang.HolProg 64 :=
.seq RemovedBody96_18 RemovedBody96_39

def RemovedBody96_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody96_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody96_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody96_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody96_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody96_48 : StackLang.HolProg 64 :=
.seq RemovedBody96_46 RemovedBody96_47

def RemovedBody96_49 : StackLang.HolProg 64 :=
.seq RemovedBody96_45 RemovedBody96_48

def RemovedBody96_50 : StackLang.HolProg 64 :=
.seq RemovedBody96_44 RemovedBody96_49

def RemovedBody96_51 : StackLang.HolProg 64 :=
.seq RemovedBody96_43 RemovedBody96_50

def RemovedBody96_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody96_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody96_54 : StackLang.HolProg 64 :=
.seq RemovedBody96_52 RemovedBody96_53

def RemovedBody96_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody96_51, 0, 96, 2)) (Sum.inl 94) (some (RemovedBody96_54, 96, 3))

def RemovedBody96_56 : StackLang.HolProg 64 :=
.seq RemovedBody96_42 RemovedBody96_55

def RemovedBody96_57 : StackLang.HolProg 64 :=
.seq RemovedBody96_41 RemovedBody96_56

def RemovedBody96_58 : StackLang.HolProg 64 :=
.seq RemovedBody96_40 RemovedBody96_57

def RemovedBody96_59 : StackLang.HolProg 64 :=
.seq RemovedBody96_11 RemovedBody96_58

def RemovedBody96_60 : StackLang.HolProg 64 :=
.seq RemovedBody96_8 RemovedBody96_59

def RemovedBody96_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody96_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody96_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody96_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody96_65 : StackLang.HolProg 64 :=
.seq RemovedBody96_63 RemovedBody96_64

def RemovedBody96_66 : StackLang.HolProg 64 :=
.seq RemovedBody96_62 RemovedBody96_65

def RemovedBody96_67 : StackLang.HolProg 64 :=
.seq RemovedBody96_61 RemovedBody96_66

def RemovedBody96_68 : StackLang.HolProg 64 :=
.seq RemovedBody96_60 RemovedBody96_67

def RemovedBody96_69 : StackLang.HolProg 64 :=
.seq RemovedBody96_7 RemovedBody96_68

def RemovedBody96_70 : StackLang.HolProg 64 :=
.seq RemovedBody96_6 RemovedBody96_69

def Removed96 : Nat × StackLang.HolProg 64 := (96, RemovedBody96_70)
theorem Removed96_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc96 = Removed96 := by
  kernel_rfl
#print axioms Removed96_eq
end InitECandidate.Proofs.BackendStages
