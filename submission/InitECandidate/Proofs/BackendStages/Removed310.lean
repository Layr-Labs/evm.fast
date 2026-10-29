import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc310
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody310_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody310_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_3 : StackLang.HolProg 64 :=
.seq RemovedBody310_1 RemovedBody310_2

def RemovedBody310_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_3 RemovedBody310_4

def RemovedBody310_6 : StackLang.HolProg 64 :=
.seq RemovedBody310_0 RemovedBody310_5

def RemovedBody310_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody310_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody310_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody310_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody310_13 : StackLang.HolProg 64 :=
.seq RemovedBody310_11 RemovedBody310_12

def RemovedBody310_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody310_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody310_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody310_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551464#64))

def RemovedBody310_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 851#64)

def RemovedBody310_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_22 : StackLang.HolProg 64 :=
.seq RemovedBody310_20 RemovedBody310_21

def RemovedBody310_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_26 : StackLang.HolProg 64 :=
.seq RemovedBody310_24 RemovedBody310_25

def RemovedBody310_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_26 RemovedBody310_27

def RemovedBody310_29 : StackLang.HolProg 64 :=
.seq RemovedBody310_23 RemovedBody310_28

def RemovedBody310_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody310_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 3

def RemovedBody310_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody310_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody310_39 : StackLang.HolProg 64 :=
.seq RemovedBody310_37 RemovedBody310_38

def RemovedBody310_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody310_41 : StackLang.HolProg 64 :=
.seq RemovedBody310_39 RemovedBody310_40

def RemovedBody310_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_43 : StackLang.HolProg 64 :=
.seq RemovedBody310_41 RemovedBody310_42

def RemovedBody310_44 : StackLang.HolProg 64 :=
.seq RemovedBody310_36 RemovedBody310_43

def RemovedBody310_45 : StackLang.HolProg 64 :=
.seq RemovedBody310_35 RemovedBody310_44

def RemovedBody310_46 : StackLang.HolProg 64 :=
.seq RemovedBody310_34 RemovedBody310_45

def RemovedBody310_47 : StackLang.HolProg 64 :=
.seq RemovedBody310_33 RemovedBody310_46

def RemovedBody310_48 : StackLang.HolProg 64 :=
.seq RemovedBody310_32 RemovedBody310_47

def RemovedBody310_49 : StackLang.HolProg 64 :=
.seq RemovedBody310_31 RemovedBody310_48

def RemovedBody310_50 : StackLang.HolProg 64 :=
.seq RemovedBody310_30 RemovedBody310_49

def RemovedBody310_51 : StackLang.HolProg 64 :=
.seq RemovedBody310_29 RemovedBody310_50

def RemovedBody310_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_59 : StackLang.HolProg 64 :=
.seq RemovedBody310_57 RemovedBody310_58

def RemovedBody310_60 : StackLang.HolProg 64 :=
.seq RemovedBody310_56 RemovedBody310_59

def RemovedBody310_61 : StackLang.HolProg 64 :=
.seq RemovedBody310_55 RemovedBody310_60

def RemovedBody310_62 : StackLang.HolProg 64 :=
.seq RemovedBody310_54 RemovedBody310_61

def RemovedBody310_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody310_65 : StackLang.HolProg 64 :=
.seq RemovedBody310_63 RemovedBody310_64

def RemovedBody310_66 : StackLang.HolProg 64 :=
.call (some (RemovedBody310_62, 0, 310, 2)) (Sum.inl 158) (some (RemovedBody310_65, 310, 3))

def RemovedBody310_67 : StackLang.HolProg 64 :=
.seq RemovedBody310_53 RemovedBody310_66

def RemovedBody310_68 : StackLang.HolProg 64 :=
.seq RemovedBody310_52 RemovedBody310_67

def RemovedBody310_69 : StackLang.HolProg 64 :=
.seq RemovedBody310_51 RemovedBody310_68

def RemovedBody310_70 : StackLang.HolProg 64 :=
.seq RemovedBody310_22 RemovedBody310_69

def RemovedBody310_71 : StackLang.HolProg 64 :=
.seq RemovedBody310_19 RemovedBody310_70

def RemovedBody310_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 64#64)

def RemovedBody310_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 852#64)

def RemovedBody310_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_78 : StackLang.HolProg 64 :=
.seq RemovedBody310_76 RemovedBody310_77

