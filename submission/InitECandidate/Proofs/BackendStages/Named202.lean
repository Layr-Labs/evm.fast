import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed202
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody202_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody202_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody202_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody202_3 : StackLang.HolProg 64 :=
.seq NamedBody202_1 NamedBody202_2

def NamedBody202_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody202_3 NamedBody202_4

def NamedBody202_6 : StackLang.HolProg 64 :=
.seq NamedBody202_0 NamedBody202_5

def NamedBody202_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 252#64)

def NamedBody202_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody202_11 : StackLang.HolProg 64 :=
.seq NamedBody202_9 NamedBody202_10

def NamedBody202_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody202_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody202_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody202_15 : StackLang.HolProg 64 :=
.seq NamedBody202_13 NamedBody202_14

def NamedBody202_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody202_15 NamedBody202_16

def NamedBody202_18 : StackLang.HolProg 64 :=
.seq NamedBody202_12 NamedBody202_17

def NamedBody202_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody202_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody202_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 3

def NamedBody202_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody202_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody202_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody202_28 : StackLang.HolProg 64 :=
.seq NamedBody202_26 NamedBody202_27

def NamedBody202_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody202_30 : StackLang.HolProg 64 :=
.seq NamedBody202_28 NamedBody202_29

def NamedBody202_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_32 : StackLang.HolProg 64 :=
.seq NamedBody202_30 NamedBody202_31

def NamedBody202_33 : StackLang.HolProg 64 :=
.seq NamedBody202_25 NamedBody202_32

def NamedBody202_34 : StackLang.HolProg 64 :=
.seq NamedBody202_24 NamedBody202_33

def NamedBody202_35 : StackLang.HolProg 64 :=
.seq NamedBody202_23 NamedBody202_34

def NamedBody202_36 : StackLang.HolProg 64 :=
.seq NamedBody202_22 NamedBody202_35

def NamedBody202_37 : StackLang.HolProg 64 :=
.seq NamedBody202_21 NamedBody202_36

def NamedBody202_38 : StackLang.HolProg 64 :=
.seq NamedBody202_20 NamedBody202_37

def NamedBody202_39 : StackLang.HolProg 64 :=
.seq NamedBody202_19 NamedBody202_38

def NamedBody202_40 : StackLang.HolProg 64 :=
.seq NamedBody202_18 NamedBody202_39

def NamedBody202_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody202_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody202_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_49 : StackLang.HolProg 64 :=
.seq NamedBody202_47 NamedBody202_48

def NamedBody202_50 : StackLang.HolProg 64 :=
.seq NamedBody202_46 NamedBody202_49

def NamedBody202_51 : StackLang.HolProg 64 :=
.seq NamedBody202_45 NamedBody202_50

def NamedBody202_52 : StackLang.HolProg 64 :=
.seq NamedBody202_44 NamedBody202_51

def NamedBody202_53 : StackLang.HolProg 64 :=
.seq NamedBody202_43 NamedBody202_52

def NamedBody202_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody202_56 : StackLang.HolProg 64 :=
.seq NamedBody202_54 NamedBody202_55

def NamedBody202_57 : StackLang.HolProg 64 :=
.call (some (NamedBody202_53, 1, 202, 2)) (Sum.inl 115) (some (NamedBody202_56, 202, 3))

def NamedBody202_58 : StackLang.HolProg 64 :=
.seq NamedBody202_42 NamedBody202_57

def NamedBody202_59 : StackLang.HolProg 64 :=
.seq NamedBody202_41 NamedBody202_58

def NamedBody202_60 : StackLang.HolProg 64 :=
.seq NamedBody202_40 NamedBody202_59

def NamedBody202_61 : StackLang.HolProg 64 :=
.seq NamedBody202_11 NamedBody202_60

def NamedBody202_62 : StackLang.HolProg 64 :=
.seq NamedBody202_8 NamedBody202_61

def NamedBody202_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody202_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody202_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody202_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody202_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody202_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody202_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody202_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody202_76 : StackLang.HolProg 64 :=
.seq NamedBody202_74 NamedBody202_75

def NamedBody202_77 : StackLang.HolProg 64 :=
.seq NamedBody202_73 NamedBody202_76

def NamedBody202_78 : StackLang.HolProg 64 :=
.seq NamedBody202_72 NamedBody202_77

def NamedBody202_79 : StackLang.HolProg 64 :=
.seq NamedBody202_71 NamedBody202_78

def NamedBody202_80 : StackLang.HolProg 64 :=
.seq NamedBody202_70 NamedBody202_79

def NamedBody202_81 : StackLang.HolProg 64 :=
.seq NamedBody202_69 NamedBody202_80

def NamedBody202_82 : StackLang.HolProg 64 :=
.seq NamedBody202_68 NamedBody202_81

def NamedBody202_83 : StackLang.HolProg 64 :=
.seq NamedBody202_67 NamedBody202_82

