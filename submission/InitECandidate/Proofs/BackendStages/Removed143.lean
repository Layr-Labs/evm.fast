import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc143
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody143_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody143_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody143_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody143_3 : StackLang.HolProg 64 :=
.seq RemovedBody143_1 RemovedBody143_2

def RemovedBody143_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody143_3 RemovedBody143_4

def RemovedBody143_6 : StackLang.HolProg 64 :=
.seq RemovedBody143_0 RemovedBody143_5

def RemovedBody143_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody143_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody143_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody143_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody143_11 : StackLang.HolProg 64 :=
.seq RemovedBody143_9 RemovedBody143_10

def RemovedBody143_12 : StackLang.HolProg 64 :=
.seq RemovedBody143_8 RemovedBody143_11

def RemovedBody143_13 : StackLang.HolProg 64 :=
.seq RemovedBody143_7 RemovedBody143_12

def RemovedBody143_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def RemovedBody143_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 256#64)

def RemovedBody143_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody143_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody143_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 18446744073709551615#64)

def RemovedBody143_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 18446744073709551615#64)

def RemovedBody143_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 18446744073709551615#64)

def RemovedBody143_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody143_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody143_28 : StackLang.HolProg 64 :=
.seq RemovedBody143_26 RemovedBody143_27

def RemovedBody143_29 : StackLang.HolProg 64 :=
.seq RemovedBody143_25 RemovedBody143_28

def RemovedBody143_30 : StackLang.HolProg 64 :=
.seq RemovedBody143_24 RemovedBody143_29

def RemovedBody143_31 : StackLang.HolProg 64 :=
.seq RemovedBody143_23 RemovedBody143_30

def RemovedBody143_32 : StackLang.HolProg 64 :=
.seq RemovedBody143_22 RemovedBody143_31

def RemovedBody143_33 : StackLang.HolProg 64 :=
.seq RemovedBody143_21 RemovedBody143_32

def RemovedBody143_34 : StackLang.HolProg 64 :=
.seq RemovedBody143_20 RemovedBody143_33

def RemovedBody143_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody143_34 RemovedBody143_35

def RemovedBody143_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody143_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody143_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody143_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody143_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody143_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody143_46 : StackLang.HolProg 64 :=
.seq RemovedBody143_44 RemovedBody143_45

def RemovedBody143_47 : StackLang.HolProg 64 :=
.seq RemovedBody143_43 RemovedBody143_46

def RemovedBody143_48 : StackLang.HolProg 64 :=
.seq RemovedBody143_42 RemovedBody143_47

def RemovedBody143_49 : StackLang.HolProg 64 :=
.seq RemovedBody143_41 RemovedBody143_48

def RemovedBody143_50 : StackLang.HolProg 64 :=
.seq RemovedBody143_40 RemovedBody143_49

def RemovedBody143_51 : StackLang.HolProg 64 :=
.seq RemovedBody143_39 RemovedBody143_50

def RemovedBody143_52 : StackLang.HolProg 64 :=
.seq RemovedBody143_38 RemovedBody143_51

def RemovedBody143_53 : StackLang.HolProg 64 :=
.seq RemovedBody143_37 RemovedBody143_52

def RemovedBody143_54 : StackLang.HolProg 64 :=
.seq RemovedBody143_36 RemovedBody143_53

def RemovedBody143_55 : StackLang.HolProg 64 :=
.seq RemovedBody143_19 RemovedBody143_54

def RemovedBody143_56 : StackLang.HolProg 64 :=
.seq RemovedBody143_18 RemovedBody143_55

def RemovedBody143_57 : StackLang.HolProg 64 :=
.seq RemovedBody143_17 RemovedBody143_56

def RemovedBody143_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody143_57 RemovedBody143_58

def RemovedBody143_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def RemovedBody143_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody143_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody143_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody143_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody143_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_68 : StackLang.HolProg 64 :=
.seq RemovedBody143_66 RemovedBody143_67

def RemovedBody143_69 : StackLang.HolProg 64 :=
.seq RemovedBody143_65 RemovedBody143_68

def RemovedBody143_70 : StackLang.HolProg 64 :=
.seq RemovedBody143_64 RemovedBody143_69

def RemovedBody143_71 : StackLang.HolProg 64 :=
.seq RemovedBody143_63 RemovedBody143_70

def RemovedBody143_72 : StackLang.HolProg 64 :=
.seq RemovedBody143_62 RemovedBody143_71

def RemovedBody143_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 105#64)

def RemovedBody143_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_76 : StackLang.HolProg 64 :=
.seq RemovedBody143_74 RemovedBody143_75

