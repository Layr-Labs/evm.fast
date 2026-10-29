import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed607
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody607_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody607_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_3 : StackLang.HolProg 64 :=
.seq NamedBody607_1 NamedBody607_2

def NamedBody607_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_3 NamedBody607_4

def NamedBody607_6 : StackLang.HolProg 64 :=
.seq NamedBody607_0 NamedBody607_5

def NamedBody607_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody607_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 120#64))

def NamedBody607_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 128#64))

def NamedBody607_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody607_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody607_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 239#64)

def NamedBody607_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 11#64)

def NamedBody607_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody607_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody607_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_24 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_25 : StackLang.HolProg 64 :=
.seq NamedBody607_23 NamedBody607_24

def NamedBody607_26 : StackLang.HolProg 64 :=
.seq NamedBody607_22 NamedBody607_25

def NamedBody607_27 : StackLang.HolProg 64 :=
.seq NamedBody607_21 NamedBody607_26

def NamedBody607_28 : StackLang.HolProg 64 :=
.seq NamedBody607_20 NamedBody607_27

def NamedBody607_29 : StackLang.HolProg 64 :=
.seq NamedBody607_19 NamedBody607_28

def NamedBody607_30 : StackLang.HolProg 64 :=
.seq NamedBody607_18 NamedBody607_29

def NamedBody607_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_32 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody607_30 NamedBody607_31

def NamedBody607_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_36 : StackLang.HolProg 64 :=
.seq NamedBody607_34 NamedBody607_35

def NamedBody607_37 : StackLang.HolProg 64 :=
.seq NamedBody607_33 NamedBody607_36

def NamedBody607_38 : StackLang.HolProg 64 :=
.seq NamedBody607_32 NamedBody607_37

def NamedBody607_39 : StackLang.HolProg 64 :=
.seq NamedBody607_17 NamedBody607_38

def NamedBody607_40 : StackLang.HolProg 64 :=
.seq NamedBody607_16 NamedBody607_39

def NamedBody607_41 : StackLang.HolProg 64 :=
.seq NamedBody607_15 NamedBody607_40

def NamedBody607_42 : StackLang.HolProg 64 :=
.seq NamedBody607_14 NamedBody607_41

def NamedBody607_43 : StackLang.HolProg 64 :=
.seq NamedBody607_13 NamedBody607_42

def NamedBody607_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_46 : StackLang.HolProg 64 :=
.seq NamedBody607_44 NamedBody607_45

def NamedBody607_47 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody607_43 NamedBody607_46

def NamedBody607_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 65536#64)

def NamedBody607_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 4#64)

def NamedBody607_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def NamedBody607_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody607_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_58 : StackLang.HolProg 64 :=
.seq NamedBody607_56 NamedBody607_57

def NamedBody607_59 : StackLang.HolProg 64 :=
.seq NamedBody607_55 NamedBody607_58

def NamedBody607_60 : StackLang.HolProg 64 :=
.seq NamedBody607_54 NamedBody607_59

def NamedBody607_61 : StackLang.HolProg 64 :=
.seq NamedBody607_53 NamedBody607_60

def NamedBody607_62 : StackLang.HolProg 64 :=
.seq NamedBody607_52 NamedBody607_61

def NamedBody607_63 : StackLang.HolProg 64 :=
.seq NamedBody607_51 NamedBody607_62

def NamedBody607_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_65 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 10 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody607_63 NamedBody607_64

def NamedBody607_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody607_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody607_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_72 : StackLang.HolProg 64 :=
.seq NamedBody607_70 NamedBody607_71

def NamedBody607_73 : StackLang.HolProg 64 :=
.seq NamedBody607_69 NamedBody607_72

def NamedBody607_74 : StackLang.HolProg 64 :=
.seq NamedBody607_68 NamedBody607_73

def NamedBody607_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2329#64)

def NamedBody607_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_78 : StackLang.HolProg 64 :=
.seq NamedBody607_76 NamedBody607_77

def NamedBody607_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_82 : StackLang.HolProg 64 :=
.seq NamedBody607_80 NamedBody607_81

def NamedBody607_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_84 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_82 NamedBody607_83

def NamedBody607_85 : StackLang.HolProg 64 :=
.seq NamedBody607_79 NamedBody607_84

def NamedBody607_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 3

def NamedBody607_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_95 : StackLang.HolProg 64 :=
.seq NamedBody607_93 NamedBody607_94