def RemovedBody310_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_82 : StackLang.HolProg 64 :=
.seq RemovedBody310_80 RemovedBody310_81

def RemovedBody310_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_82 RemovedBody310_83

def RemovedBody310_85 : StackLang.HolProg 64 :=
.seq RemovedBody310_79 RemovedBody310_84

def RemovedBody310_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody310_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 5

def RemovedBody310_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody310_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody310_95 : StackLang.HolProg 64 :=
.seq RemovedBody310_93 RemovedBody310_94

def RemovedBody310_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody310_97 : StackLang.HolProg 64 :=
.seq RemovedBody310_95 RemovedBody310_96

def RemovedBody310_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_99 : StackLang.HolProg 64 :=
.seq RemovedBody310_97 RemovedBody310_98

def RemovedBody310_100 : StackLang.HolProg 64 :=
.seq RemovedBody310_92 RemovedBody310_99

def RemovedBody310_101 : StackLang.HolProg 64 :=
.seq RemovedBody310_91 RemovedBody310_100

def RemovedBody310_102 : StackLang.HolProg 64 :=
.seq RemovedBody310_90 RemovedBody310_101

def RemovedBody310_103 : StackLang.HolProg 64 :=
.seq RemovedBody310_89 RemovedBody310_102

def RemovedBody310_104 : StackLang.HolProg 64 :=
.seq RemovedBody310_88 RemovedBody310_103

def RemovedBody310_105 : StackLang.HolProg 64 :=
.seq RemovedBody310_87 RemovedBody310_104

def RemovedBody310_106 : StackLang.HolProg 64 :=
.seq RemovedBody310_86 RemovedBody310_105

def RemovedBody310_107 : StackLang.HolProg 64 :=
.seq RemovedBody310_85 RemovedBody310_106

def RemovedBody310_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody310_115 : StackLang.HolProg 64 :=
.seq RemovedBody310_113 RemovedBody310_114

def RemovedBody310_116 : StackLang.HolProg 64 :=
.seq RemovedBody310_112 RemovedBody310_115

def RemovedBody310_117 : StackLang.HolProg 64 :=
.seq RemovedBody310_111 RemovedBody310_116

def RemovedBody310_118 : StackLang.HolProg 64 :=
.seq RemovedBody310_110 RemovedBody310_117

def RemovedBody310_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody310_121 : StackLang.HolProg 64 :=
.seq RemovedBody310_119 RemovedBody310_120

def RemovedBody310_122 : StackLang.HolProg 64 :=
.call (some (RemovedBody310_118, 0, 310, 4)) (Sum.inl 68) (some (RemovedBody310_121, 310, 5))

def RemovedBody310_123 : StackLang.HolProg 64 :=
.seq RemovedBody310_109 RemovedBody310_122

def RemovedBody310_124 : StackLang.HolProg 64 :=
.seq RemovedBody310_108 RemovedBody310_123

def RemovedBody310_125 : StackLang.HolProg 64 :=
.seq RemovedBody310_107 RemovedBody310_124

def RemovedBody310_126 : StackLang.HolProg 64 :=
.seq RemovedBody310_78 RemovedBody310_125

def RemovedBody310_127 : StackLang.HolProg 64 :=
.seq RemovedBody310_75 RemovedBody310_126

def RemovedBody310_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody310_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody310_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody310_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551464#64))

def RemovedBody310_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def RemovedBody310_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 853#64)

def RemovedBody310_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_139 : StackLang.HolProg 64 :=
.seq RemovedBody310_137 RemovedBody310_138

def RemovedBody310_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_143 : StackLang.HolProg 64 :=
.seq RemovedBody310_141 RemovedBody310_142

def RemovedBody310_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_145 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_143 RemovedBody310_144

def RemovedBody310_146 : StackLang.HolProg 64 :=
.seq RemovedBody310_140 RemovedBody310_145

def RemovedBody310_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody310_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 7

def RemovedBody310_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody310_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody310_156 : StackLang.HolProg 64 :=
.seq RemovedBody310_154 RemovedBody310_155

def RemovedBody310_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody310_158 : StackLang.HolProg 64 :=
.seq RemovedBody310_156 RemovedBody310_157

