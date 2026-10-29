import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc561
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody561_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody561_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody561_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody561_3 : StackLang.HolProg 64 :=
.seq RemovedBody561_1 RemovedBody561_2

def RemovedBody561_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody561_3 RemovedBody561_4

def RemovedBody561_6 : StackLang.HolProg 64 :=
.seq RemovedBody561_0 RemovedBody561_5

def RemovedBody561_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody561_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody561_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody561_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def RemovedBody561_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 112#64))

def RemovedBody561_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 88#64))

def RemovedBody561_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 96#64))

def RemovedBody561_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody561_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody561_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1924#64)

def RemovedBody561_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody561_22 : StackLang.HolProg 64 :=
.seq RemovedBody561_20 RemovedBody561_21

def RemovedBody561_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody561_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody561_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody561_26 : StackLang.HolProg 64 :=
.seq RemovedBody561_24 RemovedBody561_25

def RemovedBody561_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody561_26 RemovedBody561_27

def RemovedBody561_29 : StackLang.HolProg 64 :=
.seq RemovedBody561_23 RemovedBody561_28

def RemovedBody561_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody561_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody561_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 561 3

def RemovedBody561_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody561_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody561_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody561_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody561_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody561_39 : StackLang.HolProg 64 :=
.seq RemovedBody561_37 RemovedBody561_38

def RemovedBody561_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody561_41 : StackLang.HolProg 64 :=
.seq RemovedBody561_39 RemovedBody561_40

def RemovedBody561_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody561_43 : StackLang.HolProg 64 :=
.seq RemovedBody561_41 RemovedBody561_42

def RemovedBody561_44 : StackLang.HolProg 64 :=
.seq RemovedBody561_36 RemovedBody561_43

def RemovedBody561_45 : StackLang.HolProg 64 :=
.seq RemovedBody561_35 RemovedBody561_44

def RemovedBody561_46 : StackLang.HolProg 64 :=
.seq RemovedBody561_34 RemovedBody561_45

def RemovedBody561_47 : StackLang.HolProg 64 :=
.seq RemovedBody561_33 RemovedBody561_46

def RemovedBody561_48 : StackLang.HolProg 64 :=
.seq RemovedBody561_32 RemovedBody561_47

def RemovedBody561_49 : StackLang.HolProg 64 :=
.seq RemovedBody561_31 RemovedBody561_48

def RemovedBody561_50 : StackLang.HolProg 64 :=
.seq RemovedBody561_30 RemovedBody561_49

def RemovedBody561_51 : StackLang.HolProg 64 :=
.seq RemovedBody561_29 RemovedBody561_50

def RemovedBody561_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody561_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody561_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody561_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody561_59 : StackLang.HolProg 64 :=
.seq RemovedBody561_57 RemovedBody561_58

def RemovedBody561_60 : StackLang.HolProg 64 :=
.seq RemovedBody561_56 RemovedBody561_59

def RemovedBody561_61 : StackLang.HolProg 64 :=
.seq RemovedBody561_55 RemovedBody561_60

def RemovedBody561_62 : StackLang.HolProg 64 :=
.seq RemovedBody561_54 RemovedBody561_61

def RemovedBody561_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody561_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody561_65 : StackLang.HolProg 64 :=
.seq RemovedBody561_63 RemovedBody561_64

def RemovedBody561_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody561_62, 0, 561, 2)) (Sum.inl 560) (some (RemovedBody561_65, 561, 3))

def RemovedBody561_67 : StackLang.HolProg 64 :=
.seq RemovedBody561_53 RemovedBody561_66

def RemovedBody561_68 : StackLang.HolProg 64 :=
.seq RemovedBody561_52 RemovedBody561_67

def RemovedBody561_69 : StackLang.HolProg 64 :=
.seq RemovedBody561_51 RemovedBody561_68

def RemovedBody561_70 : StackLang.HolProg 64 :=
.seq RemovedBody561_22 RemovedBody561_69

def RemovedBody561_71 : StackLang.HolProg 64 :=
.seq RemovedBody561_19 RemovedBody561_70

def RemovedBody561_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody561_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody561_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody561_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody561_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody561_77 : StackLang.HolProg 64 :=
.seq RemovedBody561_75 RemovedBody561_76

def RemovedBody561_78 : StackLang.HolProg 64 :=
.seq RemovedBody561_74 RemovedBody561_77

def RemovedBody561_79 : StackLang.HolProg 64 :=
.seq RemovedBody561_73 RemovedBody561_78

def RemovedBody561_80 : StackLang.HolProg 64 :=
.seq RemovedBody561_72 RemovedBody561_79

def RemovedBody561_81 : StackLang.HolProg 64 :=
.seq RemovedBody561_71 RemovedBody561_80

def RemovedBody561_82 : StackLang.HolProg 64 :=
.seq RemovedBody561_18 RemovedBody561_81

def RemovedBody561_83 : StackLang.HolProg 64 :=
.seq RemovedBody561_17 RemovedBody561_82

def RemovedBody561_84 : StackLang.HolProg 64 :=
.seq RemovedBody561_16 RemovedBody561_83

def RemovedBody561_85 : StackLang.HolProg 64 :=
.seq RemovedBody561_15 RemovedBody561_84

def RemovedBody561_86 : StackLang.HolProg 64 :=
.seq RemovedBody561_14 RemovedBody561_85

def RemovedBody561_87 : StackLang.HolProg 64 :=
.seq RemovedBody561_13 RemovedBody561_86

def RemovedBody561_88 : StackLang.HolProg 64 :=
.seq RemovedBody561_12 RemovedBody561_87

def RemovedBody561_89 : StackLang.HolProg 64 :=
.seq RemovedBody561_11 RemovedBody561_88

def RemovedBody561_90 : StackLang.HolProg 64 :=
.seq RemovedBody561_10 RemovedBody561_89

def RemovedBody561_91 : StackLang.HolProg 64 :=
.seq RemovedBody561_9 RemovedBody561_90

def RemovedBody561_92 : StackLang.HolProg 64 :=
.seq RemovedBody561_8 RemovedBody561_91

def RemovedBody561_93 : StackLang.HolProg 64 :=
.seq RemovedBody561_7 RemovedBody561_92

def RemovedBody561_94 : StackLang.HolProg 64 :=
.seq RemovedBody561_6 RemovedBody561_93

def Removed561 : Nat × StackLang.HolProg 64 := (561, RemovedBody561_94)
theorem Removed561_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc561 = Removed561 := by
  kernel_rfl
#print axioms Removed561_eq
end InitECandidate.Proofs.BackendStages
