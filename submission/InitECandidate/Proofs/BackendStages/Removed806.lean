import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc806
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody806_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody806_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody806_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody806_3 : StackLang.HolProg 64 :=
.seq RemovedBody806_1 RemovedBody806_2

def RemovedBody806_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody806_3 RemovedBody806_4

def RemovedBody806_6 : StackLang.HolProg 64 :=
.seq RemovedBody806_0 RemovedBody806_5

def RemovedBody806_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody806_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def RemovedBody806_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 192#64)

def RemovedBody806_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody806_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 47#64)

def RemovedBody806_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody806_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_19 : StackLang.HolProg 64 :=
.seq RemovedBody806_17 RemovedBody806_18

def RemovedBody806_20 : StackLang.HolProg 64 :=
.seq RemovedBody806_16 RemovedBody806_19

def RemovedBody806_21 : StackLang.HolProg 64 :=
.seq RemovedBody806_15 RemovedBody806_20

def RemovedBody806_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3950#64)

def RemovedBody806_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_25 : StackLang.HolProg 64 :=
.seq RemovedBody806_23 RemovedBody806_24

def RemovedBody806_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody806_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody806_29 : StackLang.HolProg 64 :=
.seq RemovedBody806_27 RemovedBody806_28

def RemovedBody806_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_31 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody806_29 RemovedBody806_30

def RemovedBody806_32 : StackLang.HolProg 64 :=
.seq RemovedBody806_26 RemovedBody806_31

def RemovedBody806_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody806_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 3

def RemovedBody806_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody806_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody806_42 : StackLang.HolProg 64 :=
.seq RemovedBody806_40 RemovedBody806_41

def RemovedBody806_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody806_44 : StackLang.HolProg 64 :=
.seq RemovedBody806_42 RemovedBody806_43

def RemovedBody806_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_46 : StackLang.HolProg 64 :=
.seq RemovedBody806_44 RemovedBody806_45

def RemovedBody806_47 : StackLang.HolProg 64 :=
.seq RemovedBody806_39 RemovedBody806_46

def RemovedBody806_48 : StackLang.HolProg 64 :=
.seq RemovedBody806_38 RemovedBody806_47

def RemovedBody806_49 : StackLang.HolProg 64 :=
.seq RemovedBody806_37 RemovedBody806_48

def RemovedBody806_50 : StackLang.HolProg 64 :=
.seq RemovedBody806_36 RemovedBody806_49

def RemovedBody806_51 : StackLang.HolProg 64 :=
.seq RemovedBody806_35 RemovedBody806_50

def RemovedBody806_52 : StackLang.HolProg 64 :=
.seq RemovedBody806_34 RemovedBody806_51

def RemovedBody806_53 : StackLang.HolProg 64 :=
.seq RemovedBody806_33 RemovedBody806_52

def RemovedBody806_54 : StackLang.HolProg 64 :=
.seq RemovedBody806_32 RemovedBody806_53

def RemovedBody806_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody806_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_64 : StackLang.HolProg 64 :=
.seq RemovedBody806_62 RemovedBody806_63

def RemovedBody806_65 : StackLang.HolProg 64 :=
.seq RemovedBody806_61 RemovedBody806_64

def RemovedBody806_66 : StackLang.HolProg 64 :=
.seq RemovedBody806_60 RemovedBody806_65

def RemovedBody806_67 : StackLang.HolProg 64 :=
.seq RemovedBody806_59 RemovedBody806_66

def RemovedBody806_68 : StackLang.HolProg 64 :=
.seq RemovedBody806_58 RemovedBody806_67

def RemovedBody806_69 : StackLang.HolProg 64 :=
.seq RemovedBody806_57 RemovedBody806_68

def RemovedBody806_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_72 : StackLang.HolProg 64 :=
.seq RemovedBody806_70 RemovedBody806_71

def RemovedBody806_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody806_74 : StackLang.HolProg 64 :=
.seq RemovedBody806_72 RemovedBody806_73