def NamedBody202_84 : StackLang.HolProg 64 :=
.seq NamedBody202_66 NamedBody202_83

def NamedBody202_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody202_84 NamedBody202_85

def NamedBody202_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody202_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody202_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody202_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody202_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody202_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody202_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody202_99 : StackLang.HolProg 64 :=
.seq NamedBody202_97 NamedBody202_98

def NamedBody202_100 : StackLang.HolProg 64 :=
.seq NamedBody202_96 NamedBody202_99

def NamedBody202_101 : StackLang.HolProg 64 :=
.seq NamedBody202_95 NamedBody202_100

def NamedBody202_102 : StackLang.HolProg 64 :=
.seq NamedBody202_94 NamedBody202_101

def NamedBody202_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 253#64)

def NamedBody202_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody202_106 : StackLang.HolProg 64 :=
.seq NamedBody202_104 NamedBody202_105

def NamedBody202_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody202_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody202_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody202_110 : StackLang.HolProg 64 :=
.seq NamedBody202_108 NamedBody202_109

def NamedBody202_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_112 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody202_110 NamedBody202_111

def NamedBody202_113 : StackLang.HolProg 64 :=
.seq NamedBody202_107 NamedBody202_112

def NamedBody202_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody202_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody202_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 202 5

def NamedBody202_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody202_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody202_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody202_123 : StackLang.HolProg 64 :=
.seq NamedBody202_121 NamedBody202_122

def NamedBody202_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody202_125 : StackLang.HolProg 64 :=
.seq NamedBody202_123 NamedBody202_124

def NamedBody202_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_127 : StackLang.HolProg 64 :=
.seq NamedBody202_125 NamedBody202_126

def NamedBody202_128 : StackLang.HolProg 64 :=
.seq NamedBody202_120 NamedBody202_127

def NamedBody202_129 : StackLang.HolProg 64 :=
.seq NamedBody202_119 NamedBody202_128

def NamedBody202_130 : StackLang.HolProg 64 :=
.seq NamedBody202_118 NamedBody202_129

def NamedBody202_131 : StackLang.HolProg 64 :=
.seq NamedBody202_117 NamedBody202_130

def NamedBody202_132 : StackLang.HolProg 64 :=
.seq NamedBody202_116 NamedBody202_131

def NamedBody202_133 : StackLang.HolProg 64 :=
.seq NamedBody202_115 NamedBody202_132

def NamedBody202_134 : StackLang.HolProg 64 :=
.seq NamedBody202_114 NamedBody202_133

def NamedBody202_135 : StackLang.HolProg 64 :=
.seq NamedBody202_113 NamedBody202_134

def NamedBody202_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody202_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody202_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody202_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody202_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody202_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody202_148 : StackLang.HolProg 64 :=
.seq NamedBody202_146 NamedBody202_147

def NamedBody202_149 : StackLang.HolProg 64 :=
.seq NamedBody202_145 NamedBody202_148

def NamedBody202_150 : StackLang.HolProg 64 :=
.seq NamedBody202_144 NamedBody202_149

def NamedBody202_151 : StackLang.HolProg 64 :=
.seq NamedBody202_143 NamedBody202_150

def NamedBody202_152 : StackLang.HolProg 64 :=
.seq NamedBody202_142 NamedBody202_151

def NamedBody202_153 : StackLang.HolProg 64 :=
.seq NamedBody202_141 NamedBody202_152

def NamedBody202_154 : StackLang.HolProg 64 :=
.seq NamedBody202_140 NamedBody202_153

def NamedBody202_155 : StackLang.HolProg 64 :=
.seq NamedBody202_139 NamedBody202_154

def NamedBody202_156 : StackLang.HolProg 64 :=
.seq NamedBody202_138 NamedBody202_155

def NamedBody202_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody202_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody202_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody202_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody202_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody202_162 : StackLang.HolProg 64 :=
.seq NamedBody202_160 NamedBody202_161

def NamedBody202_163 : StackLang.HolProg 64 :=
.seq NamedBody202_159 NamedBody202_162

def NamedBody202_164 : StackLang.HolProg 64 :=
.seq NamedBody202_158 NamedBody202_163

def NamedBody202_165 : StackLang.HolProg 64 :=
.seq NamedBody202_157 NamedBody202_164

def NamedBody202_166 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody202_167 : StackLang.HolProg 64 :=
.seq NamedBody202_165 NamedBody202_166

def NamedBody202_168 : StackLang.HolProg 64 :=
.call (some (NamedBody202_156, 1, 202, 4)) (Sum.inl 106) (some (NamedBody202_167, 202, 5))

def NamedBody202_169 : StackLang.HolProg 64 :=
.seq NamedBody202_137 NamedBody202_168

def NamedBody202_170 : StackLang.HolProg 64 :=
.seq NamedBody202_136 NamedBody202_169