def RemovedBody143_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody143_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody143_80 : StackLang.HolProg 64 :=
.seq RemovedBody143_78 RemovedBody143_79

def RemovedBody143_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody143_80 RemovedBody143_81

def RemovedBody143_83 : StackLang.HolProg 64 :=
.seq RemovedBody143_77 RemovedBody143_82

def RemovedBody143_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody143_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 3

def RemovedBody143_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody143_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody143_93 : StackLang.HolProg 64 :=
.seq RemovedBody143_91 RemovedBody143_92

def RemovedBody143_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody143_95 : StackLang.HolProg 64 :=
.seq RemovedBody143_93 RemovedBody143_94

def RemovedBody143_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_97 : StackLang.HolProg 64 :=
.seq RemovedBody143_95 RemovedBody143_96

def RemovedBody143_98 : StackLang.HolProg 64 :=
.seq RemovedBody143_90 RemovedBody143_97

def RemovedBody143_99 : StackLang.HolProg 64 :=
.seq RemovedBody143_89 RemovedBody143_98

def RemovedBody143_100 : StackLang.HolProg 64 :=
.seq RemovedBody143_88 RemovedBody143_99

def RemovedBody143_101 : StackLang.HolProg 64 :=
.seq RemovedBody143_87 RemovedBody143_100

def RemovedBody143_102 : StackLang.HolProg 64 :=
.seq RemovedBody143_86 RemovedBody143_101

def RemovedBody143_103 : StackLang.HolProg 64 :=
.seq RemovedBody143_85 RemovedBody143_102

def RemovedBody143_104 : StackLang.HolProg 64 :=
.seq RemovedBody143_84 RemovedBody143_103

def RemovedBody143_105 : StackLang.HolProg 64 :=
.seq RemovedBody143_83 RemovedBody143_104

def RemovedBody143_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody143_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_115 : StackLang.HolProg 64 :=
.seq RemovedBody143_113 RemovedBody143_114

def RemovedBody143_116 : StackLang.HolProg 64 :=
.seq RemovedBody143_112 RemovedBody143_115

def RemovedBody143_117 : StackLang.HolProg 64 :=
.seq RemovedBody143_111 RemovedBody143_116

def RemovedBody143_118 : StackLang.HolProg 64 :=
.seq RemovedBody143_110 RemovedBody143_117

def RemovedBody143_119 : StackLang.HolProg 64 :=
.seq RemovedBody143_109 RemovedBody143_118

def RemovedBody143_120 : StackLang.HolProg 64 :=
.seq RemovedBody143_108 RemovedBody143_119

def RemovedBody143_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_123 : StackLang.HolProg 64 :=
.seq RemovedBody143_121 RemovedBody143_122

def RemovedBody143_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody143_125 : StackLang.HolProg 64 :=
.seq RemovedBody143_123 RemovedBody143_124

def RemovedBody143_126 : StackLang.HolProg 64 :=
.call (some (RemovedBody143_120, 0, 143, 2)) (Sum.inl 142) (some (RemovedBody143_125, 143, 3))

def RemovedBody143_127 : StackLang.HolProg 64 :=
.seq RemovedBody143_107 RemovedBody143_126

def RemovedBody143_128 : StackLang.HolProg 64 :=
.seq RemovedBody143_106 RemovedBody143_127

def RemovedBody143_129 : StackLang.HolProg 64 :=
.seq RemovedBody143_105 RemovedBody143_128

def RemovedBody143_130 : StackLang.HolProg 64 :=
.seq RemovedBody143_76 RemovedBody143_129

def RemovedBody143_131 : StackLang.HolProg 64 :=
.seq RemovedBody143_73 RemovedBody143_130

def RemovedBody143_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody143_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody143_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def RemovedBody143_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody143_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def RemovedBody143_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def RemovedBody143_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18446744073709551615#64)

def RemovedBody143_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def RemovedBody143_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody143_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody143_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody143_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_153 : StackLang.HolProg 64 :=
.seq RemovedBody143_151 RemovedBody143_152

def RemovedBody143_154 : StackLang.HolProg 64 :=
.seq RemovedBody143_150 RemovedBody143_153

def RemovedBody143_155 : StackLang.HolProg 64 :=
.seq RemovedBody143_149 RemovedBody143_154

def RemovedBody143_156 : StackLang.HolProg 64 :=
.seq RemovedBody143_148 RemovedBody143_155

def RemovedBody143_157 : StackLang.HolProg 64 :=
.seq RemovedBody143_147 RemovedBody143_156