def RemovedBody806_75 : StackLang.HolProg 64 :=
.call (some (RemovedBody806_69, 0, 806, 2)) (Sum.inl 80) (some (RemovedBody806_74, 806, 3))

def RemovedBody806_76 : StackLang.HolProg 64 :=
.seq RemovedBody806_56 RemovedBody806_75

def RemovedBody806_77 : StackLang.HolProg 64 :=
.seq RemovedBody806_55 RemovedBody806_76

def RemovedBody806_78 : StackLang.HolProg 64 :=
.seq RemovedBody806_54 RemovedBody806_77

def RemovedBody806_79 : StackLang.HolProg 64 :=
.seq RemovedBody806_25 RemovedBody806_78

def RemovedBody806_80 : StackLang.HolProg 64 :=
.seq RemovedBody806_22 RemovedBody806_79

def RemovedBody806_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody806_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody806_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_88 : StackLang.HolProg 64 :=
.seq RemovedBody806_86 RemovedBody806_87

def RemovedBody806_89 : StackLang.HolProg 64 :=
.seq RemovedBody806_85 RemovedBody806_88

def RemovedBody806_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3951#64)

def RemovedBody806_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_93 : StackLang.HolProg 64 :=
.seq RemovedBody806_91 RemovedBody806_92

def RemovedBody806_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody806_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody806_97 : StackLang.HolProg 64 :=
.seq RemovedBody806_95 RemovedBody806_96

def RemovedBody806_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_99 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody806_97 RemovedBody806_98

def RemovedBody806_100 : StackLang.HolProg 64 :=
.seq RemovedBody806_94 RemovedBody806_99

def RemovedBody806_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody806_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 5

def RemovedBody806_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody806_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody806_110 : StackLang.HolProg 64 :=
.seq RemovedBody806_108 RemovedBody806_109

def RemovedBody806_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody806_112 : StackLang.HolProg 64 :=
.seq RemovedBody806_110 RemovedBody806_111

def RemovedBody806_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_114 : StackLang.HolProg 64 :=
.seq RemovedBody806_112 RemovedBody806_113

def RemovedBody806_115 : StackLang.HolProg 64 :=
.seq RemovedBody806_107 RemovedBody806_114

def RemovedBody806_116 : StackLang.HolProg 64 :=
.seq RemovedBody806_106 RemovedBody806_115

def RemovedBody806_117 : StackLang.HolProg 64 :=
.seq RemovedBody806_105 RemovedBody806_116

def RemovedBody806_118 : StackLang.HolProg 64 :=
.seq RemovedBody806_104 RemovedBody806_117

def RemovedBody806_119 : StackLang.HolProg 64 :=
.seq RemovedBody806_103 RemovedBody806_118

def RemovedBody806_120 : StackLang.HolProg 64 :=
.seq RemovedBody806_102 RemovedBody806_119

def RemovedBody806_121 : StackLang.HolProg 64 :=
.seq RemovedBody806_101 RemovedBody806_120

def RemovedBody806_122 : StackLang.HolProg 64 :=
.seq RemovedBody806_100 RemovedBody806_121

def RemovedBody806_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_130 : StackLang.HolProg 64 :=
.seq RemovedBody806_128 RemovedBody806_129

def RemovedBody806_131 : StackLang.HolProg 64 :=
.seq RemovedBody806_127 RemovedBody806_130

def RemovedBody806_132 : StackLang.HolProg 64 :=
.seq RemovedBody806_126 RemovedBody806_131

def RemovedBody806_133 : StackLang.HolProg 64 :=
.seq RemovedBody806_125 RemovedBody806_132

def RemovedBody806_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_135 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody806_136 : StackLang.HolProg 64 :=
.seq RemovedBody806_134 RemovedBody806_135

def RemovedBody806_137 : StackLang.HolProg 64 :=
.call (some (RemovedBody806_133, 0, 806, 4)) (Sum.inl 766) (some (RemovedBody806_136, 806, 5))

def RemovedBody806_138 : StackLang.HolProg 64 :=
.seq RemovedBody806_124 RemovedBody806_137