def NamedBody607_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_97 : StackLang.HolProg 64 :=
.seq NamedBody607_95 NamedBody607_96

def NamedBody607_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_99 : StackLang.HolProg 64 :=
.seq NamedBody607_97 NamedBody607_98

def NamedBody607_100 : StackLang.HolProg 64 :=
.seq NamedBody607_92 NamedBody607_99

def NamedBody607_101 : StackLang.HolProg 64 :=
.seq NamedBody607_91 NamedBody607_100

def NamedBody607_102 : StackLang.HolProg 64 :=
.seq NamedBody607_90 NamedBody607_101

def NamedBody607_103 : StackLang.HolProg 64 :=
.seq NamedBody607_89 NamedBody607_102

def NamedBody607_104 : StackLang.HolProg 64 :=
.seq NamedBody607_88 NamedBody607_103

def NamedBody607_105 : StackLang.HolProg 64 :=
.seq NamedBody607_87 NamedBody607_104

def NamedBody607_106 : StackLang.HolProg 64 :=
.seq NamedBody607_86 NamedBody607_105

def NamedBody607_107 : StackLang.HolProg 64 :=
.seq NamedBody607_85 NamedBody607_106

def NamedBody607_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody607_115 : StackLang.HolProg 64 :=
.seq NamedBody607_113 NamedBody607_114

def NamedBody607_116 : StackLang.HolProg 64 :=
.seq NamedBody607_112 NamedBody607_115

def NamedBody607_117 : StackLang.HolProg 64 :=
.seq NamedBody607_111 NamedBody607_116

def NamedBody607_118 : StackLang.HolProg 64 :=
.seq NamedBody607_110 NamedBody607_117

def NamedBody607_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_120 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_121 : StackLang.HolProg 64 :=
.seq NamedBody607_119 NamedBody607_120

def NamedBody607_122 : StackLang.HolProg 64 :=
.call (some (NamedBody607_118, 1, 607, 2)) (Sum.inl 465) (some (NamedBody607_121, 607, 3))

def NamedBody607_123 : StackLang.HolProg 64 :=
.seq NamedBody607_109 NamedBody607_122

def NamedBody607_124 : StackLang.HolProg 64 :=
.seq NamedBody607_108 NamedBody607_123

def NamedBody607_125 : StackLang.HolProg 64 :=
.seq NamedBody607_107 NamedBody607_124

def NamedBody607_126 : StackLang.HolProg 64 :=
.seq NamedBody607_78 NamedBody607_125

def NamedBody607_127 : StackLang.HolProg 64 :=
.seq NamedBody607_75 NamedBody607_126

def NamedBody607_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 6#64)

def NamedBody607_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody607_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody607_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2330#64)

def NamedBody607_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_137 : StackLang.HolProg 64 :=
.seq NamedBody607_135 NamedBody607_136

def NamedBody607_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_141 : StackLang.HolProg 64 :=
.seq NamedBody607_139 NamedBody607_140

def NamedBody607_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_143 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_141 NamedBody607_142

def NamedBody607_144 : StackLang.HolProg 64 :=
.seq NamedBody607_138 NamedBody607_143

def NamedBody607_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 5

def NamedBody607_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_154 : StackLang.HolProg 64 :=
.seq NamedBody607_152 NamedBody607_153

def NamedBody607_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_156 : StackLang.HolProg 64 :=
.seq NamedBody607_154 NamedBody607_155

def NamedBody607_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_158 : StackLang.HolProg 64 :=
.seq NamedBody607_156 NamedBody607_157

def NamedBody607_159 : StackLang.HolProg 64 :=
.seq NamedBody607_151 NamedBody607_158

def NamedBody607_160 : StackLang.HolProg 64 :=
.seq NamedBody607_150 NamedBody607_159

def NamedBody607_161 : StackLang.HolProg 64 :=
.seq NamedBody607_149 NamedBody607_160

def NamedBody607_162 : StackLang.HolProg 64 :=
.seq NamedBody607_148 NamedBody607_161

def NamedBody607_163 : StackLang.HolProg 64 :=
.seq NamedBody607_147 NamedBody607_162

def NamedBody607_164 : StackLang.HolProg 64 :=
.seq NamedBody607_146 NamedBody607_163

def NamedBody607_165 : StackLang.HolProg 64 :=
.seq NamedBody607_145 NamedBody607_164