def RemovedBody143_158 : StackLang.HolProg 64 :=
.seq RemovedBody143_146 RemovedBody143_157

def RemovedBody143_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 106#64)

def RemovedBody143_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_162 : StackLang.HolProg 64 :=
.seq RemovedBody143_160 RemovedBody143_161

def RemovedBody143_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody143_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody143_166 : StackLang.HolProg 64 :=
.seq RemovedBody143_164 RemovedBody143_165

def RemovedBody143_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody143_166 RemovedBody143_167

def RemovedBody143_169 : StackLang.HolProg 64 :=
.seq RemovedBody143_163 RemovedBody143_168

def RemovedBody143_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody143_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 5

def RemovedBody143_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody143_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody143_179 : StackLang.HolProg 64 :=
.seq RemovedBody143_177 RemovedBody143_178

def RemovedBody143_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody143_181 : StackLang.HolProg 64 :=
.seq RemovedBody143_179 RemovedBody143_180

def RemovedBody143_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_183 : StackLang.HolProg 64 :=
.seq RemovedBody143_181 RemovedBody143_182

def RemovedBody143_184 : StackLang.HolProg 64 :=
.seq RemovedBody143_176 RemovedBody143_183

def RemovedBody143_185 : StackLang.HolProg 64 :=
.seq RemovedBody143_175 RemovedBody143_184

def RemovedBody143_186 : StackLang.HolProg 64 :=
.seq RemovedBody143_174 RemovedBody143_185

def RemovedBody143_187 : StackLang.HolProg 64 :=
.seq RemovedBody143_173 RemovedBody143_186

def RemovedBody143_188 : StackLang.HolProg 64 :=
.seq RemovedBody143_172 RemovedBody143_187

def RemovedBody143_189 : StackLang.HolProg 64 :=
.seq RemovedBody143_171 RemovedBody143_188

def RemovedBody143_190 : StackLang.HolProg 64 :=
.seq RemovedBody143_170 RemovedBody143_189

def RemovedBody143_191 : StackLang.HolProg 64 :=
.seq RemovedBody143_169 RemovedBody143_190

def RemovedBody143_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody143_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody143_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody143_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody143_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_206 : StackLang.HolProg 64 :=
.seq RemovedBody143_204 RemovedBody143_205

def RemovedBody143_207 : StackLang.HolProg 64 :=
.seq RemovedBody143_203 RemovedBody143_206

def RemovedBody143_208 : StackLang.HolProg 64 :=
.seq RemovedBody143_202 RemovedBody143_207

def RemovedBody143_209 : StackLang.HolProg 64 :=
.seq RemovedBody143_201 RemovedBody143_208

def RemovedBody143_210 : StackLang.HolProg 64 :=
.seq RemovedBody143_200 RemovedBody143_209

def RemovedBody143_211 : StackLang.HolProg 64 :=
.seq RemovedBody143_199 RemovedBody143_210

def RemovedBody143_212 : StackLang.HolProg 64 :=
.seq RemovedBody143_198 RemovedBody143_211

def RemovedBody143_213 : StackLang.HolProg 64 :=
.seq RemovedBody143_197 RemovedBody143_212

def RemovedBody143_214 : StackLang.HolProg 64 :=
.seq RemovedBody143_196 RemovedBody143_213

def RemovedBody143_215 : StackLang.HolProg 64 :=
.seq RemovedBody143_195 RemovedBody143_214

def RemovedBody143_216 : StackLang.HolProg 64 :=
.seq RemovedBody143_194 RemovedBody143_215

def RemovedBody143_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def RemovedBody143_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def RemovedBody143_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_221 : StackLang.HolProg 64 :=
.seq RemovedBody143_219 RemovedBody143_220

def RemovedBody143_222 : StackLang.HolProg 64 :=
.seq RemovedBody143_218 RemovedBody143_221

def RemovedBody143_223 : StackLang.HolProg 64 :=
.seq RemovedBody143_217 RemovedBody143_222

def RemovedBody143_224 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody143_225 : StackLang.HolProg 64 :=
.seq RemovedBody143_223 RemovedBody143_224

def RemovedBody143_226 : StackLang.HolProg 64 :=
.call (some (RemovedBody143_216, 0, 143, 4)) (Sum.inl 141) (some (RemovedBody143_225, 143, 5))

def RemovedBody143_227 : StackLang.HolProg 64 :=
.seq RemovedBody143_193 RemovedBody143_226

def RemovedBody143_228 : StackLang.HolProg 64 :=
.seq RemovedBody143_192 RemovedBody143_227

def RemovedBody143_229 : StackLang.HolProg 64 :=
.seq RemovedBody143_191 RemovedBody143_228