def RemovedBody310_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_160 : StackLang.HolProg 64 :=
.seq RemovedBody310_158 RemovedBody310_159

def RemovedBody310_161 : StackLang.HolProg 64 :=
.seq RemovedBody310_153 RemovedBody310_160

def RemovedBody310_162 : StackLang.HolProg 64 :=
.seq RemovedBody310_152 RemovedBody310_161

def RemovedBody310_163 : StackLang.HolProg 64 :=
.seq RemovedBody310_151 RemovedBody310_162

def RemovedBody310_164 : StackLang.HolProg 64 :=
.seq RemovedBody310_150 RemovedBody310_163

def RemovedBody310_165 : StackLang.HolProg 64 :=
.seq RemovedBody310_149 RemovedBody310_164

def RemovedBody310_166 : StackLang.HolProg 64 :=
.seq RemovedBody310_148 RemovedBody310_165

def RemovedBody310_167 : StackLang.HolProg 64 :=
.seq RemovedBody310_147 RemovedBody310_166

def RemovedBody310_168 : StackLang.HolProg 64 :=
.seq RemovedBody310_146 RemovedBody310_167

def RemovedBody310_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_177 : StackLang.HolProg 64 :=
.seq RemovedBody310_175 RemovedBody310_176

def RemovedBody310_178 : StackLang.HolProg 64 :=
.seq RemovedBody310_174 RemovedBody310_177

def RemovedBody310_179 : StackLang.HolProg 64 :=
.seq RemovedBody310_173 RemovedBody310_178

def RemovedBody310_180 : StackLang.HolProg 64 :=
.seq RemovedBody310_172 RemovedBody310_179

def RemovedBody310_181 : StackLang.HolProg 64 :=
.seq RemovedBody310_171 RemovedBody310_180

def RemovedBody310_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_184 : StackLang.HolProg 64 :=
.seq RemovedBody310_182 RemovedBody310_183

def RemovedBody310_185 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody310_186 : StackLang.HolProg 64 :=
.seq RemovedBody310_184 RemovedBody310_185

def RemovedBody310_187 : StackLang.HolProg 64 :=
.call (some (RemovedBody310_181, 0, 310, 6)) (Sum.inl 288) (some (RemovedBody310_186, 310, 7))

def RemovedBody310_188 : StackLang.HolProg 64 :=
.seq RemovedBody310_170 RemovedBody310_187

def RemovedBody310_189 : StackLang.HolProg 64 :=
.seq RemovedBody310_169 RemovedBody310_188

def RemovedBody310_190 : StackLang.HolProg 64 :=
.seq RemovedBody310_168 RemovedBody310_189

def RemovedBody310_191 : StackLang.HolProg 64 :=
.seq RemovedBody310_139 RemovedBody310_190

def RemovedBody310_192 : StackLang.HolProg 64 :=
.seq RemovedBody310_136 RemovedBody310_191

def RemovedBody310_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 64#64)

def RemovedBody310_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody310_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody310_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody310_199 : StackLang.HolProg 64 :=
.seq RemovedBody310_197 RemovedBody310_198

def RemovedBody310_200 : StackLang.HolProg 64 :=
.seq RemovedBody310_196 RemovedBody310_199

def RemovedBody310_201 : StackLang.HolProg 64 :=
.seq RemovedBody310_195 RemovedBody310_200

def RemovedBody310_202 : StackLang.HolProg 64 :=
.seq RemovedBody310_194 RemovedBody310_201

def RemovedBody310_203 : StackLang.HolProg 64 :=
.seq RemovedBody310_193 RemovedBody310_202

def RemovedBody310_204 : StackLang.HolProg 64 :=
.seq RemovedBody310_192 RemovedBody310_203

def RemovedBody310_205 : StackLang.HolProg 64 :=
.seq RemovedBody310_135 RemovedBody310_204

def RemovedBody310_206 : StackLang.HolProg 64 :=
.seq RemovedBody310_134 RemovedBody310_205

def RemovedBody310_207 : StackLang.HolProg 64 :=
.seq RemovedBody310_133 RemovedBody310_206

def RemovedBody310_208 : StackLang.HolProg 64 :=
.seq RemovedBody310_132 RemovedBody310_207

def RemovedBody310_209 : StackLang.HolProg 64 :=
.seq RemovedBody310_131 RemovedBody310_208