def NamedBody607_166 : StackLang.HolProg 64 :=
.seq NamedBody607_144 NamedBody607_165

def NamedBody607_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_174 : StackLang.HolProg 64 :=
.seq NamedBody607_172 NamedBody607_173

def NamedBody607_175 : StackLang.HolProg 64 :=
.seq NamedBody607_171 NamedBody607_174

def NamedBody607_176 : StackLang.HolProg 64 :=
.seq NamedBody607_170 NamedBody607_175

def NamedBody607_177 : StackLang.HolProg 64 :=
.seq NamedBody607_169 NamedBody607_176

def NamedBody607_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_180 : StackLang.HolProg 64 :=
.seq NamedBody607_178 NamedBody607_179

def NamedBody607_181 : StackLang.HolProg 64 :=
.call (some (NamedBody607_177, 1, 607, 4)) (Sum.inl 470) (some (NamedBody607_180, 607, 5))

def NamedBody607_182 : StackLang.HolProg 64 :=
.seq NamedBody607_168 NamedBody607_181

def NamedBody607_183 : StackLang.HolProg 64 :=
.seq NamedBody607_167 NamedBody607_182

def NamedBody607_184 : StackLang.HolProg 64 :=
.seq NamedBody607_166 NamedBody607_183

def NamedBody607_185 : StackLang.HolProg 64 :=
.seq NamedBody607_137 NamedBody607_184

def NamedBody607_186 : StackLang.HolProg 64 :=
.seq NamedBody607_134 NamedBody607_185

def NamedBody607_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1530#64)

def NamedBody607_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody607_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 12 1 1 11))

def NamedBody607_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody607_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_194 : StackLang.HolProg 64 :=
.seq NamedBody607_192 NamedBody607_193

def NamedBody607_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2331#64)

def NamedBody607_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_198 : StackLang.HolProg 64 :=
.seq NamedBody607_196 NamedBody607_197

def NamedBody607_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_202 : StackLang.HolProg 64 :=
.seq NamedBody607_200 NamedBody607_201

def NamedBody607_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_204 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_202 NamedBody607_203

def NamedBody607_205 : StackLang.HolProg 64 :=
.seq NamedBody607_199 NamedBody607_204

def NamedBody607_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 7

def NamedBody607_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_215 : StackLang.HolProg 64 :=
.seq NamedBody607_213 NamedBody607_214

def NamedBody607_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_217 : StackLang.HolProg 64 :=
.seq NamedBody607_215 NamedBody607_216

def NamedBody607_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_219 : StackLang.HolProg 64 :=
.seq NamedBody607_217 NamedBody607_218

def NamedBody607_220 : StackLang.HolProg 64 :=
.seq NamedBody607_212 NamedBody607_219

def NamedBody607_221 : StackLang.HolProg 64 :=
.seq NamedBody607_211 NamedBody607_220

def NamedBody607_222 : StackLang.HolProg 64 :=
.seq NamedBody607_210 NamedBody607_221

def NamedBody607_223 : StackLang.HolProg 64 :=
.seq NamedBody607_209 NamedBody607_222

def NamedBody607_224 : StackLang.HolProg 64 :=
.seq NamedBody607_208 NamedBody607_223

def NamedBody607_225 : StackLang.HolProg 64 :=
.seq NamedBody607_207 NamedBody607_224

def NamedBody607_226 : StackLang.HolProg 64 :=
.seq NamedBody607_206 NamedBody607_225

def NamedBody607_227 : StackLang.HolProg 64 :=
.seq NamedBody607_205 NamedBody607_226

def NamedBody607_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_235 : StackLang.HolProg 64 :=
.seq NamedBody607_233 NamedBody607_234

def NamedBody607_236 : StackLang.HolProg 64 :=
.seq NamedBody607_232 NamedBody607_235

def NamedBody607_237 : StackLang.HolProg 64 :=
.seq NamedBody607_231 NamedBody607_236

def NamedBody607_238 : StackLang.HolProg 64 :=
.seq NamedBody607_230 NamedBody607_237

def NamedBody607_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_240 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_241 : StackLang.HolProg 64 :=
.seq NamedBody607_239 NamedBody607_240

def NamedBody607_242 : StackLang.HolProg 64 :=
.call (some (NamedBody607_238, 1, 607, 6)) (Sum.inl 471) (some (NamedBody607_241, 607, 7))