def RemovedBody806_139 : StackLang.HolProg 64 :=
.seq RemovedBody806_123 RemovedBody806_138

def RemovedBody806_140 : StackLang.HolProg 64 :=
.seq RemovedBody806_122 RemovedBody806_139

def RemovedBody806_141 : StackLang.HolProg 64 :=
.seq RemovedBody806_93 RemovedBody806_140

def RemovedBody806_142 : StackLang.HolProg 64 :=
.seq RemovedBody806_90 RemovedBody806_141

def RemovedBody806_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody806_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody806_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody806_148 : StackLang.HolProg 64 :=
.seq RemovedBody806_146 RemovedBody806_147

def RemovedBody806_149 : StackLang.HolProg 64 :=
.seq RemovedBody806_145 RemovedBody806_148

def RemovedBody806_150 : StackLang.HolProg 64 :=
.seq RemovedBody806_144 RemovedBody806_149

def RemovedBody806_151 : StackLang.HolProg 64 :=
.seq RemovedBody806_143 RemovedBody806_150

def RemovedBody806_152 : StackLang.HolProg 64 :=
.seq RemovedBody806_142 RemovedBody806_151

def RemovedBody806_153 : StackLang.HolProg 64 :=
.seq RemovedBody806_89 RemovedBody806_152

def RemovedBody806_154 : StackLang.HolProg 64 :=
.seq RemovedBody806_84 RemovedBody806_153

def RemovedBody806_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_156 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody806_154 RemovedBody806_155

def RemovedBody806_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_160 : StackLang.HolProg 64 :=
.seq RemovedBody806_158 RemovedBody806_159

def RemovedBody806_161 : StackLang.HolProg 64 :=
.seq RemovedBody806_157 RemovedBody806_160

def RemovedBody806_162 : StackLang.HolProg 64 :=
.seq RemovedBody806_156 RemovedBody806_161

def RemovedBody806_163 : StackLang.HolProg 64 :=
.seq RemovedBody806_83 RemovedBody806_162

def RemovedBody806_164 : StackLang.HolProg 64 :=
.seq RemovedBody806_82 RemovedBody806_163

def RemovedBody806_165 : StackLang.HolProg 64 :=
.seq RemovedBody806_81 RemovedBody806_164

def RemovedBody806_166 : StackLang.HolProg 64 :=
.seq RemovedBody806_80 RemovedBody806_165

def RemovedBody806_167 : StackLang.HolProg 64 :=
.seq RemovedBody806_21 RemovedBody806_166

def RemovedBody806_168 : StackLang.HolProg 64 :=
.seq RemovedBody806_14 RemovedBody806_167

def RemovedBody806_169 : StackLang.HolProg 64 :=
.seq RemovedBody806_13 RemovedBody806_168

def RemovedBody806_170 : StackLang.HolProg 64 :=
.seq RemovedBody806_12 RemovedBody806_169

def RemovedBody806_171 : StackLang.HolProg 64 :=
.seq RemovedBody806_11 RemovedBody806_170

def RemovedBody806_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_174 : StackLang.HolProg 64 :=
.seq RemovedBody806_172 RemovedBody806_173

def RemovedBody806_175 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody806_171 RemovedBody806_174

def RemovedBody806_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody806_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_179 : StackLang.HolProg 64 :=
.seq RemovedBody806_177 RemovedBody806_178

def RemovedBody806_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3952#64)

def RemovedBody806_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_183 : StackLang.HolProg 64 :=
.seq RemovedBody806_181 RemovedBody806_182

def RemovedBody806_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody806_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody806_187 : StackLang.HolProg 64 :=
.seq RemovedBody806_185 RemovedBody806_186

def RemovedBody806_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_189 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody806_187 RemovedBody806_188

def RemovedBody806_190 : StackLang.HolProg 64 :=
.seq RemovedBody806_184 RemovedBody806_189

def RemovedBody806_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody806_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 7

def RemovedBody806_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody806_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody806_200 : StackLang.HolProg 64 :=
.seq RemovedBody806_198 RemovedBody806_199

