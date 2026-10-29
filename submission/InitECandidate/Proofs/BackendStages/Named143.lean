import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed143
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody143_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody143_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody143_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody143_3 : StackLang.HolProg 64 :=
.seq NamedBody143_1 NamedBody143_2

def NamedBody143_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody143_3 NamedBody143_4

def NamedBody143_6 : StackLang.HolProg 64 :=
.seq NamedBody143_0 NamedBody143_5

def NamedBody143_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody143_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody143_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody143_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody143_11 : StackLang.HolProg 64 :=
.seq NamedBody143_9 NamedBody143_10

def NamedBody143_12 : StackLang.HolProg 64 :=
.seq NamedBody143_8 NamedBody143_11

def NamedBody143_13 : StackLang.HolProg 64 :=
.seq NamedBody143_7 NamedBody143_12

def NamedBody143_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def NamedBody143_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 256#64)

def NamedBody143_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody143_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody143_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 18446744073709551615#64)

def NamedBody143_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 18446744073709551615#64)

def NamedBody143_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 18446744073709551615#64)

def NamedBody143_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody143_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody143_28 : StackLang.HolProg 64 :=
.seq NamedBody143_26 NamedBody143_27

def NamedBody143_29 : StackLang.HolProg 64 :=
.seq NamedBody143_25 NamedBody143_28

def NamedBody143_30 : StackLang.HolProg 64 :=
.seq NamedBody143_24 NamedBody143_29

def NamedBody143_31 : StackLang.HolProg 64 :=
.seq NamedBody143_23 NamedBody143_30

def NamedBody143_32 : StackLang.HolProg 64 :=
.seq NamedBody143_22 NamedBody143_31

def NamedBody143_33 : StackLang.HolProg 64 :=
.seq NamedBody143_21 NamedBody143_32

def NamedBody143_34 : StackLang.HolProg 64 :=
.seq NamedBody143_20 NamedBody143_33

def NamedBody143_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody143_34 NamedBody143_35

def NamedBody143_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody143_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody143_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody143_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody143_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody143_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody143_46 : StackLang.HolProg 64 :=
.seq NamedBody143_44 NamedBody143_45

def NamedBody143_47 : StackLang.HolProg 64 :=
.seq NamedBody143_43 NamedBody143_46

def NamedBody143_48 : StackLang.HolProg 64 :=
.seq NamedBody143_42 NamedBody143_47

def NamedBody143_49 : StackLang.HolProg 64 :=
.seq NamedBody143_41 NamedBody143_48

def NamedBody143_50 : StackLang.HolProg 64 :=
.seq NamedBody143_40 NamedBody143_49

def NamedBody143_51 : StackLang.HolProg 64 :=
.seq NamedBody143_39 NamedBody143_50

def NamedBody143_52 : StackLang.HolProg 64 :=
.seq NamedBody143_38 NamedBody143_51

def NamedBody143_53 : StackLang.HolProg 64 :=
.seq NamedBody143_37 NamedBody143_52

def NamedBody143_54 : StackLang.HolProg 64 :=
.seq NamedBody143_36 NamedBody143_53

def NamedBody143_55 : StackLang.HolProg 64 :=
.seq NamedBody143_19 NamedBody143_54

def NamedBody143_56 : StackLang.HolProg 64 :=
.seq NamedBody143_18 NamedBody143_55

def NamedBody143_57 : StackLang.HolProg 64 :=
.seq NamedBody143_17 NamedBody143_56

def NamedBody143_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_59 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody143_57 NamedBody143_58

def NamedBody143_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody143_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody143_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody143_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody143_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody143_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_68 : StackLang.HolProg 64 :=
.seq NamedBody143_66 NamedBody143_67

def NamedBody143_69 : StackLang.HolProg 64 :=
.seq NamedBody143_65 NamedBody143_68

def NamedBody143_70 : StackLang.HolProg 64 :=
.seq NamedBody143_64 NamedBody143_69

def NamedBody143_71 : StackLang.HolProg 64 :=
.seq NamedBody143_63 NamedBody143_70

def NamedBody143_72 : StackLang.HolProg 64 :=
.seq NamedBody143_62 NamedBody143_71

def NamedBody143_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 105#64)

def NamedBody143_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_76 : StackLang.HolProg 64 :=
.seq NamedBody143_74 NamedBody143_75