def NamedBody607_243 : StackLang.HolProg 64 :=
.seq NamedBody607_229 NamedBody607_242

def NamedBody607_244 : StackLang.HolProg 64 :=
.seq NamedBody607_228 NamedBody607_243

def NamedBody607_245 : StackLang.HolProg 64 :=
.seq NamedBody607_227 NamedBody607_244

def NamedBody607_246 : StackLang.HolProg 64 :=
.seq NamedBody607_198 NamedBody607_245

def NamedBody607_247 : StackLang.HolProg 64 :=
.seq NamedBody607_195 NamedBody607_246

def NamedBody607_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody607_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2332#64)

def NamedBody607_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_255 : StackLang.HolProg 64 :=
.seq NamedBody607_253 NamedBody607_254

def NamedBody607_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_259 : StackLang.HolProg 64 :=
.seq NamedBody607_257 NamedBody607_258

def NamedBody607_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_261 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_259 NamedBody607_260

def NamedBody607_262 : StackLang.HolProg 64 :=
.seq NamedBody607_256 NamedBody607_261

def NamedBody607_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 9

def NamedBody607_266 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_268 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_269 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_272 : StackLang.HolProg 64 :=
.seq NamedBody607_270 NamedBody607_271

def NamedBody607_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_274 : StackLang.HolProg 64 :=
.seq NamedBody607_272 NamedBody607_273

def NamedBody607_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_276 : StackLang.HolProg 64 :=
.seq NamedBody607_274 NamedBody607_275

def NamedBody607_277 : StackLang.HolProg 64 :=
.seq NamedBody607_269 NamedBody607_276

def NamedBody607_278 : StackLang.HolProg 64 :=
.seq NamedBody607_268 NamedBody607_277

def NamedBody607_279 : StackLang.HolProg 64 :=
.seq NamedBody607_267 NamedBody607_278

def NamedBody607_280 : StackLang.HolProg 64 :=
.seq NamedBody607_266 NamedBody607_279

def NamedBody607_281 : StackLang.HolProg 64 :=
.seq NamedBody607_265 NamedBody607_280

def NamedBody607_282 : StackLang.HolProg 64 :=
.seq NamedBody607_264 NamedBody607_281

def NamedBody607_283 : StackLang.HolProg 64 :=
.seq NamedBody607_263 NamedBody607_282

def NamedBody607_284 : StackLang.HolProg 64 :=
.seq NamedBody607_262 NamedBody607_283

def NamedBody607_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_288 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_289 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_290 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_291 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody607_292 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_294 : StackLang.HolProg 64 :=
.seq NamedBody607_292 NamedBody607_293

def NamedBody607_295 : StackLang.HolProg 64 :=
.seq NamedBody607_291 NamedBody607_294

def NamedBody607_296 : StackLang.HolProg 64 :=
.seq NamedBody607_290 NamedBody607_295

def NamedBody607_297 : StackLang.HolProg 64 :=
.seq NamedBody607_289 NamedBody607_296

def NamedBody607_298 : StackLang.HolProg 64 :=
.seq NamedBody607_288 NamedBody607_297

def NamedBody607_299 : StackLang.HolProg 64 :=
.seq NamedBody607_287 NamedBody607_298

def NamedBody607_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_302 : StackLang.HolProg 64 :=
.seq NamedBody607_300 NamedBody607_301

def NamedBody607_303 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_304 : StackLang.HolProg 64 :=
.seq NamedBody607_302 NamedBody607_303

def NamedBody607_305 : StackLang.HolProg 64 :=
.call (some (NamedBody607_299, 1, 607, 8)) (Sum.inl 68) (some (NamedBody607_304, 607, 9))

def NamedBody607_306 : StackLang.HolProg 64 :=
.seq NamedBody607_286 NamedBody607_305

def NamedBody607_307 : StackLang.HolProg 64 :=
.seq NamedBody607_285 NamedBody607_306

def NamedBody607_308 : StackLang.HolProg 64 :=
.seq NamedBody607_284 NamedBody607_307

def NamedBody607_309 : StackLang.HolProg 64 :=
.seq NamedBody607_255 NamedBody607_308

def NamedBody607_310 : StackLang.HolProg 64 :=
.seq NamedBody607_252 NamedBody607_309

def NamedBody607_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def NamedBody607_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_315 : StackLang.HolProg 64 :=
.seq NamedBody607_313 NamedBody607_314