def RemovedBody143_230 : StackLang.HolProg 64 :=
.seq RemovedBody143_162 RemovedBody143_229

def RemovedBody143_231 : StackLang.HolProg 64 :=
.seq RemovedBody143_159 RemovedBody143_230

def RemovedBody143_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody143_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 107#64)

def RemovedBody143_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_237 : StackLang.HolProg 64 :=
.seq RemovedBody143_235 RemovedBody143_236

def RemovedBody143_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody143_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody143_241 : StackLang.HolProg 64 :=
.seq RemovedBody143_239 RemovedBody143_240

def RemovedBody143_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody143_241 RemovedBody143_242

def RemovedBody143_244 : StackLang.HolProg 64 :=
.seq RemovedBody143_238 RemovedBody143_243

def RemovedBody143_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody143_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody143_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 7

def RemovedBody143_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody143_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody143_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody143_254 : StackLang.HolProg 64 :=
.seq RemovedBody143_252 RemovedBody143_253

def RemovedBody143_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody143_256 : StackLang.HolProg 64 :=
.seq RemovedBody143_254 RemovedBody143_255

def RemovedBody143_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_258 : StackLang.HolProg 64 :=
.seq RemovedBody143_256 RemovedBody143_257

def RemovedBody143_259 : StackLang.HolProg 64 :=
.seq RemovedBody143_251 RemovedBody143_258

def RemovedBody143_260 : StackLang.HolProg 64 :=
.seq RemovedBody143_250 RemovedBody143_259

def RemovedBody143_261 : StackLang.HolProg 64 :=
.seq RemovedBody143_249 RemovedBody143_260

def RemovedBody143_262 : StackLang.HolProg 64 :=
.seq RemovedBody143_248 RemovedBody143_261

def RemovedBody143_263 : StackLang.HolProg 64 :=
.seq RemovedBody143_247 RemovedBody143_262

def RemovedBody143_264 : StackLang.HolProg 64 :=
.seq RemovedBody143_246 RemovedBody143_263

def RemovedBody143_265 : StackLang.HolProg 64 :=
.seq RemovedBody143_245 RemovedBody143_264

def RemovedBody143_266 : StackLang.HolProg 64 :=
.seq RemovedBody143_244 RemovedBody143_265

def RemovedBody143_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody143_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody143_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody143_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody143_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody143_275 : StackLang.HolProg 64 :=
.seq RemovedBody143_273 RemovedBody143_274

def RemovedBody143_276 : StackLang.HolProg 64 :=
.seq RemovedBody143_272 RemovedBody143_275

def RemovedBody143_277 : StackLang.HolProg 64 :=
.seq RemovedBody143_271 RemovedBody143_276

def RemovedBody143_278 : StackLang.HolProg 64 :=
.seq RemovedBody143_270 RemovedBody143_277

def RemovedBody143_279 : StackLang.HolProg 64 :=
.seq RemovedBody143_269 RemovedBody143_278

def RemovedBody143_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody143_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody143_282 : StackLang.HolProg 64 :=
.seq RemovedBody143_280 RemovedBody143_281

def RemovedBody143_283 : StackLang.HolProg 64 :=
.call (some (RemovedBody143_279, 0, 143, 6)) (Sum.inl 113) (some (RemovedBody143_282, 143, 7))

def RemovedBody143_284 : StackLang.HolProg 64 :=
.seq RemovedBody143_268 RemovedBody143_283

def RemovedBody143_285 : StackLang.HolProg 64 :=
.seq RemovedBody143_267 RemovedBody143_284

def RemovedBody143_286 : StackLang.HolProg 64 :=
.seq RemovedBody143_266 RemovedBody143_285

def RemovedBody143_287 : StackLang.HolProg 64 :=
.seq RemovedBody143_237 RemovedBody143_286

def RemovedBody143_288 : StackLang.HolProg 64 :=
.seq RemovedBody143_234 RemovedBody143_287

def RemovedBody143_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_291 : StackLang.HolProg 64 :=
.seq RemovedBody143_289 RemovedBody143_290

def RemovedBody143_292 : StackLang.HolProg 64 :=
.seq RemovedBody143_288 RemovedBody143_291

def RemovedBody143_293 : StackLang.HolProg 64 :=
.seq RemovedBody143_233 RemovedBody143_292

def RemovedBody143_294 : StackLang.HolProg 64 :=
.seq RemovedBody143_232 RemovedBody143_293

def RemovedBody143_295 : StackLang.HolProg 64 :=
.seq RemovedBody143_231 RemovedBody143_294