def NamedBody143_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody143_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody143_80 : StackLang.HolProg 64 :=
.seq NamedBody143_78 NamedBody143_79

def NamedBody143_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody143_80 NamedBody143_81

def NamedBody143_83 : StackLang.HolProg 64 :=
.seq NamedBody143_77 NamedBody143_82

def NamedBody143_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody143_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 3

def NamedBody143_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody143_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody143_93 : StackLang.HolProg 64 :=
.seq NamedBody143_91 NamedBody143_92

def NamedBody143_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody143_95 : StackLang.HolProg 64 :=
.seq NamedBody143_93 NamedBody143_94

def NamedBody143_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_97 : StackLang.HolProg 64 :=
.seq NamedBody143_95 NamedBody143_96

def NamedBody143_98 : StackLang.HolProg 64 :=
.seq NamedBody143_90 NamedBody143_97

def NamedBody143_99 : StackLang.HolProg 64 :=
.seq NamedBody143_89 NamedBody143_98

def NamedBody143_100 : StackLang.HolProg 64 :=
.seq NamedBody143_88 NamedBody143_99

def NamedBody143_101 : StackLang.HolProg 64 :=
.seq NamedBody143_87 NamedBody143_100

def NamedBody143_102 : StackLang.HolProg 64 :=
.seq NamedBody143_86 NamedBody143_101

def NamedBody143_103 : StackLang.HolProg 64 :=
.seq NamedBody143_85 NamedBody143_102

def NamedBody143_104 : StackLang.HolProg 64 :=
.seq NamedBody143_84 NamedBody143_103

def NamedBody143_105 : StackLang.HolProg 64 :=
.seq NamedBody143_83 NamedBody143_104

def NamedBody143_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody143_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_115 : StackLang.HolProg 64 :=
.seq NamedBody143_113 NamedBody143_114

def NamedBody143_116 : StackLang.HolProg 64 :=
.seq NamedBody143_112 NamedBody143_115

def NamedBody143_117 : StackLang.HolProg 64 :=
.seq NamedBody143_111 NamedBody143_116

def NamedBody143_118 : StackLang.HolProg 64 :=
.seq NamedBody143_110 NamedBody143_117

def NamedBody143_119 : StackLang.HolProg 64 :=
.seq NamedBody143_109 NamedBody143_118

def NamedBody143_120 : StackLang.HolProg 64 :=
.seq NamedBody143_108 NamedBody143_119

def NamedBody143_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_123 : StackLang.HolProg 64 :=
.seq NamedBody143_121 NamedBody143_122

def NamedBody143_124 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody143_125 : StackLang.HolProg 64 :=
.seq NamedBody143_123 NamedBody143_124

def NamedBody143_126 : StackLang.HolProg 64 :=
.call (some (NamedBody143_120, 1, 143, 2)) (Sum.inl 142) (some (NamedBody143_125, 143, 3))

def NamedBody143_127 : StackLang.HolProg 64 :=
.seq NamedBody143_107 NamedBody143_126

def NamedBody143_128 : StackLang.HolProg 64 :=
.seq NamedBody143_106 NamedBody143_127

def NamedBody143_129 : StackLang.HolProg 64 :=
.seq NamedBody143_105 NamedBody143_128

def NamedBody143_130 : StackLang.HolProg 64 :=
.seq NamedBody143_76 NamedBody143_129

def NamedBody143_131 : StackLang.HolProg 64 :=
.seq NamedBody143_73 NamedBody143_130

def NamedBody143_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody143_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody143_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 256#64)

def NamedBody143_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody143_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody143_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody143_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 18446744073709551615#64)

def NamedBody143_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 18446744073709551615#64)

def NamedBody143_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody143_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody143_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody143_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_153 : StackLang.HolProg 64 :=
.seq NamedBody143_151 NamedBody143_152

def NamedBody143_154 : StackLang.HolProg 64 :=
.seq NamedBody143_150 NamedBody143_153

def NamedBody143_155 : StackLang.HolProg 64 :=
.seq NamedBody143_149 NamedBody143_154

def NamedBody143_156 : StackLang.HolProg 64 :=
.seq NamedBody143_148 NamedBody143_155

def NamedBody143_157 : StackLang.HolProg 64 :=
.seq NamedBody143_147 NamedBody143_156