def NamedBody607_316 : StackLang.HolProg 64 :=
.seq NamedBody607_312 NamedBody607_315

def NamedBody607_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2333#64)

def NamedBody607_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_320 : StackLang.HolProg 64 :=
.seq NamedBody607_318 NamedBody607_319

def NamedBody607_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_324 : StackLang.HolProg 64 :=
.seq NamedBody607_322 NamedBody607_323

def NamedBody607_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_326 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_324 NamedBody607_325

def NamedBody607_327 : StackLang.HolProg 64 :=
.seq NamedBody607_321 NamedBody607_326

def NamedBody607_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 11

def NamedBody607_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_337 : StackLang.HolProg 64 :=
.seq NamedBody607_335 NamedBody607_336

def NamedBody607_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_339 : StackLang.HolProg 64 :=
.seq NamedBody607_337 NamedBody607_338

def NamedBody607_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_341 : StackLang.HolProg 64 :=
.seq NamedBody607_339 NamedBody607_340

def NamedBody607_342 : StackLang.HolProg 64 :=
.seq NamedBody607_334 NamedBody607_341

def NamedBody607_343 : StackLang.HolProg 64 :=
.seq NamedBody607_333 NamedBody607_342

def NamedBody607_344 : StackLang.HolProg 64 :=
.seq NamedBody607_332 NamedBody607_343

def NamedBody607_345 : StackLang.HolProg 64 :=
.seq NamedBody607_331 NamedBody607_344

def NamedBody607_346 : StackLang.HolProg 64 :=
.seq NamedBody607_330 NamedBody607_345

def NamedBody607_347 : StackLang.HolProg 64 :=
.seq NamedBody607_329 NamedBody607_346

def NamedBody607_348 : StackLang.HolProg 64 :=
.seq NamedBody607_328 NamedBody607_347

def NamedBody607_349 : StackLang.HolProg 64 :=
.seq NamedBody607_327 NamedBody607_348

def NamedBody607_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_359 : StackLang.HolProg 64 :=
.seq NamedBody607_357 NamedBody607_358

def NamedBody607_360 : StackLang.HolProg 64 :=
.seq NamedBody607_356 NamedBody607_359

def NamedBody607_361 : StackLang.HolProg 64 :=
.seq NamedBody607_355 NamedBody607_360

def NamedBody607_362 : StackLang.HolProg 64 :=
.seq NamedBody607_354 NamedBody607_361

def NamedBody607_363 : StackLang.HolProg 64 :=
.seq NamedBody607_353 NamedBody607_362

def NamedBody607_364 : StackLang.HolProg 64 :=
.seq NamedBody607_352 NamedBody607_363

def NamedBody607_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody607_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_368 : StackLang.HolProg 64 :=
.seq NamedBody607_366 NamedBody607_367

def NamedBody607_369 : StackLang.HolProg 64 :=
.seq NamedBody607_365 NamedBody607_368

def NamedBody607_370 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_371 : StackLang.HolProg 64 :=
.seq NamedBody607_369 NamedBody607_370

def NamedBody607_372 : StackLang.HolProg 64 :=
.call (some (NamedBody607_364, 1, 607, 10)) (Sum.inl 77) (some (NamedBody607_371, 607, 11))

def NamedBody607_373 : StackLang.HolProg 64 :=
.seq NamedBody607_351 NamedBody607_372

def NamedBody607_374 : StackLang.HolProg 64 :=
.seq NamedBody607_350 NamedBody607_373

def NamedBody607_375 : StackLang.HolProg 64 :=
.seq NamedBody607_349 NamedBody607_374

def NamedBody607_376 : StackLang.HolProg 64 :=
.seq NamedBody607_320 NamedBody607_375

def NamedBody607_377 : StackLang.HolProg 64 :=
.seq NamedBody607_317 NamedBody607_376

def NamedBody607_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_380 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody607_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_382 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2334#64)

def NamedBody607_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_385 : StackLang.HolProg 64 :=
.seq NamedBody607_383 NamedBody607_384

def NamedBody607_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody607_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody607_389 : StackLang.HolProg 64 :=
.seq NamedBody607_387 NamedBody607_388

def NamedBody607_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_391 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody607_389 NamedBody607_390

def NamedBody607_392 : StackLang.HolProg 64 :=
.seq NamedBody607_386 NamedBody607_391

def NamedBody607_393 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody607_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody607_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 607 13