def RemovedBody806_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody806_202 : StackLang.HolProg 64 :=
.seq RemovedBody806_200 RemovedBody806_201

def RemovedBody806_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_204 : StackLang.HolProg 64 :=
.seq RemovedBody806_202 RemovedBody806_203

def RemovedBody806_205 : StackLang.HolProg 64 :=
.seq RemovedBody806_197 RemovedBody806_204

def RemovedBody806_206 : StackLang.HolProg 64 :=
.seq RemovedBody806_196 RemovedBody806_205

def RemovedBody806_207 : StackLang.HolProg 64 :=
.seq RemovedBody806_195 RemovedBody806_206

def RemovedBody806_208 : StackLang.HolProg 64 :=
.seq RemovedBody806_194 RemovedBody806_207

def RemovedBody806_209 : StackLang.HolProg 64 :=
.seq RemovedBody806_193 RemovedBody806_208

def RemovedBody806_210 : StackLang.HolProg 64 :=
.seq RemovedBody806_192 RemovedBody806_209

def RemovedBody806_211 : StackLang.HolProg 64 :=
.seq RemovedBody806_191 RemovedBody806_210

def RemovedBody806_212 : StackLang.HolProg 64 :=
.seq RemovedBody806_190 RemovedBody806_211

def RemovedBody806_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody806_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_222 : StackLang.HolProg 64 :=
.seq RemovedBody806_220 RemovedBody806_221

def RemovedBody806_223 : StackLang.HolProg 64 :=
.seq RemovedBody806_219 RemovedBody806_222

def RemovedBody806_224 : StackLang.HolProg 64 :=
.seq RemovedBody806_218 RemovedBody806_223

def RemovedBody806_225 : StackLang.HolProg 64 :=
.seq RemovedBody806_217 RemovedBody806_224

def RemovedBody806_226 : StackLang.HolProg 64 :=
.seq RemovedBody806_216 RemovedBody806_225

def RemovedBody806_227 : StackLang.HolProg 64 :=
.seq RemovedBody806_215 RemovedBody806_226

def RemovedBody806_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_230 : StackLang.HolProg 64 :=
.seq RemovedBody806_228 RemovedBody806_229

def RemovedBody806_231 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody806_232 : StackLang.HolProg 64 :=
.seq RemovedBody806_230 RemovedBody806_231

def RemovedBody806_233 : StackLang.HolProg 64 :=
.call (some (RemovedBody806_227, 0, 806, 6)) (Sum.inl 805) (some (RemovedBody806_232, 806, 7))

def RemovedBody806_234 : StackLang.HolProg 64 :=
.seq RemovedBody806_214 RemovedBody806_233

def RemovedBody806_235 : StackLang.HolProg 64 :=
.seq RemovedBody806_213 RemovedBody806_234

def RemovedBody806_236 : StackLang.HolProg 64 :=
.seq RemovedBody806_212 RemovedBody806_235

def RemovedBody806_237 : StackLang.HolProg 64 :=
.seq RemovedBody806_183 RemovedBody806_236

def RemovedBody806_238 : StackLang.HolProg 64 :=
.seq RemovedBody806_180 RemovedBody806_237

def RemovedBody806_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody806_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody806_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody806_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody806_247 : StackLang.HolProg 64 :=
.seq RemovedBody806_245 RemovedBody806_246

def RemovedBody806_248 : StackLang.HolProg 64 :=
.seq RemovedBody806_244 RemovedBody806_247

def RemovedBody806_249 : StackLang.HolProg 64 :=
.seq RemovedBody806_243 RemovedBody806_248

def RemovedBody806_250 : StackLang.HolProg 64 :=
.seq RemovedBody806_242 RemovedBody806_249

def RemovedBody806_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_252 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody806_250 RemovedBody806_251

def RemovedBody806_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody806_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_258 : StackLang.HolProg 64 :=
.seq RemovedBody806_256 RemovedBody806_257

def RemovedBody806_259 : StackLang.HolProg 64 :=
.seq RemovedBody806_255 RemovedBody806_258