def RemovedBody310_210 : StackLang.HolProg 64 :=
.seq RemovedBody310_130 RemovedBody310_209

def RemovedBody310_211 : StackLang.HolProg 64 :=
.seq RemovedBody310_129 RemovedBody310_210

def RemovedBody310_212 : StackLang.HolProg 64 :=
.seq RemovedBody310_128 RemovedBody310_211

def RemovedBody310_213 : StackLang.HolProg 64 :=
.seq RemovedBody310_127 RemovedBody310_212

def RemovedBody310_214 : StackLang.HolProg 64 :=
.seq RemovedBody310_74 RemovedBody310_213

def RemovedBody310_215 : StackLang.HolProg 64 :=
.seq RemovedBody310_73 RemovedBody310_214

def RemovedBody310_216 : StackLang.HolProg 64 :=
.seq RemovedBody310_72 RemovedBody310_215

def RemovedBody310_217 : StackLang.HolProg 64 :=
.seq RemovedBody310_71 RemovedBody310_216

def RemovedBody310_218 : StackLang.HolProg 64 :=
.seq RemovedBody310_18 RemovedBody310_217

def RemovedBody310_219 : StackLang.HolProg 64 :=
.seq RemovedBody310_17 RemovedBody310_218

def RemovedBody310_220 : StackLang.HolProg 64 :=
.seq RemovedBody310_16 RemovedBody310_219

def RemovedBody310_221 : StackLang.HolProg 64 :=
.seq RemovedBody310_15 RemovedBody310_220

def RemovedBody310_222 : StackLang.HolProg 64 :=
.seq RemovedBody310_14 RemovedBody310_221

def RemovedBody310_223 : StackLang.HolProg 64 :=
.seq RemovedBody310_13 RemovedBody310_222

def RemovedBody310_224 : StackLang.HolProg 64 :=
.seq RemovedBody310_10 RemovedBody310_223

def RemovedBody310_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody310_227 : StackLang.HolProg 64 :=
.seq RemovedBody310_225 RemovedBody310_226

def RemovedBody310_228 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody310_224 RemovedBody310_227

def RemovedBody310_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody310_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 854#64)

def RemovedBody310_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_237 : StackLang.HolProg 64 :=
.seq RemovedBody310_235 RemovedBody310_236

def RemovedBody310_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_241 : StackLang.HolProg 64 :=
.seq RemovedBody310_239 RemovedBody310_240

def RemovedBody310_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_241 RemovedBody310_242

def RemovedBody310_244 : StackLang.HolProg 64 :=
.seq RemovedBody310_238 RemovedBody310_243

def RemovedBody310_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody310_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 9

def RemovedBody310_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody310_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody310_254 : StackLang.HolProg 64 :=
.seq RemovedBody310_252 RemovedBody310_253

def RemovedBody310_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody310_256 : StackLang.HolProg 64 :=
.seq RemovedBody310_254 RemovedBody310_255

def RemovedBody310_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_258 : StackLang.HolProg 64 :=
.seq RemovedBody310_256 RemovedBody310_257

def RemovedBody310_259 : StackLang.HolProg 64 :=
.seq RemovedBody310_251 RemovedBody310_258

def RemovedBody310_260 : StackLang.HolProg 64 :=
.seq RemovedBody310_250 RemovedBody310_259

def RemovedBody310_261 : StackLang.HolProg 64 :=
.seq RemovedBody310_249 RemovedBody310_260

def RemovedBody310_262 : StackLang.HolProg 64 :=
.seq RemovedBody310_248 RemovedBody310_261

def RemovedBody310_263 : StackLang.HolProg 64 :=
.seq RemovedBody310_247 RemovedBody310_262

def RemovedBody310_264 : StackLang.HolProg 64 :=
.seq RemovedBody310_246 RemovedBody310_263

def RemovedBody310_265 : StackLang.HolProg 64 :=
.seq RemovedBody310_245 RemovedBody310_264

def RemovedBody310_266 : StackLang.HolProg 64 :=
.seq RemovedBody310_244 RemovedBody310_265

def RemovedBody310_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody310_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_276 : StackLang.HolProg 64 :=
.seq RemovedBody310_274 RemovedBody310_275

def RemovedBody310_277 : StackLang.HolProg 64 :=
.seq RemovedBody310_273 RemovedBody310_276