def NamedBody607_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody607_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_398 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody607_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody607_402 : StackLang.HolProg 64 :=
.seq NamedBody607_400 NamedBody607_401

def NamedBody607_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody607_404 : StackLang.HolProg 64 :=
.seq NamedBody607_402 NamedBody607_403

def NamedBody607_405 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_406 : StackLang.HolProg 64 :=
.seq NamedBody607_404 NamedBody607_405

def NamedBody607_407 : StackLang.HolProg 64 :=
.seq NamedBody607_399 NamedBody607_406

def NamedBody607_408 : StackLang.HolProg 64 :=
.seq NamedBody607_398 NamedBody607_407

def NamedBody607_409 : StackLang.HolProg 64 :=
.seq NamedBody607_397 NamedBody607_408

def NamedBody607_410 : StackLang.HolProg 64 :=
.seq NamedBody607_396 NamedBody607_409

def NamedBody607_411 : StackLang.HolProg 64 :=
.seq NamedBody607_395 NamedBody607_410

def NamedBody607_412 : StackLang.HolProg 64 :=
.seq NamedBody607_394 NamedBody607_411

def NamedBody607_413 : StackLang.HolProg 64 :=
.seq NamedBody607_393 NamedBody607_412

def NamedBody607_414 : StackLang.HolProg 64 :=
.seq NamedBody607_392 NamedBody607_413

def NamedBody607_415 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_417 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody607_419 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody607_420 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody607_421 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody607_422 : StackLang.HolProg 64 :=
.seq NamedBody607_420 NamedBody607_421

def NamedBody607_423 : StackLang.HolProg 64 :=
.seq NamedBody607_419 NamedBody607_422

def NamedBody607_424 : StackLang.HolProg 64 :=
.seq NamedBody607_418 NamedBody607_423

def NamedBody607_425 : StackLang.HolProg 64 :=
.seq NamedBody607_417 NamedBody607_424

def NamedBody607_426 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody607_427 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody607_428 : StackLang.HolProg 64 :=
.seq NamedBody607_426 NamedBody607_427

def NamedBody607_429 : StackLang.HolProg 64 :=
.call (some (NamedBody607_425, 1, 607, 12)) (Sum.inl 431) (some (NamedBody607_428, 607, 13))

def NamedBody607_430 : StackLang.HolProg 64 :=
.seq NamedBody607_416 NamedBody607_429

def NamedBody607_431 : StackLang.HolProg 64 :=
.seq NamedBody607_415 NamedBody607_430

def NamedBody607_432 : StackLang.HolProg 64 :=
.seq NamedBody607_414 NamedBody607_431

def NamedBody607_433 : StackLang.HolProg 64 :=
.seq NamedBody607_385 NamedBody607_432

def NamedBody607_434 : StackLang.HolProg 64 :=
.seq NamedBody607_382 NamedBody607_433

def NamedBody607_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody607_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody607_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody607_438 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def NamedBody607_439 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody607_440 : StackLang.HolProg 64 :=
.seq NamedBody607_438 NamedBody607_439

def NamedBody607_441 : StackLang.HolProg 64 :=
.seq NamedBody607_437 NamedBody607_440

def NamedBody607_442 : StackLang.HolProg 64 :=
.seq NamedBody607_436 NamedBody607_441

def NamedBody607_443 : StackLang.HolProg 64 :=
.seq NamedBody607_435 NamedBody607_442

def NamedBody607_444 : StackLang.HolProg 64 :=
.seq NamedBody607_434 NamedBody607_443

def NamedBody607_445 : StackLang.HolProg 64 :=
.seq NamedBody607_381 NamedBody607_444

def NamedBody607_446 : StackLang.HolProg 64 :=
.seq NamedBody607_380 NamedBody607_445

def NamedBody607_447 : StackLang.HolProg 64 :=
.seq NamedBody607_379 NamedBody607_446

def NamedBody607_448 : StackLang.HolProg 64 :=
.seq NamedBody607_378 NamedBody607_447

def NamedBody607_449 : StackLang.HolProg 64 :=
.seq NamedBody607_377 NamedBody607_448

def NamedBody607_450 : StackLang.HolProg 64 :=
.seq NamedBody607_316 NamedBody607_449

def NamedBody607_451 : StackLang.HolProg 64 :=
.seq NamedBody607_311 NamedBody607_450