def RemovedBody806_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3953#64)

def RemovedBody806_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_263 : StackLang.HolProg 64 :=
.seq RemovedBody806_261 RemovedBody806_262

def RemovedBody806_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody806_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody806_267 : StackLang.HolProg 64 :=
.seq RemovedBody806_265 RemovedBody806_266

def RemovedBody806_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_269 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody806_267 RemovedBody806_268

def RemovedBody806_270 : StackLang.HolProg 64 :=
.seq RemovedBody806_264 RemovedBody806_269

def RemovedBody806_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody806_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody806_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 806 9

def RemovedBody806_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody806_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody806_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody806_280 : StackLang.HolProg 64 :=
.seq RemovedBody806_278 RemovedBody806_279

def RemovedBody806_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody806_282 : StackLang.HolProg 64 :=
.seq RemovedBody806_280 RemovedBody806_281

def RemovedBody806_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_284 : StackLang.HolProg 64 :=
.seq RemovedBody806_282 RemovedBody806_283

def RemovedBody806_285 : StackLang.HolProg 64 :=
.seq RemovedBody806_277 RemovedBody806_284

def RemovedBody806_286 : StackLang.HolProg 64 :=
.seq RemovedBody806_276 RemovedBody806_285

def RemovedBody806_287 : StackLang.HolProg 64 :=
.seq RemovedBody806_275 RemovedBody806_286

def RemovedBody806_288 : StackLang.HolProg 64 :=
.seq RemovedBody806_274 RemovedBody806_287

def RemovedBody806_289 : StackLang.HolProg 64 :=
.seq RemovedBody806_273 RemovedBody806_288

def RemovedBody806_290 : StackLang.HolProg 64 :=
.seq RemovedBody806_272 RemovedBody806_289

def RemovedBody806_291 : StackLang.HolProg 64 :=
.seq RemovedBody806_271 RemovedBody806_290

def RemovedBody806_292 : StackLang.HolProg 64 :=
.seq RemovedBody806_270 RemovedBody806_291

def RemovedBody806_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody806_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody806_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody806_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_302 : StackLang.HolProg 64 :=
.seq RemovedBody806_300 RemovedBody806_301

def RemovedBody806_303 : StackLang.HolProg 64 :=
.seq RemovedBody806_299 RemovedBody806_302

def RemovedBody806_304 : StackLang.HolProg 64 :=
.seq RemovedBody806_298 RemovedBody806_303

def RemovedBody806_305 : StackLang.HolProg 64 :=
.seq RemovedBody806_297 RemovedBody806_304

def RemovedBody806_306 : StackLang.HolProg 64 :=
.seq RemovedBody806_296 RemovedBody806_305

def RemovedBody806_307 : StackLang.HolProg 64 :=
.seq RemovedBody806_295 RemovedBody806_306

def RemovedBody806_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody806_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody806_310 : StackLang.HolProg 64 :=
.seq RemovedBody806_308 RemovedBody806_309

def RemovedBody806_311 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody806_312 : StackLang.HolProg 64 :=
.seq RemovedBody806_310 RemovedBody806_311

def RemovedBody806_313 : StackLang.HolProg 64 :=
.call (some (RemovedBody806_307, 0, 806, 8)) (Sum.inl 767) (some (RemovedBody806_312, 806, 9))

def RemovedBody806_314 : StackLang.HolProg 64 :=
.seq RemovedBody806_294 RemovedBody806_313

def RemovedBody806_315 : StackLang.HolProg 64 :=
.seq RemovedBody806_293 RemovedBody806_314

def RemovedBody806_316 : StackLang.HolProg 64 :=
.seq RemovedBody806_292 RemovedBody806_315

def RemovedBody806_317 : StackLang.HolProg 64 :=
.seq RemovedBody806_263 RemovedBody806_316

def RemovedBody806_318 : StackLang.HolProg 64 :=
.seq RemovedBody806_260 RemovedBody806_317