def RemovedBody143_296 : StackLang.HolProg 64 :=
.seq RemovedBody143_158 RemovedBody143_295

def RemovedBody143_297 : StackLang.HolProg 64 :=
.seq RemovedBody143_145 RemovedBody143_296

def RemovedBody143_298 : StackLang.HolProg 64 :=
.seq RemovedBody143_144 RemovedBody143_297

def RemovedBody143_299 : StackLang.HolProg 64 :=
.seq RemovedBody143_143 RemovedBody143_298

def RemovedBody143_300 : StackLang.HolProg 64 :=
.seq RemovedBody143_142 RemovedBody143_299

def RemovedBody143_301 : StackLang.HolProg 64 :=
.seq RemovedBody143_141 RemovedBody143_300

def RemovedBody143_302 : StackLang.HolProg 64 :=
.seq RemovedBody143_140 RemovedBody143_301

def RemovedBody143_303 : StackLang.HolProg 64 :=
.seq RemovedBody143_139 RemovedBody143_302

def RemovedBody143_304 : StackLang.HolProg 64 :=
.seq RemovedBody143_138 RemovedBody143_303

def RemovedBody143_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody143_307 : StackLang.HolProg 64 :=
.seq RemovedBody143_305 RemovedBody143_306

def RemovedBody143_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody143_304 RemovedBody143_307

def RemovedBody143_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody143_311 : StackLang.HolProg 64 :=
.seq RemovedBody143_309 RemovedBody143_310

def RemovedBody143_312 : StackLang.HolProg 64 :=
.seq RemovedBody143_308 RemovedBody143_311

def RemovedBody143_313 : StackLang.HolProg 64 :=
.seq RemovedBody143_137 RemovedBody143_312

def RemovedBody143_314 : StackLang.HolProg 64 :=
.seq RemovedBody143_136 RemovedBody143_313

def RemovedBody143_315 : StackLang.HolProg 64 :=
.seq RemovedBody143_135 RemovedBody143_314

def RemovedBody143_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def RemovedBody143_318 : StackLang.HolProg 64 :=
.seq RemovedBody143_316 RemovedBody143_317

def RemovedBody143_319 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody143_315 RemovedBody143_318

def RemovedBody143_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody143_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody143_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody143_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody143_324 : StackLang.HolProg 64 :=
.seq RemovedBody143_322 RemovedBody143_323

def RemovedBody143_325 : StackLang.HolProg 64 :=
.seq RemovedBody143_321 RemovedBody143_324

def RemovedBody143_326 : StackLang.HolProg 64 :=
.seq RemovedBody143_320 RemovedBody143_325

def RemovedBody143_327 : StackLang.HolProg 64 :=
.seq RemovedBody143_319 RemovedBody143_326

def RemovedBody143_328 : StackLang.HolProg 64 :=
.seq RemovedBody143_134 RemovedBody143_327

def RemovedBody143_329 : StackLang.HolProg 64 :=
.seq RemovedBody143_133 RemovedBody143_328

def RemovedBody143_330 : StackLang.HolProg 64 :=
.seq RemovedBody143_132 RemovedBody143_329

def RemovedBody143_331 : StackLang.HolProg 64 :=
.seq RemovedBody143_131 RemovedBody143_330

def RemovedBody143_332 : StackLang.HolProg 64 :=
.seq RemovedBody143_72 RemovedBody143_331

def RemovedBody143_333 : StackLang.HolProg 64 :=
.seq RemovedBody143_61 RemovedBody143_332

def RemovedBody143_334 : StackLang.HolProg 64 :=
.seq RemovedBody143_60 RemovedBody143_333

def RemovedBody143_335 : StackLang.HolProg 64 :=
.seq RemovedBody143_59 RemovedBody143_334

def RemovedBody143_336 : StackLang.HolProg 64 :=
.seq RemovedBody143_16 RemovedBody143_335

def RemovedBody143_337 : StackLang.HolProg 64 :=
.seq RemovedBody143_15 RemovedBody143_336

def RemovedBody143_338 : StackLang.HolProg 64 :=
.seq RemovedBody143_14 RemovedBody143_337

def RemovedBody143_339 : StackLang.HolProg 64 :=
.seq RemovedBody143_13 RemovedBody143_338

def RemovedBody143_340 : StackLang.HolProg 64 :=
.seq RemovedBody143_6 RemovedBody143_339

def Removed143 : Nat × StackLang.HolProg 64 := (143, RemovedBody143_340)
theorem Removed143_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc143 = Removed143 := by
  kernel_rfl
#print axioms Removed143_eq
end InitECandidate.Proofs.BackendStages