def NamedBody143_158 : StackLang.HolProg 64 :=
.seq NamedBody143_146 NamedBody143_157

def NamedBody143_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 106#64)

def NamedBody143_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_162 : StackLang.HolProg 64 :=
.seq NamedBody143_160 NamedBody143_161

def NamedBody143_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody143_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody143_166 : StackLang.HolProg 64 :=
.seq NamedBody143_164 NamedBody143_165

def NamedBody143_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_168 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody143_166 NamedBody143_167

def NamedBody143_169 : StackLang.HolProg 64 :=
.seq NamedBody143_163 NamedBody143_168

def NamedBody143_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody143_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 5

def NamedBody143_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody143_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody143_179 : StackLang.HolProg 64 :=
.seq NamedBody143_177 NamedBody143_178

def NamedBody143_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody143_181 : StackLang.HolProg 64 :=
.seq NamedBody143_179 NamedBody143_180

def NamedBody143_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_183 : StackLang.HolProg 64 :=
.seq NamedBody143_181 NamedBody143_182

def NamedBody143_184 : StackLang.HolProg 64 :=
.seq NamedBody143_176 NamedBody143_183

def NamedBody143_185 : StackLang.HolProg 64 :=
.seq NamedBody143_175 NamedBody143_184

def NamedBody143_186 : StackLang.HolProg 64 :=
.seq NamedBody143_174 NamedBody143_185

def NamedBody143_187 : StackLang.HolProg 64 :=
.seq NamedBody143_173 NamedBody143_186

def NamedBody143_188 : StackLang.HolProg 64 :=
.seq NamedBody143_172 NamedBody143_187

def NamedBody143_189 : StackLang.HolProg 64 :=
.seq NamedBody143_171 NamedBody143_188

def NamedBody143_190 : StackLang.HolProg 64 :=
.seq NamedBody143_170 NamedBody143_189

def NamedBody143_191 : StackLang.HolProg 64 :=
.seq NamedBody143_169 NamedBody143_190

def NamedBody143_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody143_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody143_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody143_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody143_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_206 : StackLang.HolProg 64 :=
.seq NamedBody143_204 NamedBody143_205

def NamedBody143_207 : StackLang.HolProg 64 :=
.seq NamedBody143_203 NamedBody143_206

def NamedBody143_208 : StackLang.HolProg 64 :=
.seq NamedBody143_202 NamedBody143_207

def NamedBody143_209 : StackLang.HolProg 64 :=
.seq NamedBody143_201 NamedBody143_208

def NamedBody143_210 : StackLang.HolProg 64 :=
.seq NamedBody143_200 NamedBody143_209

def NamedBody143_211 : StackLang.HolProg 64 :=
.seq NamedBody143_199 NamedBody143_210

def NamedBody143_212 : StackLang.HolProg 64 :=
.seq NamedBody143_198 NamedBody143_211

def NamedBody143_213 : StackLang.HolProg 64 :=
.seq NamedBody143_197 NamedBody143_212

def NamedBody143_214 : StackLang.HolProg 64 :=
.seq NamedBody143_196 NamedBody143_213

def NamedBody143_215 : StackLang.HolProg 64 :=
.seq NamedBody143_195 NamedBody143_214

def NamedBody143_216 : StackLang.HolProg 64 :=
.seq NamedBody143_194 NamedBody143_215

def NamedBody143_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody143_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody143_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_221 : StackLang.HolProg 64 :=
.seq NamedBody143_219 NamedBody143_220

def NamedBody143_222 : StackLang.HolProg 64 :=
.seq NamedBody143_218 NamedBody143_221

def NamedBody143_223 : StackLang.HolProg 64 :=
.seq NamedBody143_217 NamedBody143_222

def NamedBody143_224 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody143_225 : StackLang.HolProg 64 :=
.seq NamedBody143_223 NamedBody143_224

def NamedBody143_226 : StackLang.HolProg 64 :=
.call (some (NamedBody143_216, 1, 143, 4)) (Sum.inl 141) (some (NamedBody143_225, 143, 5))

def NamedBody143_227 : StackLang.HolProg 64 :=
.seq NamedBody143_193 NamedBody143_226

def NamedBody143_228 : StackLang.HolProg 64 :=
.seq NamedBody143_192 NamedBody143_227

def NamedBody143_229 : StackLang.HolProg 64 :=
.seq NamedBody143_191 NamedBody143_228