def NamedBody607_452 : StackLang.HolProg 64 :=
.seq NamedBody607_310 NamedBody607_451

def NamedBody607_453 : StackLang.HolProg 64 :=
.seq NamedBody607_251 NamedBody607_452

def NamedBody607_454 : StackLang.HolProg 64 :=
.seq NamedBody607_250 NamedBody607_453

def NamedBody607_455 : StackLang.HolProg 64 :=
.seq NamedBody607_249 NamedBody607_454

def NamedBody607_456 : StackLang.HolProg 64 :=
.seq NamedBody607_248 NamedBody607_455

def NamedBody607_457 : StackLang.HolProg 64 :=
.seq NamedBody607_247 NamedBody607_456

def NamedBody607_458 : StackLang.HolProg 64 :=
.seq NamedBody607_194 NamedBody607_457

def NamedBody607_459 : StackLang.HolProg 64 :=
.seq NamedBody607_191 NamedBody607_458

def NamedBody607_460 : StackLang.HolProg 64 :=
.seq NamedBody607_190 NamedBody607_459

def NamedBody607_461 : StackLang.HolProg 64 :=
.seq NamedBody607_189 NamedBody607_460

def NamedBody607_462 : StackLang.HolProg 64 :=
.seq NamedBody607_188 NamedBody607_461

def NamedBody607_463 : StackLang.HolProg 64 :=
.seq NamedBody607_187 NamedBody607_462

def NamedBody607_464 : StackLang.HolProg 64 :=
.seq NamedBody607_186 NamedBody607_463

def NamedBody607_465 : StackLang.HolProg 64 :=
.seq NamedBody607_133 NamedBody607_464

def NamedBody607_466 : StackLang.HolProg 64 :=
.seq NamedBody607_132 NamedBody607_465

def NamedBody607_467 : StackLang.HolProg 64 :=
.seq NamedBody607_131 NamedBody607_466

def NamedBody607_468 : StackLang.HolProg 64 :=
.seq NamedBody607_130 NamedBody607_467

def NamedBody607_469 : StackLang.HolProg 64 :=
.seq NamedBody607_129 NamedBody607_468

def NamedBody607_470 : StackLang.HolProg 64 :=
.seq NamedBody607_128 NamedBody607_469

def NamedBody607_471 : StackLang.HolProg 64 :=
.seq NamedBody607_127 NamedBody607_470

def NamedBody607_472 : StackLang.HolProg 64 :=
.seq NamedBody607_74 NamedBody607_471

def NamedBody607_473 : StackLang.HolProg 64 :=
.seq NamedBody607_67 NamedBody607_472

def NamedBody607_474 : StackLang.HolProg 64 :=
.seq NamedBody607_66 NamedBody607_473

def NamedBody607_475 : StackLang.HolProg 64 :=
.seq NamedBody607_65 NamedBody607_474

def NamedBody607_476 : StackLang.HolProg 64 :=
.seq NamedBody607_50 NamedBody607_475

def NamedBody607_477 : StackLang.HolProg 64 :=
.seq NamedBody607_49 NamedBody607_476

def NamedBody607_478 : StackLang.HolProg 64 :=
.seq NamedBody607_48 NamedBody607_477

def NamedBody607_479 : StackLang.HolProg 64 :=
.seq NamedBody607_47 NamedBody607_478

def NamedBody607_480 : StackLang.HolProg 64 :=
.seq NamedBody607_12 NamedBody607_479

def NamedBody607_481 : StackLang.HolProg 64 :=
.seq NamedBody607_11 NamedBody607_480

def NamedBody607_482 : StackLang.HolProg 64 :=
.seq NamedBody607_10 NamedBody607_481

def NamedBody607_483 : StackLang.HolProg 64 :=
.seq NamedBody607_9 NamedBody607_482

def NamedBody607_484 : StackLang.HolProg 64 :=
.seq NamedBody607_8 NamedBody607_483

def NamedBody607_485 : StackLang.HolProg 64 :=
.seq NamedBody607_7 NamedBody607_484

def NamedBody607_486 : StackLang.HolProg 64 :=
.seq NamedBody607_6 NamedBody607_485

def Named607 : Nat × StackLang.HolProg 64 := (607, NamedBody607_486)
theorem Named607_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed607 = Named607 := by
  kernel_rfl
#print axioms Named607_eq
end InitECandidate.Proofs.BackendStages
