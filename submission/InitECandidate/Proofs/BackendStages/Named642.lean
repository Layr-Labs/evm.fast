import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed642
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody642_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody642_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody642_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody642_3 : StackLang.HolProg 64 :=
.seq NamedBody642_1 NamedBody642_2

def NamedBody642_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody642_3 NamedBody642_4

def NamedBody642_6 : StackLang.HolProg 64 :=
.seq NamedBody642_0 NamedBody642_5

def NamedBody642_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2619#64)

def NamedBody642_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody642_11 : StackLang.HolProg 64 :=
.seq NamedBody642_9 NamedBody642_10

def NamedBody642_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody642_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody642_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody642_15 : StackLang.HolProg 64 :=
.seq NamedBody642_13 NamedBody642_14

def NamedBody642_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody642_15 NamedBody642_16

def NamedBody642_18 : StackLang.HolProg 64 :=
.seq NamedBody642_12 NamedBody642_17

def NamedBody642_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody642_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody642_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 3

def NamedBody642_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody642_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody642_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody642_28 : StackLang.HolProg 64 :=
.seq NamedBody642_26 NamedBody642_27

def NamedBody642_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody642_30 : StackLang.HolProg 64 :=
.seq NamedBody642_28 NamedBody642_29

def NamedBody642_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_32 : StackLang.HolProg 64 :=
.seq NamedBody642_30 NamedBody642_31

def NamedBody642_33 : StackLang.HolProg 64 :=
.seq NamedBody642_25 NamedBody642_32

def NamedBody642_34 : StackLang.HolProg 64 :=
.seq NamedBody642_24 NamedBody642_33

def NamedBody642_35 : StackLang.HolProg 64 :=
.seq NamedBody642_23 NamedBody642_34

def NamedBody642_36 : StackLang.HolProg 64 :=
.seq NamedBody642_22 NamedBody642_35

def NamedBody642_37 : StackLang.HolProg 64 :=
.seq NamedBody642_21 NamedBody642_36

def NamedBody642_38 : StackLang.HolProg 64 :=
.seq NamedBody642_20 NamedBody642_37

def NamedBody642_39 : StackLang.HolProg 64 :=
.seq NamedBody642_19 NamedBody642_38

def NamedBody642_40 : StackLang.HolProg 64 :=
.seq NamedBody642_18 NamedBody642_39

def NamedBody642_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody642_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody642_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_49 : StackLang.HolProg 64 :=
.seq NamedBody642_47 NamedBody642_48

def NamedBody642_50 : StackLang.HolProg 64 :=
.seq NamedBody642_46 NamedBody642_49

def NamedBody642_51 : StackLang.HolProg 64 :=
.seq NamedBody642_45 NamedBody642_50

def NamedBody642_52 : StackLang.HolProg 64 :=
.seq NamedBody642_44 NamedBody642_51

def NamedBody642_53 : StackLang.HolProg 64 :=
.seq NamedBody642_43 NamedBody642_52

def NamedBody642_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody642_56 : StackLang.HolProg 64 :=
.seq NamedBody642_54 NamedBody642_55

def NamedBody642_57 : StackLang.HolProg 64 :=
.call (some (NamedBody642_53, 1, 642, 2)) (Sum.inl 115) (some (NamedBody642_56, 642, 3))

def NamedBody642_58 : StackLang.HolProg 64 :=
.seq NamedBody642_42 NamedBody642_57

def NamedBody642_59 : StackLang.HolProg 64 :=
.seq NamedBody642_41 NamedBody642_58

def NamedBody642_60 : StackLang.HolProg 64 :=
.seq NamedBody642_40 NamedBody642_59

def NamedBody642_61 : StackLang.HolProg 64 :=
.seq NamedBody642_11 NamedBody642_60

def NamedBody642_62 : StackLang.HolProg 64 :=
.seq NamedBody642_8 NamedBody642_61

def NamedBody642_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody642_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody642_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody642_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody642_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody642_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody642_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody642_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody642_76 : StackLang.HolProg 64 :=
.seq NamedBody642_74 NamedBody642_75

def NamedBody642_77 : StackLang.HolProg 64 :=
.seq NamedBody642_73 NamedBody642_76

def NamedBody642_78 : StackLang.HolProg 64 :=
.seq NamedBody642_72 NamedBody642_77

def NamedBody642_79 : StackLang.HolProg 64 :=
.seq NamedBody642_71 NamedBody642_78

def NamedBody642_80 : StackLang.HolProg 64 :=
.seq NamedBody642_70 NamedBody642_79

def NamedBody642_81 : StackLang.HolProg 64 :=
.seq NamedBody642_69 NamedBody642_80

def NamedBody642_82 : StackLang.HolProg 64 :=
.seq NamedBody642_68 NamedBody642_81