def NamedBody202_171 : StackLang.HolProg 64 :=
.seq NamedBody202_135 NamedBody202_170

def NamedBody202_172 : StackLang.HolProg 64 :=
.seq NamedBody202_106 NamedBody202_171

def NamedBody202_173 : StackLang.HolProg 64 :=
.seq NamedBody202_103 NamedBody202_172

def NamedBody202_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody202_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody202_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 18446744073709551615#64)

def NamedBody202_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 18446744073709551615#64)

def NamedBody202_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 18446744073709551615#64)

def NamedBody202_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 18446744069414583343#64)

def NamedBody202_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody202_186 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 117

def NamedBody202_187 : StackLang.HolProg 64 :=
.seq NamedBody202_185 NamedBody202_186

def NamedBody202_188 : StackLang.HolProg 64 :=
.seq NamedBody202_184 NamedBody202_187

def NamedBody202_189 : StackLang.HolProg 64 :=
.seq NamedBody202_183 NamedBody202_188

def NamedBody202_190 : StackLang.HolProg 64 :=
.seq NamedBody202_182 NamedBody202_189

def NamedBody202_191 : StackLang.HolProg 64 :=
.seq NamedBody202_181 NamedBody202_190

def NamedBody202_192 : StackLang.HolProg 64 :=
.seq NamedBody202_180 NamedBody202_191

def NamedBody202_193 : StackLang.HolProg 64 :=
.seq NamedBody202_179 NamedBody202_192

def NamedBody202_194 : StackLang.HolProg 64 :=
.seq NamedBody202_178 NamedBody202_193

def NamedBody202_195 : StackLang.HolProg 64 :=
.seq NamedBody202_177 NamedBody202_194

def NamedBody202_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody202_197 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody202_195 NamedBody202_196

def NamedBody202_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody202_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody202_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody202_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody202_203 : StackLang.HolProg 64 :=
.seq NamedBody202_201 NamedBody202_202

def NamedBody202_204 : StackLang.HolProg 64 :=
.seq NamedBody202_200 NamedBody202_203

def NamedBody202_205 : StackLang.HolProg 64 :=
.seq NamedBody202_199 NamedBody202_204

def NamedBody202_206 : StackLang.HolProg 64 :=
.seq NamedBody202_198 NamedBody202_205

def NamedBody202_207 : StackLang.HolProg 64 :=
.seq NamedBody202_197 NamedBody202_206

def NamedBody202_208 : StackLang.HolProg 64 :=
.seq NamedBody202_176 NamedBody202_207

def NamedBody202_209 : StackLang.HolProg 64 :=
.seq NamedBody202_175 NamedBody202_208

def NamedBody202_210 : StackLang.HolProg 64 :=
.seq NamedBody202_174 NamedBody202_209

def NamedBody202_211 : StackLang.HolProg 64 :=
.seq NamedBody202_173 NamedBody202_210

def NamedBody202_212 : StackLang.HolProg 64 :=
.seq NamedBody202_102 NamedBody202_211

def NamedBody202_213 : StackLang.HolProg 64 :=
.seq NamedBody202_93 NamedBody202_212

def NamedBody202_214 : StackLang.HolProg 64 :=
.seq NamedBody202_92 NamedBody202_213

def NamedBody202_215 : StackLang.HolProg 64 :=
.seq NamedBody202_91 NamedBody202_214

def NamedBody202_216 : StackLang.HolProg 64 :=
.seq NamedBody202_90 NamedBody202_215

def NamedBody202_217 : StackLang.HolProg 64 :=
.seq NamedBody202_89 NamedBody202_216

def NamedBody202_218 : StackLang.HolProg 64 :=
.seq NamedBody202_88 NamedBody202_217

def NamedBody202_219 : StackLang.HolProg 64 :=
.seq NamedBody202_87 NamedBody202_218

def NamedBody202_220 : StackLang.HolProg 64 :=
.seq NamedBody202_86 NamedBody202_219

def NamedBody202_221 : StackLang.HolProg 64 :=
.seq NamedBody202_65 NamedBody202_220

def NamedBody202_222 : StackLang.HolProg 64 :=
.seq NamedBody202_64 NamedBody202_221

def NamedBody202_223 : StackLang.HolProg 64 :=
.seq NamedBody202_63 NamedBody202_222

def NamedBody202_224 : StackLang.HolProg 64 :=
.seq NamedBody202_62 NamedBody202_223

def NamedBody202_225 : StackLang.HolProg 64 :=
.seq NamedBody202_7 NamedBody202_224

def NamedBody202_226 : StackLang.HolProg 64 :=
.seq NamedBody202_6 NamedBody202_225

def Named202 : Nat × StackLang.HolProg 64 := (202, NamedBody202_226)
theorem Named202_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed202 = Named202 := by
  kernel_rfl
#print axioms Named202_eq
end InitECandidate.Proofs.BackendStages