def NamedBody143_230 : StackLang.HolProg 64 :=
.seq NamedBody143_162 NamedBody143_229

def NamedBody143_231 : StackLang.HolProg 64 :=
.seq NamedBody143_159 NamedBody143_230

def NamedBody143_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody143_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 107#64)

def NamedBody143_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_237 : StackLang.HolProg 64 :=
.seq NamedBody143_235 NamedBody143_236

def NamedBody143_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody143_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody143_241 : StackLang.HolProg 64 :=
.seq NamedBody143_239 NamedBody143_240

def NamedBody143_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_243 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody143_241 NamedBody143_242

def NamedBody143_244 : StackLang.HolProg 64 :=
.seq NamedBody143_238 NamedBody143_243

def NamedBody143_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody143_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody143_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 143 7

def NamedBody143_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody143_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody143_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody143_254 : StackLang.HolProg 64 :=
.seq NamedBody143_252 NamedBody143_253

def NamedBody143_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody143_256 : StackLang.HolProg 64 :=
.seq NamedBody143_254 NamedBody143_255

def NamedBody143_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_258 : StackLang.HolProg 64 :=
.seq NamedBody143_256 NamedBody143_257

def NamedBody143_259 : StackLang.HolProg 64 :=
.seq NamedBody143_251 NamedBody143_258

def NamedBody143_260 : StackLang.HolProg 64 :=
.seq NamedBody143_250 NamedBody143_259

def NamedBody143_261 : StackLang.HolProg 64 :=
.seq NamedBody143_249 NamedBody143_260

def NamedBody143_262 : StackLang.HolProg 64 :=
.seq NamedBody143_248 NamedBody143_261

def NamedBody143_263 : StackLang.HolProg 64 :=
.seq NamedBody143_247 NamedBody143_262

def NamedBody143_264 : StackLang.HolProg 64 :=
.seq NamedBody143_246 NamedBody143_263

def NamedBody143_265 : StackLang.HolProg 64 :=
.seq NamedBody143_245 NamedBody143_264

def NamedBody143_266 : StackLang.HolProg 64 :=
.seq NamedBody143_244 NamedBody143_265

def NamedBody143_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody143_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody143_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody143_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody143_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody143_275 : StackLang.HolProg 64 :=
.seq NamedBody143_273 NamedBody143_274

def NamedBody143_276 : StackLang.HolProg 64 :=
.seq NamedBody143_272 NamedBody143_275

def NamedBody143_277 : StackLang.HolProg 64 :=
.seq NamedBody143_271 NamedBody143_276

def NamedBody143_278 : StackLang.HolProg 64 :=
.seq NamedBody143_270 NamedBody143_277

def NamedBody143_279 : StackLang.HolProg 64 :=
.seq NamedBody143_269 NamedBody143_278

def NamedBody143_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody143_281 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody143_282 : StackLang.HolProg 64 :=
.seq NamedBody143_280 NamedBody143_281

def NamedBody143_283 : StackLang.HolProg 64 :=
.call (some (NamedBody143_279, 1, 143, 6)) (Sum.inl 113) (some (NamedBody143_282, 143, 7))

def NamedBody143_284 : StackLang.HolProg 64 :=
.seq NamedBody143_268 NamedBody143_283

def NamedBody143_285 : StackLang.HolProg 64 :=
.seq NamedBody143_267 NamedBody143_284

def NamedBody143_286 : StackLang.HolProg 64 :=
.seq NamedBody143_266 NamedBody143_285

def NamedBody143_287 : StackLang.HolProg 64 :=
.seq NamedBody143_237 NamedBody143_286

def NamedBody143_288 : StackLang.HolProg 64 :=
.seq NamedBody143_234 NamedBody143_287

def NamedBody143_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_291 : StackLang.HolProg 64 :=
.seq NamedBody143_289 NamedBody143_290

def NamedBody143_292 : StackLang.HolProg 64 :=
.seq NamedBody143_288 NamedBody143_291

def NamedBody143_293 : StackLang.HolProg 64 :=
.seq NamedBody143_233 NamedBody143_292

def NamedBody143_294 : StackLang.HolProg 64 :=
.seq NamedBody143_232 NamedBody143_293

def NamedBody143_295 : StackLang.HolProg 64 :=
.seq NamedBody143_231 NamedBody143_294