def NamedBody642_83 : StackLang.HolProg 64 :=
.seq NamedBody642_67 NamedBody642_82

def NamedBody642_84 : StackLang.HolProg 64 :=
.seq NamedBody642_66 NamedBody642_83

def NamedBody642_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody642_84 NamedBody642_85

def NamedBody642_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody642_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody642_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody642_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody642_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody642_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody642_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody642_99 : StackLang.HolProg 64 :=
.seq NamedBody642_97 NamedBody642_98

def NamedBody642_100 : StackLang.HolProg 64 :=
.seq NamedBody642_96 NamedBody642_99

def NamedBody642_101 : StackLang.HolProg 64 :=
.seq NamedBody642_95 NamedBody642_100

def NamedBody642_102 : StackLang.HolProg 64 :=
.seq NamedBody642_94 NamedBody642_101

def NamedBody642_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2620#64)

def NamedBody642_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody642_106 : StackLang.HolProg 64 :=
.seq NamedBody642_104 NamedBody642_105

def NamedBody642_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody642_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody642_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody642_110 : StackLang.HolProg 64 :=
.seq NamedBody642_108 NamedBody642_109

def NamedBody642_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody642_110 NamedBody642_111

def NamedBody642_113 : StackLang.HolProg 64 :=
.seq NamedBody642_107 NamedBody642_112

def NamedBody642_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody642_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody642_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 642 5

def NamedBody642_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody642_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody642_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody642_123 : StackLang.HolProg 64 :=
.seq NamedBody642_121 NamedBody642_122

def NamedBody642_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody642_125 : StackLang.HolProg 64 :=
.seq NamedBody642_123 NamedBody642_124

def NamedBody642_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_127 : StackLang.HolProg 64 :=
.seq NamedBody642_125 NamedBody642_126

def NamedBody642_128 : StackLang.HolProg 64 :=
.seq NamedBody642_120 NamedBody642_127

def NamedBody642_129 : StackLang.HolProg 64 :=
.seq NamedBody642_119 NamedBody642_128

def NamedBody642_130 : StackLang.HolProg 64 :=
.seq NamedBody642_118 NamedBody642_129

def NamedBody642_131 : StackLang.HolProg 64 :=
.seq NamedBody642_117 NamedBody642_130

def NamedBody642_132 : StackLang.HolProg 64 :=
.seq NamedBody642_116 NamedBody642_131

def NamedBody642_133 : StackLang.HolProg 64 :=
.seq NamedBody642_115 NamedBody642_132

def NamedBody642_134 : StackLang.HolProg 64 :=
.seq NamedBody642_114 NamedBody642_133

def NamedBody642_135 : StackLang.HolProg 64 :=
.seq NamedBody642_113 NamedBody642_134

def NamedBody642_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody642_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody642_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody642_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody642_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody642_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody642_148 : StackLang.HolProg 64 :=
.seq NamedBody642_146 NamedBody642_147

def NamedBody642_149 : StackLang.HolProg 64 :=
.seq NamedBody642_145 NamedBody642_148

def NamedBody642_150 : StackLang.HolProg 64 :=
.seq NamedBody642_144 NamedBody642_149

def NamedBody642_151 : StackLang.HolProg 64 :=
.seq NamedBody642_143 NamedBody642_150

def NamedBody642_152 : StackLang.HolProg 64 :=
.seq NamedBody642_142 NamedBody642_151

def NamedBody642_153 : StackLang.HolProg 64 :=
.seq NamedBody642_141 NamedBody642_152

def NamedBody642_154 : StackLang.HolProg 64 :=
.seq NamedBody642_140 NamedBody642_153

def NamedBody642_155 : StackLang.HolProg 64 :=
.seq NamedBody642_139 NamedBody642_154

def NamedBody642_156 : StackLang.HolProg 64 :=
.seq NamedBody642_138 NamedBody642_155

def NamedBody642_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody642_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody642_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody642_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody642_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody642_162 : StackLang.HolProg 64 :=
.seq NamedBody642_160 NamedBody642_161

def NamedBody642_163 : StackLang.HolProg 64 :=
.seq NamedBody642_159 NamedBody642_162

def NamedBody642_164 : StackLang.HolProg 64 :=
.seq NamedBody642_158 NamedBody642_163

def NamedBody642_165 : StackLang.HolProg 64 :=
.seq NamedBody642_157 NamedBody642_164

def NamedBody642_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody642_167 : StackLang.HolProg 64 :=
.seq NamedBody642_165 NamedBody642_166

def NamedBody642_168 : StackLang.HolProg 64 :=
.call (some (NamedBody642_156, 1, 642, 4)) (Sum.inl 106) (some (NamedBody642_167, 642, 5))

def NamedBody642_169 : StackLang.HolProg 64 :=
.seq NamedBody642_137 NamedBody642_168