def RemovedBody806_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody806_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody806_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def RemovedBody806_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody806_327 : StackLang.HolProg 64 :=
.seq RemovedBody806_325 RemovedBody806_326

def RemovedBody806_328 : StackLang.HolProg 64 :=
.seq RemovedBody806_324 RemovedBody806_327

def RemovedBody806_329 : StackLang.HolProg 64 :=
.seq RemovedBody806_323 RemovedBody806_328

def RemovedBody806_330 : StackLang.HolProg 64 :=
.seq RemovedBody806_322 RemovedBody806_329

def RemovedBody806_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_332 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody806_330 RemovedBody806_331

def RemovedBody806_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody806_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody806_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody806_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 777

def RemovedBody806_338 : StackLang.HolProg 64 :=
.seq RemovedBody806_336 RemovedBody806_337

def RemovedBody806_339 : StackLang.HolProg 64 :=
.seq RemovedBody806_335 RemovedBody806_338

def RemovedBody806_340 : StackLang.HolProg 64 :=
.seq RemovedBody806_334 RemovedBody806_339

def RemovedBody806_341 : StackLang.HolProg 64 :=
.seq RemovedBody806_333 RemovedBody806_340

def RemovedBody806_342 : StackLang.HolProg 64 :=
.seq RemovedBody806_332 RemovedBody806_341

def RemovedBody806_343 : StackLang.HolProg 64 :=
.seq RemovedBody806_321 RemovedBody806_342

def RemovedBody806_344 : StackLang.HolProg 64 :=
.seq RemovedBody806_320 RemovedBody806_343

def RemovedBody806_345 : StackLang.HolProg 64 :=
.seq RemovedBody806_319 RemovedBody806_344

def RemovedBody806_346 : StackLang.HolProg 64 :=
.seq RemovedBody806_318 RemovedBody806_345

def RemovedBody806_347 : StackLang.HolProg 64 :=
.seq RemovedBody806_259 RemovedBody806_346

def RemovedBody806_348 : StackLang.HolProg 64 :=
.seq RemovedBody806_254 RemovedBody806_347

def RemovedBody806_349 : StackLang.HolProg 64 :=
.seq RemovedBody806_253 RemovedBody806_348

def RemovedBody806_350 : StackLang.HolProg 64 :=
.seq RemovedBody806_252 RemovedBody806_349

def RemovedBody806_351 : StackLang.HolProg 64 :=
.seq RemovedBody806_241 RemovedBody806_350

def RemovedBody806_352 : StackLang.HolProg 64 :=
.seq RemovedBody806_240 RemovedBody806_351

def RemovedBody806_353 : StackLang.HolProg 64 :=
.seq RemovedBody806_239 RemovedBody806_352

def RemovedBody806_354 : StackLang.HolProg 64 :=
.seq RemovedBody806_238 RemovedBody806_353

def RemovedBody806_355 : StackLang.HolProg 64 :=
.seq RemovedBody806_179 RemovedBody806_354

def RemovedBody806_356 : StackLang.HolProg 64 :=
.seq RemovedBody806_176 RemovedBody806_355

def RemovedBody806_357 : StackLang.HolProg 64 :=
.seq RemovedBody806_175 RemovedBody806_356

def RemovedBody806_358 : StackLang.HolProg 64 :=
.seq RemovedBody806_10 RemovedBody806_357

def RemovedBody806_359 : StackLang.HolProg 64 :=
.seq RemovedBody806_9 RemovedBody806_358

def RemovedBody806_360 : StackLang.HolProg 64 :=
.seq RemovedBody806_8 RemovedBody806_359

def RemovedBody806_361 : StackLang.HolProg 64 :=
.seq RemovedBody806_7 RemovedBody806_360

def RemovedBody806_362 : StackLang.HolProg 64 :=
.seq RemovedBody806_6 RemovedBody806_361

def Removed806 : Nat × StackLang.HolProg 64 := (806, RemovedBody806_362)
theorem Removed806_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc806 = Removed806 := by
  kernel_rfl
#print axioms Removed806_eq
end InitECandidate.Proofs.BackendStages