def RemovedBody310_278 : StackLang.HolProg 64 :=
.seq RemovedBody310_272 RemovedBody310_277

def RemovedBody310_279 : StackLang.HolProg 64 :=
.seq RemovedBody310_271 RemovedBody310_278

def RemovedBody310_280 : StackLang.HolProg 64 :=
.seq RemovedBody310_270 RemovedBody310_279

def RemovedBody310_281 : StackLang.HolProg 64 :=
.seq RemovedBody310_269 RemovedBody310_280

def RemovedBody310_282 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_284 : StackLang.HolProg 64 :=
.seq RemovedBody310_282 RemovedBody310_283

def RemovedBody310_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody310_286 : StackLang.HolProg 64 :=
.seq RemovedBody310_284 RemovedBody310_285

def RemovedBody310_287 : StackLang.HolProg 64 :=
.call (some (RemovedBody310_281, 0, 310, 8)) (Sum.inl 68) (some (RemovedBody310_286, 310, 9))

def RemovedBody310_288 : StackLang.HolProg 64 :=
.seq RemovedBody310_268 RemovedBody310_287

def RemovedBody310_289 : StackLang.HolProg 64 :=
.seq RemovedBody310_267 RemovedBody310_288

def RemovedBody310_290 : StackLang.HolProg 64 :=
.seq RemovedBody310_266 RemovedBody310_289

def RemovedBody310_291 : StackLang.HolProg 64 :=
.seq RemovedBody310_237 RemovedBody310_290

def RemovedBody310_292 : StackLang.HolProg 64 :=
.seq RemovedBody310_234 RemovedBody310_291

def RemovedBody310_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody310_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_297 : StackLang.HolProg 64 :=
.seq RemovedBody310_295 RemovedBody310_296

def RemovedBody310_298 : StackLang.HolProg 64 :=
.seq RemovedBody310_294 RemovedBody310_297

def RemovedBody310_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 855#64)

def RemovedBody310_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_302 : StackLang.HolProg 64 :=
.seq RemovedBody310_300 RemovedBody310_301

def RemovedBody310_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody310_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody310_306 : StackLang.HolProg 64 :=
.seq RemovedBody310_304 RemovedBody310_305

def RemovedBody310_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody310_306 RemovedBody310_307

def RemovedBody310_309 : StackLang.HolProg 64 :=
.seq RemovedBody310_303 RemovedBody310_308

def RemovedBody310_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody310_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody310_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 310 11

def RemovedBody310_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody310_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody310_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody310_319 : StackLang.HolProg 64 :=
.seq RemovedBody310_317 RemovedBody310_318

def RemovedBody310_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody310_321 : StackLang.HolProg 64 :=
.seq RemovedBody310_319 RemovedBody310_320

def RemovedBody310_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_323 : StackLang.HolProg 64 :=
.seq RemovedBody310_321 RemovedBody310_322

def RemovedBody310_324 : StackLang.HolProg 64 :=
.seq RemovedBody310_316 RemovedBody310_323

def RemovedBody310_325 : StackLang.HolProg 64 :=
.seq RemovedBody310_315 RemovedBody310_324

def RemovedBody310_326 : StackLang.HolProg 64 :=
.seq RemovedBody310_314 RemovedBody310_325

def RemovedBody310_327 : StackLang.HolProg 64 :=
.seq RemovedBody310_313 RemovedBody310_326

def RemovedBody310_328 : StackLang.HolProg 64 :=
.seq RemovedBody310_312 RemovedBody310_327

def RemovedBody310_329 : StackLang.HolProg 64 :=
.seq RemovedBody310_311 RemovedBody310_328

def RemovedBody310_330 : StackLang.HolProg 64 :=
.seq RemovedBody310_310 RemovedBody310_329

def RemovedBody310_331 : StackLang.HolProg 64 :=
.seq RemovedBody310_309 RemovedBody310_330

def RemovedBody310_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody310_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody310_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody310_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_341 : StackLang.HolProg 64 :=
.seq RemovedBody310_339 RemovedBody310_340

def RemovedBody310_342 : StackLang.HolProg 64 :=
.seq RemovedBody310_338 RemovedBody310_341

def RemovedBody310_343 : StackLang.HolProg 64 :=
.seq RemovedBody310_337 RemovedBody310_342