def NamedBody642_170 : StackLang.HolProg 64 :=
.seq NamedBody642_136 NamedBody642_169

def NamedBody642_171 : StackLang.HolProg 64 :=
.seq NamedBody642_135 NamedBody642_170

def NamedBody642_172 : StackLang.HolProg 64 :=
.seq NamedBody642_106 NamedBody642_171

def NamedBody642_173 : StackLang.HolProg 64 :=
.seq NamedBody642_103 NamedBody642_172

def NamedBody642_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody642_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody642_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744069414584321#64)

def NamedBody642_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody642_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def NamedBody642_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744073709551615#64)

def NamedBody642_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody642_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody642_187 : StackLang.HolProg 64 :=
.seq NamedBody642_185 NamedBody642_186

def NamedBody642_188 : StackLang.HolProg 64 :=
.seq NamedBody642_184 NamedBody642_187

def NamedBody642_189 : StackLang.HolProg 64 :=
.seq NamedBody642_183 NamedBody642_188

def NamedBody642_190 : StackLang.HolProg 64 :=
.seq NamedBody642_182 NamedBody642_189

def NamedBody642_191 : StackLang.HolProg 64 :=
.seq NamedBody642_181 NamedBody642_190

def NamedBody642_192 : StackLang.HolProg 64 :=
.seq NamedBody642_180 NamedBody642_191

def NamedBody642_193 : StackLang.HolProg 64 :=
.seq NamedBody642_179 NamedBody642_192

def NamedBody642_194 : StackLang.HolProg 64 :=
.seq NamedBody642_178 NamedBody642_193

def NamedBody642_195 : StackLang.HolProg 64 :=
.seq NamedBody642_177 NamedBody642_194

def NamedBody642_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody642_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody642_195 NamedBody642_196

def NamedBody642_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody642_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody642_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody642_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody642_203 : StackLang.HolProg 64 :=
.seq NamedBody642_201 NamedBody642_202

def NamedBody642_204 : StackLang.HolProg 64 :=
.seq NamedBody642_200 NamedBody642_203

def NamedBody642_205 : StackLang.HolProg 64 :=
.seq NamedBody642_199 NamedBody642_204

def NamedBody642_206 : StackLang.HolProg 64 :=
.seq NamedBody642_198 NamedBody642_205

def NamedBody642_207 : StackLang.HolProg 64 :=
.seq NamedBody642_197 NamedBody642_206

def NamedBody642_208 : StackLang.HolProg 64 :=
.seq NamedBody642_176 NamedBody642_207

def NamedBody642_209 : StackLang.HolProg 64 :=
.seq NamedBody642_175 NamedBody642_208

def NamedBody642_210 : StackLang.HolProg 64 :=
.seq NamedBody642_174 NamedBody642_209

def NamedBody642_211 : StackLang.HolProg 64 :=
.seq NamedBody642_173 NamedBody642_210

def NamedBody642_212 : StackLang.HolProg 64 :=
.seq NamedBody642_102 NamedBody642_211

def NamedBody642_213 : StackLang.HolProg 64 :=
.seq NamedBody642_93 NamedBody642_212

def NamedBody642_214 : StackLang.HolProg 64 :=
.seq NamedBody642_92 NamedBody642_213

def NamedBody642_215 : StackLang.HolProg 64 :=
.seq NamedBody642_91 NamedBody642_214

def NamedBody642_216 : StackLang.HolProg 64 :=
.seq NamedBody642_90 NamedBody642_215

def NamedBody642_217 : StackLang.HolProg 64 :=
.seq NamedBody642_89 NamedBody642_216

def NamedBody642_218 : StackLang.HolProg 64 :=
.seq NamedBody642_88 NamedBody642_217

def NamedBody642_219 : StackLang.HolProg 64 :=
.seq NamedBody642_87 NamedBody642_218

def NamedBody642_220 : StackLang.HolProg 64 :=
.seq NamedBody642_86 NamedBody642_219

def NamedBody642_221 : StackLang.HolProg 64 :=
.seq NamedBody642_65 NamedBody642_220

def NamedBody642_222 : StackLang.HolProg 64 :=
.seq NamedBody642_64 NamedBody642_221

def NamedBody642_223 : StackLang.HolProg 64 :=
.seq NamedBody642_63 NamedBody642_222

def NamedBody642_224 : StackLang.HolProg 64 :=
.seq NamedBody642_62 NamedBody642_223

def NamedBody642_225 : StackLang.HolProg 64 :=
.seq NamedBody642_7 NamedBody642_224

def NamedBody642_226 : StackLang.HolProg 64 :=
.seq NamedBody642_6 NamedBody642_225

def Named642 : Nat × StackLang.HolProg 64 := (642, NamedBody642_226)
theorem Named642_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed642 = Named642 := by
  kernel_rfl
#print axioms Named642_eq
end InitECandidate.Proofs.BackendStages
