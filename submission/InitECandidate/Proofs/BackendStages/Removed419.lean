import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc419
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody419_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody419_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody419_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody419_3 : StackLang.HolProg 64 :=
.seq RemovedBody419_1 RemovedBody419_2

def RemovedBody419_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody419_3 RemovedBody419_4

def RemovedBody419_6 : StackLang.HolProg 64 :=
.seq RemovedBody419_0 RemovedBody419_5

def RemovedBody419_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody419_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody419_9 : StackLang.HolProg 64 :=
.seq RemovedBody419_7 RemovedBody419_8

def RemovedBody419_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody419_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody419_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody419_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def RemovedBody419_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody419_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody419_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1247#64)

def RemovedBody419_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody419_19 : StackLang.HolProg 64 :=
.seq RemovedBody419_17 RemovedBody419_18

def RemovedBody419_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody419_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody419_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody419_23 : StackLang.HolProg 64 :=
.seq RemovedBody419_21 RemovedBody419_22

def RemovedBody419_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody419_23 RemovedBody419_24

def RemovedBody419_26 : StackLang.HolProg 64 :=
.seq RemovedBody419_20 RemovedBody419_25

def RemovedBody419_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody419_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody419_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 419 3

def RemovedBody419_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody419_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody419_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody419_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody419_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody419_36 : StackLang.HolProg 64 :=
.seq RemovedBody419_34 RemovedBody419_35

def RemovedBody419_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody419_38 : StackLang.HolProg 64 :=
.seq RemovedBody419_36 RemovedBody419_37

def RemovedBody419_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody419_40 : StackLang.HolProg 64 :=
.seq RemovedBody419_38 RemovedBody419_39

def RemovedBody419_41 : StackLang.HolProg 64 :=
.seq RemovedBody419_33 RemovedBody419_40

def RemovedBody419_42 : StackLang.HolProg 64 :=
.seq RemovedBody419_32 RemovedBody419_41

def RemovedBody419_43 : StackLang.HolProg 64 :=
.seq RemovedBody419_31 RemovedBody419_42

def RemovedBody419_44 : StackLang.HolProg 64 :=
.seq RemovedBody419_30 RemovedBody419_43

def RemovedBody419_45 : StackLang.HolProg 64 :=
.seq RemovedBody419_29 RemovedBody419_44

def RemovedBody419_46 : StackLang.HolProg 64 :=
.seq RemovedBody419_28 RemovedBody419_45

def RemovedBody419_47 : StackLang.HolProg 64 :=
.seq RemovedBody419_27 RemovedBody419_46

def RemovedBody419_48 : StackLang.HolProg 64 :=
.seq RemovedBody419_26 RemovedBody419_47

def RemovedBody419_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody419_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody419_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody419_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody419_56 : StackLang.HolProg 64 :=
.seq RemovedBody419_54 RemovedBody419_55

def RemovedBody419_57 : StackLang.HolProg 64 :=
.seq RemovedBody419_53 RemovedBody419_56

def RemovedBody419_58 : StackLang.HolProg 64 :=
.seq RemovedBody419_52 RemovedBody419_57

def RemovedBody419_59 : StackLang.HolProg 64 :=
.seq RemovedBody419_51 RemovedBody419_58

def RemovedBody419_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody419_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody419_62 : StackLang.HolProg 64 :=
.seq RemovedBody419_60 RemovedBody419_61

def RemovedBody419_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody419_59, 0, 419, 2)) (Sum.inl 388) (some (RemovedBody419_62, 419, 3))

def RemovedBody419_64 : StackLang.HolProg 64 :=
.seq RemovedBody419_50 RemovedBody419_63

def RemovedBody419_65 : StackLang.HolProg 64 :=
.seq RemovedBody419_49 RemovedBody419_64

def RemovedBody419_66 : StackLang.HolProg 64 :=
.seq RemovedBody419_48 RemovedBody419_65

def RemovedBody419_67 : StackLang.HolProg 64 :=
.seq RemovedBody419_19 RemovedBody419_66

def RemovedBody419_68 : StackLang.HolProg 64 :=
.seq RemovedBody419_16 RemovedBody419_67

def RemovedBody419_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody419_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody419_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody419_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody419_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody419_74 : StackLang.HolProg 64 :=
.seq RemovedBody419_72 RemovedBody419_73

def RemovedBody419_75 : StackLang.HolProg 64 :=
.seq RemovedBody419_71 RemovedBody419_74

def RemovedBody419_76 : StackLang.HolProg 64 :=
.seq RemovedBody419_70 RemovedBody419_75

def RemovedBody419_77 : StackLang.HolProg 64 :=
.seq RemovedBody419_69 RemovedBody419_76

def RemovedBody419_78 : StackLang.HolProg 64 :=
.seq RemovedBody419_68 RemovedBody419_77

def RemovedBody419_79 : StackLang.HolProg 64 :=
.seq RemovedBody419_15 RemovedBody419_78

def RemovedBody419_80 : StackLang.HolProg 64 :=
.seq RemovedBody419_14 RemovedBody419_79

def RemovedBody419_81 : StackLang.HolProg 64 :=
.seq RemovedBody419_13 RemovedBody419_80

def RemovedBody419_82 : StackLang.HolProg 64 :=
.seq RemovedBody419_12 RemovedBody419_81

def RemovedBody419_83 : StackLang.HolProg 64 :=
.seq RemovedBody419_11 RemovedBody419_82

def RemovedBody419_84 : StackLang.HolProg 64 :=
.seq RemovedBody419_10 RemovedBody419_83

def RemovedBody419_85 : StackLang.HolProg 64 :=
.seq RemovedBody419_9 RemovedBody419_84

def RemovedBody419_86 : StackLang.HolProg 64 :=
.seq RemovedBody419_6 RemovedBody419_85

def Removed419 : Nat × StackLang.HolProg 64 := (419, RemovedBody419_86)
theorem Removed419_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc419 = Removed419 := by
  kernel_rfl
#print axioms Removed419_eq
end InitECandidate.Proofs.BackendStages