def RemovedBody310_344 : StackLang.HolProg 64 :=
.seq RemovedBody310_336 RemovedBody310_343

def RemovedBody310_345 : StackLang.HolProg 64 :=
.seq RemovedBody310_335 RemovedBody310_344

def RemovedBody310_346 : StackLang.HolProg 64 :=
.seq RemovedBody310_334 RemovedBody310_345

def RemovedBody310_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody310_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody310_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody310_350 : StackLang.HolProg 64 :=
.seq RemovedBody310_348 RemovedBody310_349

def RemovedBody310_351 : StackLang.HolProg 64 :=
.seq RemovedBody310_347 RemovedBody310_350

def RemovedBody310_352 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody310_353 : StackLang.HolProg 64 :=
.seq RemovedBody310_351 RemovedBody310_352

def RemovedBody310_354 : StackLang.HolProg 64 :=
.call (some (RemovedBody310_346, 0, 310, 10)) (Sum.inl 288) (some (RemovedBody310_353, 310, 11))

def RemovedBody310_355 : StackLang.HolProg 64 :=
.seq RemovedBody310_333 RemovedBody310_354

def RemovedBody310_356 : StackLang.HolProg 64 :=
.seq RemovedBody310_332 RemovedBody310_355

def RemovedBody310_357 : StackLang.HolProg 64 :=
.seq RemovedBody310_331 RemovedBody310_356

def RemovedBody310_358 : StackLang.HolProg 64 :=
.seq RemovedBody310_302 RemovedBody310_357

def RemovedBody310_359 : StackLang.HolProg 64 :=
.seq RemovedBody310_299 RemovedBody310_358

def RemovedBody310_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody310_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody310_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody310_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody310_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def RemovedBody310_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody310_366 : StackLang.HolProg 64 :=
.seq RemovedBody310_364 RemovedBody310_365

def RemovedBody310_367 : StackLang.HolProg 64 :=
.seq RemovedBody310_363 RemovedBody310_366

def RemovedBody310_368 : StackLang.HolProg 64 :=
.seq RemovedBody310_362 RemovedBody310_367

def RemovedBody310_369 : StackLang.HolProg 64 :=
.seq RemovedBody310_361 RemovedBody310_368

def RemovedBody310_370 : StackLang.HolProg 64 :=
.seq RemovedBody310_360 RemovedBody310_369

def RemovedBody310_371 : StackLang.HolProg 64 :=
.seq RemovedBody310_359 RemovedBody310_370

def RemovedBody310_372 : StackLang.HolProg 64 :=
.seq RemovedBody310_298 RemovedBody310_371

def RemovedBody310_373 : StackLang.HolProg 64 :=
.seq RemovedBody310_293 RemovedBody310_372

def RemovedBody310_374 : StackLang.HolProg 64 :=
.seq RemovedBody310_292 RemovedBody310_373

def RemovedBody310_375 : StackLang.HolProg 64 :=
.seq RemovedBody310_233 RemovedBody310_374

def RemovedBody310_376 : StackLang.HolProg 64 :=
.seq RemovedBody310_232 RemovedBody310_375

def RemovedBody310_377 : StackLang.HolProg 64 :=
.seq RemovedBody310_231 RemovedBody310_376

def RemovedBody310_378 : StackLang.HolProg 64 :=
.seq RemovedBody310_230 RemovedBody310_377

def RemovedBody310_379 : StackLang.HolProg 64 :=
.seq RemovedBody310_229 RemovedBody310_378

def RemovedBody310_380 : StackLang.HolProg 64 :=
.seq RemovedBody310_228 RemovedBody310_379

def RemovedBody310_381 : StackLang.HolProg 64 :=
.seq RemovedBody310_9 RemovedBody310_380

def RemovedBody310_382 : StackLang.HolProg 64 :=
.seq RemovedBody310_8 RemovedBody310_381

def RemovedBody310_383 : StackLang.HolProg 64 :=
.seq RemovedBody310_7 RemovedBody310_382

def RemovedBody310_384 : StackLang.HolProg 64 :=
.seq RemovedBody310_6 RemovedBody310_383

def Removed310 : Nat × StackLang.HolProg 64 := (310, RemovedBody310_384)
theorem Removed310_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc310 = Removed310 := by
  kernel_rfl
#print axioms Removed310_eq
end InitECandidate.Proofs.BackendStages