def NamedBody143_296 : StackLang.HolProg 64 :=
.seq NamedBody143_158 NamedBody143_295

def NamedBody143_297 : StackLang.HolProg 64 :=
.seq NamedBody143_145 NamedBody143_296

def NamedBody143_298 : StackLang.HolProg 64 :=
.seq NamedBody143_144 NamedBody143_297

def NamedBody143_299 : StackLang.HolProg 64 :=
.seq NamedBody143_143 NamedBody143_298

def NamedBody143_300 : StackLang.HolProg 64 :=
.seq NamedBody143_142 NamedBody143_299

def NamedBody143_301 : StackLang.HolProg 64 :=
.seq NamedBody143_141 NamedBody143_300

def NamedBody143_302 : StackLang.HolProg 64 :=
.seq NamedBody143_140 NamedBody143_301

def NamedBody143_303 : StackLang.HolProg 64 :=
.seq NamedBody143_139 NamedBody143_302

def NamedBody143_304 : StackLang.HolProg 64 :=
.seq NamedBody143_138 NamedBody143_303

def NamedBody143_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody143_307 : StackLang.HolProg 64 :=
.seq NamedBody143_305 NamedBody143_306

def NamedBody143_308 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody143_304 NamedBody143_307

def NamedBody143_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody143_311 : StackLang.HolProg 64 :=
.seq NamedBody143_309 NamedBody143_310

def NamedBody143_312 : StackLang.HolProg 64 :=
.seq NamedBody143_308 NamedBody143_311

def NamedBody143_313 : StackLang.HolProg 64 :=
.seq NamedBody143_137 NamedBody143_312

def NamedBody143_314 : StackLang.HolProg 64 :=
.seq NamedBody143_136 NamedBody143_313

def NamedBody143_315 : StackLang.HolProg 64 :=
.seq NamedBody143_135 NamedBody143_314

def NamedBody143_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody143_318 : StackLang.HolProg 64 :=
.seq NamedBody143_316 NamedBody143_317

def NamedBody143_319 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody143_315 NamedBody143_318

def NamedBody143_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody143_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody143_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody143_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody143_324 : StackLang.HolProg 64 :=
.seq NamedBody143_322 NamedBody143_323

def NamedBody143_325 : StackLang.HolProg 64 :=
.seq NamedBody143_321 NamedBody143_324

def NamedBody143_326 : StackLang.HolProg 64 :=
.seq NamedBody143_320 NamedBody143_325

def NamedBody143_327 : StackLang.HolProg 64 :=
.seq NamedBody143_319 NamedBody143_326

def NamedBody143_328 : StackLang.HolProg 64 :=
.seq NamedBody143_134 NamedBody143_327

def NamedBody143_329 : StackLang.HolProg 64 :=
.seq NamedBody143_133 NamedBody143_328

def NamedBody143_330 : StackLang.HolProg 64 :=
.seq NamedBody143_132 NamedBody143_329

def NamedBody143_331 : StackLang.HolProg 64 :=
.seq NamedBody143_131 NamedBody143_330

def NamedBody143_332 : StackLang.HolProg 64 :=
.seq NamedBody143_72 NamedBody143_331

def NamedBody143_333 : StackLang.HolProg 64 :=
.seq NamedBody143_61 NamedBody143_332

def NamedBody143_334 : StackLang.HolProg 64 :=
.seq NamedBody143_60 NamedBody143_333

def NamedBody143_335 : StackLang.HolProg 64 :=
.seq NamedBody143_59 NamedBody143_334

def NamedBody143_336 : StackLang.HolProg 64 :=
.seq NamedBody143_16 NamedBody143_335

def NamedBody143_337 : StackLang.HolProg 64 :=
.seq NamedBody143_15 NamedBody143_336

def NamedBody143_338 : StackLang.HolProg 64 :=
.seq NamedBody143_14 NamedBody143_337

def NamedBody143_339 : StackLang.HolProg 64 :=
.seq NamedBody143_13 NamedBody143_338

def NamedBody143_340 : StackLang.HolProg 64 :=
.seq NamedBody143_6 NamedBody143_339

def Named143 : Nat × StackLang.HolProg 64 := (143, NamedBody143_340)
theorem Named143_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed143 = Named143 := by
  kernel_rfl
#print axioms Named143_eq
end InitECandidate.Proofs.BackendStages
