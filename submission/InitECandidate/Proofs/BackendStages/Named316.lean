import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed316
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody316_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody316_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody316_3 : StackLang.HolProg 64 :=
.seq NamedBody316_1 NamedBody316_2

def NamedBody316_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody316_3 NamedBody316_4

def NamedBody316_6 : StackLang.HolProg 64 :=
.seq NamedBody316_0 NamedBody316_5

def NamedBody316_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 0#64)

def NamedBody316_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody316_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody316_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody316_15 : StackLang.HolProg 64 :=
.seq NamedBody316_13 NamedBody316_14

def NamedBody316_16 : StackLang.HolProg 64 :=
.seq NamedBody316_12 NamedBody316_15

def NamedBody316_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def NamedBody316_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody316_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody316_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody316_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_30 : StackLang.HolProg 64 :=
.seq NamedBody316_28 NamedBody316_29

def NamedBody316_31 : StackLang.HolProg 64 :=
.seq NamedBody316_27 NamedBody316_30

def NamedBody316_32 : StackLang.HolProg 64 :=
.seq NamedBody316_26 NamedBody316_31

def NamedBody316_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_35 : StackLang.HolProg 64 :=
.seq NamedBody316_33 NamedBody316_34

def NamedBody316_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody316_32 NamedBody316_35

def NamedBody316_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody316_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody316_42 : StackLang.HolProg 64 :=
.seq NamedBody316_40 NamedBody316_41

def NamedBody316_43 : StackLang.HolProg 64 :=
.seq NamedBody316_39 NamedBody316_42

def NamedBody316_44 : StackLang.HolProg 64 :=
.seq NamedBody316_38 NamedBody316_43

def NamedBody316_45 : StackLang.HolProg 64 :=
.seq NamedBody316_37 NamedBody316_44

def NamedBody316_46 : StackLang.HolProg 64 :=
.seq NamedBody316_36 NamedBody316_45

def NamedBody316_47 : StackLang.HolProg 64 :=
.seq NamedBody316_25 NamedBody316_46

def NamedBody316_48 : StackLang.HolProg 64 :=
.seq NamedBody316_24 NamedBody316_47

def NamedBody316_49 : StackLang.HolProg 64 :=
.seq NamedBody316_23 NamedBody316_48

def NamedBody316_50 : StackLang.HolProg 64 :=
.seq NamedBody316_22 NamedBody316_49

def NamedBody316_51 : StackLang.HolProg 64 :=
.seq NamedBody316_21 NamedBody316_50

def NamedBody316_52 : StackLang.HolProg 64 :=
.seq NamedBody316_20 NamedBody316_51

def NamedBody316_53 : StackLang.HolProg 64 :=
.seq NamedBody316_19 NamedBody316_52

def NamedBody316_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody316_56 : StackLang.HolProg 64 :=
.seq NamedBody316_54 NamedBody316_55

def NamedBody316_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody316_53 NamedBody316_56

def NamedBody316_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_60 : StackLang.HolProg 64 :=
.seq NamedBody316_58 NamedBody316_59

def NamedBody316_61 : StackLang.HolProg 64 :=
.seq NamedBody316_57 NamedBody316_60

def NamedBody316_62 : StackLang.HolProg 64 :=
.seq NamedBody316_18 NamedBody316_61

def NamedBody316_63 : StackLang.HolProg 64 :=
.seq NamedBody316_17 NamedBody316_62

def NamedBody316_64 : StackLang.HolProg 64 :=
.loop NamedBody316_63

def NamedBody316_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 11 168#64))

def NamedBody316_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody316_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody316_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 12#64)

def NamedBody316_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_78 : StackLang.HolProg 64 :=
.seq NamedBody316_76 NamedBody316_77

def NamedBody316_79 : StackLang.HolProg 64 :=
.seq NamedBody316_75 NamedBody316_78

def NamedBody316_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 877#64)

def NamedBody316_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_83 : StackLang.HolProg 64 :=
.seq NamedBody316_81 NamedBody316_82

def NamedBody316_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody316_87 : StackLang.HolProg 64 :=
.seq NamedBody316_85 NamedBody316_86

def NamedBody316_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_89 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody316_87 NamedBody316_88

def NamedBody316_90 : StackLang.HolProg 64 :=
.seq NamedBody316_84 NamedBody316_89

def NamedBody316_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody316_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 316 3

def NamedBody316_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody316_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody316_100 : StackLang.HolProg 64 :=
.seq NamedBody316_98 NamedBody316_99

def NamedBody316_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_102 : StackLang.HolProg 64 :=
.seq NamedBody316_100 NamedBody316_101

def NamedBody316_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_104 : StackLang.HolProg 64 :=
.seq NamedBody316_102 NamedBody316_103

def NamedBody316_105 : StackLang.HolProg 64 :=
.seq NamedBody316_97 NamedBody316_104

def NamedBody316_106 : StackLang.HolProg 64 :=
.seq NamedBody316_96 NamedBody316_105

def NamedBody316_107 : StackLang.HolProg 64 :=
.seq NamedBody316_95 NamedBody316_106

def NamedBody316_108 : StackLang.HolProg 64 :=
.seq NamedBody316_94 NamedBody316_107

def NamedBody316_109 : StackLang.HolProg 64 :=
.seq NamedBody316_93 NamedBody316_108

def NamedBody316_110 : StackLang.HolProg 64 :=
.seq NamedBody316_92 NamedBody316_109

def NamedBody316_111 : StackLang.HolProg 64 :=
.seq NamedBody316_91 NamedBody316_110

def NamedBody316_112 : StackLang.HolProg 64 :=
.seq NamedBody316_90 NamedBody316_111

def NamedBody316_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_122 : StackLang.HolProg 64 :=
.seq NamedBody316_120 NamedBody316_121

def NamedBody316_123 : StackLang.HolProg 64 :=
.seq NamedBody316_119 NamedBody316_122

def NamedBody316_124 : StackLang.HolProg 64 :=
.seq NamedBody316_118 NamedBody316_123

def NamedBody316_125 : StackLang.HolProg 64 :=
.seq NamedBody316_117 NamedBody316_124

def NamedBody316_126 : StackLang.HolProg 64 :=
.seq NamedBody316_116 NamedBody316_125

def NamedBody316_127 : StackLang.HolProg 64 :=
.seq NamedBody316_115 NamedBody316_126

def NamedBody316_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_131 : StackLang.HolProg 64 :=
.seq NamedBody316_129 NamedBody316_130

def NamedBody316_132 : StackLang.HolProg 64 :=
.seq NamedBody316_128 NamedBody316_131

def NamedBody316_133 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody316_134 : StackLang.HolProg 64 :=
.seq NamedBody316_132 NamedBody316_133

def NamedBody316_135 : StackLang.HolProg 64 :=
.call (some (NamedBody316_127, 1, 316, 2)) (Sum.inl 286) (some (NamedBody316_134, 316, 3))

def NamedBody316_136 : StackLang.HolProg 64 :=
.seq NamedBody316_114 NamedBody316_135

def NamedBody316_137 : StackLang.HolProg 64 :=
.seq NamedBody316_113 NamedBody316_136

def NamedBody316_138 : StackLang.HolProg 64 :=
.seq NamedBody316_112 NamedBody316_137

def NamedBody316_139 : StackLang.HolProg 64 :=
.seq NamedBody316_83 NamedBody316_138

def NamedBody316_140 : StackLang.HolProg 64 :=
.seq NamedBody316_80 NamedBody316_139

def NamedBody316_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_143 : StackLang.HolProg 64 :=
.seq NamedBody316_141 NamedBody316_142

def NamedBody316_144 : StackLang.HolProg 64 :=
.seq NamedBody316_140 NamedBody316_143

def NamedBody316_145 : StackLang.HolProg 64 :=
.seq NamedBody316_79 NamedBody316_144

def NamedBody316_146 : StackLang.HolProg 64 :=
.seq NamedBody316_74 NamedBody316_145

def NamedBody316_147 : StackLang.HolProg 64 :=
.seq NamedBody316_73 NamedBody316_146

def NamedBody316_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_150 : StackLang.HolProg 64 :=
.seq NamedBody316_148 NamedBody316_149

def NamedBody316_151 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody316_147 NamedBody316_150

def NamedBody316_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 160#64))

def NamedBody316_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 0#64)

def NamedBody316_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 296

def NamedBody316_160 : StackLang.HolProg 64 :=
.seq NamedBody316_158 NamedBody316_159

def NamedBody316_161 : StackLang.HolProg 64 :=
.seq NamedBody316_157 NamedBody316_160

def NamedBody316_162 : StackLang.HolProg 64 :=
.seq NamedBody316_156 NamedBody316_161

def NamedBody316_163 : StackLang.HolProg 64 :=
.seq NamedBody316_155 NamedBody316_162

def NamedBody316_164 : StackLang.HolProg 64 :=
.seq NamedBody316_154 NamedBody316_163

def NamedBody316_165 : StackLang.HolProg 64 :=
.seq NamedBody316_153 NamedBody316_164

def NamedBody316_166 : StackLang.HolProg 64 :=
.seq NamedBody316_152 NamedBody316_165

def NamedBody316_167 : StackLang.HolProg 64 :=
.seq NamedBody316_151 NamedBody316_166

def NamedBody316_168 : StackLang.HolProg 64 :=
.seq NamedBody316_72 NamedBody316_167

def NamedBody316_169 : StackLang.HolProg 64 :=
.seq NamedBody316_71 NamedBody316_168

def NamedBody316_170 : StackLang.HolProg 64 :=
.seq NamedBody316_70 NamedBody316_169

def NamedBody316_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_172 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody316_170 NamedBody316_171

def NamedBody316_173 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody316_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody316_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_180 : StackLang.HolProg 64 :=
.seq NamedBody316_178 NamedBody316_179

def NamedBody316_181 : StackLang.HolProg 64 :=
.seq NamedBody316_177 NamedBody316_180

def NamedBody316_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody316_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_185 : StackLang.HolProg 64 :=
.seq NamedBody316_183 NamedBody316_184

def NamedBody316_186 : StackLang.HolProg 64 :=
.seq NamedBody316_182 NamedBody316_185

def NamedBody316_187 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody316_181 NamedBody316_186

def NamedBody316_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody316_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def NamedBody316_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_194 : StackLang.HolProg 64 :=
.seq NamedBody316_192 NamedBody316_193

def NamedBody316_195 : StackLang.HolProg 64 :=
.seq NamedBody316_191 NamedBody316_194

def NamedBody316_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def NamedBody316_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_199 : StackLang.HolProg 64 :=
.seq NamedBody316_197 NamedBody316_198

def NamedBody316_200 : StackLang.HolProg 64 :=
.seq NamedBody316_196 NamedBody316_199

def NamedBody316_201 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) NamedBody316_195 NamedBody316_200

def NamedBody316_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody316_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_207 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_208 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_209 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def NamedBody316_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 0#64))

def NamedBody316_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_213 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody316_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_219 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_220 : StackLang.HolProg 64 :=
.seq NamedBody316_218 NamedBody316_219

def NamedBody316_221 : StackLang.HolProg 64 :=
.seq NamedBody316_217 NamedBody316_220

def NamedBody316_222 : StackLang.HolProg 64 :=
.seq NamedBody316_216 NamedBody316_221

def NamedBody316_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 878#64)

def NamedBody316_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_226 : StackLang.HolProg 64 :=
.seq NamedBody316_224 NamedBody316_225

def NamedBody316_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody316_230 : StackLang.HolProg 64 :=
.seq NamedBody316_228 NamedBody316_229

def NamedBody316_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_232 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody316_230 NamedBody316_231

def NamedBody316_233 : StackLang.HolProg 64 :=
.seq NamedBody316_227 NamedBody316_232

def NamedBody316_234 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody316_235 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_236 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 316 5

def NamedBody316_237 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_238 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody316_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody316_243 : StackLang.HolProg 64 :=
.seq NamedBody316_241 NamedBody316_242

def NamedBody316_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_245 : StackLang.HolProg 64 :=
.seq NamedBody316_243 NamedBody316_244

def NamedBody316_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_247 : StackLang.HolProg 64 :=
.seq NamedBody316_245 NamedBody316_246

def NamedBody316_248 : StackLang.HolProg 64 :=
.seq NamedBody316_240 NamedBody316_247

def NamedBody316_249 : StackLang.HolProg 64 :=
.seq NamedBody316_239 NamedBody316_248

def NamedBody316_250 : StackLang.HolProg 64 :=
.seq NamedBody316_238 NamedBody316_249

def NamedBody316_251 : StackLang.HolProg 64 :=
.seq NamedBody316_237 NamedBody316_250

def NamedBody316_252 : StackLang.HolProg 64 :=
.seq NamedBody316_236 NamedBody316_251

def NamedBody316_253 : StackLang.HolProg 64 :=
.seq NamedBody316_235 NamedBody316_252

def NamedBody316_254 : StackLang.HolProg 64 :=
.seq NamedBody316_234 NamedBody316_253

def NamedBody316_255 : StackLang.HolProg 64 :=
.seq NamedBody316_233 NamedBody316_254

def NamedBody316_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_263 : StackLang.HolProg 64 :=
.seq NamedBody316_261 NamedBody316_262

def NamedBody316_264 : StackLang.HolProg 64 :=
.seq NamedBody316_260 NamedBody316_263

def NamedBody316_265 : StackLang.HolProg 64 :=
.seq NamedBody316_259 NamedBody316_264

def NamedBody316_266 : StackLang.HolProg 64 :=
.seq NamedBody316_258 NamedBody316_265

def NamedBody316_267 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_268 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody316_269 : StackLang.HolProg 64 :=
.seq NamedBody316_267 NamedBody316_268

def NamedBody316_270 : StackLang.HolProg 64 :=
.call (some (NamedBody316_266, 1, 316, 4)) (Sum.inl 286) (some (NamedBody316_269, 316, 5))

def NamedBody316_271 : StackLang.HolProg 64 :=
.seq NamedBody316_257 NamedBody316_270

def NamedBody316_272 : StackLang.HolProg 64 :=
.seq NamedBody316_256 NamedBody316_271

def NamedBody316_273 : StackLang.HolProg 64 :=
.seq NamedBody316_255 NamedBody316_272

def NamedBody316_274 : StackLang.HolProg 64 :=
.seq NamedBody316_226 NamedBody316_273

def NamedBody316_275 : StackLang.HolProg 64 :=
.seq NamedBody316_223 NamedBody316_274

def NamedBody316_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_278 : StackLang.HolProg 64 :=
.seq NamedBody316_276 NamedBody316_277

def NamedBody316_279 : StackLang.HolProg 64 :=
.seq NamedBody316_275 NamedBody316_278

def NamedBody316_280 : StackLang.HolProg 64 :=
.seq NamedBody316_222 NamedBody316_279

def NamedBody316_281 : StackLang.HolProg 64 :=
.seq NamedBody316_215 NamedBody316_280

def NamedBody316_282 : StackLang.HolProg 64 :=
.seq NamedBody316_214 NamedBody316_281

def NamedBody316_283 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_284 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_285 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_287 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_288 : StackLang.HolProg 64 :=
.seq NamedBody316_286 NamedBody316_287

def NamedBody316_289 : StackLang.HolProg 64 :=
.seq NamedBody316_285 NamedBody316_288

def NamedBody316_290 : StackLang.HolProg 64 :=
.seq NamedBody316_284 NamedBody316_289

def NamedBody316_291 : StackLang.HolProg 64 :=
.seq NamedBody316_283 NamedBody316_290

def NamedBody316_292 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody316_282 NamedBody316_291

def NamedBody316_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 8#64)

def NamedBody316_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 879#64)

def NamedBody316_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_299 : StackLang.HolProg 64 :=
.seq NamedBody316_297 NamedBody316_298

def NamedBody316_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody316_303 : StackLang.HolProg 64 :=
.seq NamedBody316_301 NamedBody316_302

def NamedBody316_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody316_303 NamedBody316_304

def NamedBody316_306 : StackLang.HolProg 64 :=
.seq NamedBody316_300 NamedBody316_305

def NamedBody316_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody316_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 316 7

def NamedBody316_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody316_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody316_316 : StackLang.HolProg 64 :=
.seq NamedBody316_314 NamedBody316_315

def NamedBody316_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_318 : StackLang.HolProg 64 :=
.seq NamedBody316_316 NamedBody316_317

def NamedBody316_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_320 : StackLang.HolProg 64 :=
.seq NamedBody316_318 NamedBody316_319

def NamedBody316_321 : StackLang.HolProg 64 :=
.seq NamedBody316_313 NamedBody316_320

def NamedBody316_322 : StackLang.HolProg 64 :=
.seq NamedBody316_312 NamedBody316_321

def NamedBody316_323 : StackLang.HolProg 64 :=
.seq NamedBody316_311 NamedBody316_322

def NamedBody316_324 : StackLang.HolProg 64 :=
.seq NamedBody316_310 NamedBody316_323

def NamedBody316_325 : StackLang.HolProg 64 :=
.seq NamedBody316_309 NamedBody316_324

def NamedBody316_326 : StackLang.HolProg 64 :=
.seq NamedBody316_308 NamedBody316_325

def NamedBody316_327 : StackLang.HolProg 64 :=
.seq NamedBody316_307 NamedBody316_326

def NamedBody316_328 : StackLang.HolProg 64 :=
.seq NamedBody316_306 NamedBody316_327

def NamedBody316_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody316_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_340 : StackLang.HolProg 64 :=
.seq NamedBody316_338 NamedBody316_339

def NamedBody316_341 : StackLang.HolProg 64 :=
.seq NamedBody316_337 NamedBody316_340

def NamedBody316_342 : StackLang.HolProg 64 :=
.seq NamedBody316_336 NamedBody316_341

def NamedBody316_343 : StackLang.HolProg 64 :=
.seq NamedBody316_335 NamedBody316_342

def NamedBody316_344 : StackLang.HolProg 64 :=
.seq NamedBody316_334 NamedBody316_343

def NamedBody316_345 : StackLang.HolProg 64 :=
.seq NamedBody316_333 NamedBody316_344

def NamedBody316_346 : StackLang.HolProg 64 :=
.seq NamedBody316_332 NamedBody316_345

def NamedBody316_347 : StackLang.HolProg 64 :=
.seq NamedBody316_331 NamedBody316_346

def NamedBody316_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_352 : StackLang.HolProg 64 :=
.seq NamedBody316_350 NamedBody316_351

def NamedBody316_353 : StackLang.HolProg 64 :=
.seq NamedBody316_349 NamedBody316_352

def NamedBody316_354 : StackLang.HolProg 64 :=
.seq NamedBody316_348 NamedBody316_353

def NamedBody316_355 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody316_356 : StackLang.HolProg 64 :=
.seq NamedBody316_354 NamedBody316_355

def NamedBody316_357 : StackLang.HolProg 64 :=
.call (some (NamedBody316_347, 1, 316, 6)) (Sum.inl 68) (some (NamedBody316_356, 316, 7))

def NamedBody316_358 : StackLang.HolProg 64 :=
.seq NamedBody316_330 NamedBody316_357

def NamedBody316_359 : StackLang.HolProg 64 :=
.seq NamedBody316_329 NamedBody316_358

def NamedBody316_360 : StackLang.HolProg 64 :=
.seq NamedBody316_328 NamedBody316_359

def NamedBody316_361 : StackLang.HolProg 64 :=
.seq NamedBody316_299 NamedBody316_360

def NamedBody316_362 : StackLang.HolProg 64 :=
.seq NamedBody316_296 NamedBody316_361

def NamedBody316_363 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_364 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody316_365 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody316_366 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_367 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 3#64)

def NamedBody316_368 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_369 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 12 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody316_370 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody316_371 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody316_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def NamedBody316_375 : StackLang.HolProg 64 :=
.seq NamedBody316_373 NamedBody316_374

def NamedBody316_376 : StackLang.HolProg 64 :=
.seq NamedBody316_372 NamedBody316_375

def NamedBody316_377 : StackLang.HolProg 64 :=
.seq NamedBody316_371 NamedBody316_376

def NamedBody316_378 : StackLang.HolProg 64 :=
.seq NamedBody316_370 NamedBody316_377

def NamedBody316_379 : StackLang.HolProg 64 :=
.seq NamedBody316_369 NamedBody316_378

def NamedBody316_380 : StackLang.HolProg 64 :=
.seq NamedBody316_368 NamedBody316_379

def NamedBody316_381 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_382 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody316_380 NamedBody316_381

def NamedBody316_383 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_384 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_386 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def NamedBody316_387 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_388 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def NamedBody316_389 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 1#64)

def NamedBody316_390 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_391 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_392 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_393 : StackLang.HolProg 64 :=
.seq NamedBody316_391 NamedBody316_392

def NamedBody316_394 : StackLang.HolProg 64 :=
.seq NamedBody316_390 NamedBody316_393

def NamedBody316_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 880#64)

def NamedBody316_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_398 : StackLang.HolProg 64 :=
.seq NamedBody316_396 NamedBody316_397

def NamedBody316_399 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_400 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody316_401 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody316_402 : StackLang.HolProg 64 :=
.seq NamedBody316_400 NamedBody316_401

def NamedBody316_403 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_404 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody316_402 NamedBody316_403

def NamedBody316_405 : StackLang.HolProg 64 :=
.seq NamedBody316_399 NamedBody316_404

def NamedBody316_406 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody316_407 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody316_408 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 316 9

def NamedBody316_409 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody316_410 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_411 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_412 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_413 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody316_414 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody316_415 : StackLang.HolProg 64 :=
.seq NamedBody316_413 NamedBody316_414

def NamedBody316_416 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody316_417 : StackLang.HolProg 64 :=
.seq NamedBody316_415 NamedBody316_416

def NamedBody316_418 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_419 : StackLang.HolProg 64 :=
.seq NamedBody316_417 NamedBody316_418

def NamedBody316_420 : StackLang.HolProg 64 :=
.seq NamedBody316_412 NamedBody316_419

def NamedBody316_421 : StackLang.HolProg 64 :=
.seq NamedBody316_411 NamedBody316_420

def NamedBody316_422 : StackLang.HolProg 64 :=
.seq NamedBody316_410 NamedBody316_421

def NamedBody316_423 : StackLang.HolProg 64 :=
.seq NamedBody316_409 NamedBody316_422

def NamedBody316_424 : StackLang.HolProg 64 :=
.seq NamedBody316_408 NamedBody316_423

def NamedBody316_425 : StackLang.HolProg 64 :=
.seq NamedBody316_407 NamedBody316_424

def NamedBody316_426 : StackLang.HolProg 64 :=
.seq NamedBody316_406 NamedBody316_425

def NamedBody316_427 : StackLang.HolProg 64 :=
.seq NamedBody316_405 NamedBody316_426

def NamedBody316_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_430 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_431 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody316_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody316_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody316_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody316_435 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_436 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_437 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_438 : StackLang.HolProg 64 :=
.seq NamedBody316_436 NamedBody316_437

def NamedBody316_439 : StackLang.HolProg 64 :=
.seq NamedBody316_435 NamedBody316_438

def NamedBody316_440 : StackLang.HolProg 64 :=
.seq NamedBody316_434 NamedBody316_439

def NamedBody316_441 : StackLang.HolProg 64 :=
.seq NamedBody316_433 NamedBody316_440

def NamedBody316_442 : StackLang.HolProg 64 :=
.seq NamedBody316_432 NamedBody316_441

def NamedBody316_443 : StackLang.HolProg 64 :=
.seq NamedBody316_431 NamedBody316_442

def NamedBody316_444 : StackLang.HolProg 64 :=
.seq NamedBody316_430 NamedBody316_443

def NamedBody316_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 32#64))

def NamedBody316_447 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 24#64))

def NamedBody316_448 : StackLang.HolProg 64 :=
.seq NamedBody316_446 NamedBody316_447

def NamedBody316_449 : StackLang.HolProg 64 :=
.seq NamedBody316_445 NamedBody316_448

def NamedBody316_450 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody316_451 : StackLang.HolProg 64 :=
.seq NamedBody316_449 NamedBody316_450

def NamedBody316_452 : StackLang.HolProg 64 :=
.call (some (NamedBody316_444, 1, 316, 8)) (Sum.inl 292) (some (NamedBody316_451, 316, 9))

def NamedBody316_453 : StackLang.HolProg 64 :=
.seq NamedBody316_429 NamedBody316_452

def NamedBody316_454 : StackLang.HolProg 64 :=
.seq NamedBody316_428 NamedBody316_453

def NamedBody316_455 : StackLang.HolProg 64 :=
.seq NamedBody316_427 NamedBody316_454

def NamedBody316_456 : StackLang.HolProg 64 :=
.seq NamedBody316_398 NamedBody316_455

def NamedBody316_457 : StackLang.HolProg 64 :=
.seq NamedBody316_395 NamedBody316_456

def NamedBody316_458 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_459 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_460 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 1#64)

def NamedBody316_461 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_462 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_463 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def NamedBody316_464 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody316_465 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_466 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 48#64))

def NamedBody316_467 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_468 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 56#64))

def NamedBody316_469 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_470 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_471 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 296

def NamedBody316_472 : StackLang.HolProg 64 :=
.seq NamedBody316_470 NamedBody316_471

def NamedBody316_473 : StackLang.HolProg 64 :=
.seq NamedBody316_469 NamedBody316_472

def NamedBody316_474 : StackLang.HolProg 64 :=
.seq NamedBody316_468 NamedBody316_473

def NamedBody316_475 : StackLang.HolProg 64 :=
.seq NamedBody316_467 NamedBody316_474

def NamedBody316_476 : StackLang.HolProg 64 :=
.seq NamedBody316_466 NamedBody316_475

def NamedBody316_477 : StackLang.HolProg 64 :=
.seq NamedBody316_465 NamedBody316_476

def NamedBody316_478 : StackLang.HolProg 64 :=
.seq NamedBody316_464 NamedBody316_477

def NamedBody316_479 : StackLang.HolProg 64 :=
.seq NamedBody316_463 NamedBody316_478

def NamedBody316_480 : StackLang.HolProg 64 :=
.seq NamedBody316_462 NamedBody316_479

def NamedBody316_481 : StackLang.HolProg 64 :=
.seq NamedBody316_461 NamedBody316_480

def NamedBody316_482 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_483 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody316_481 NamedBody316_482

def NamedBody316_484 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_485 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_486 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_487 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 40#64))

def NamedBody316_488 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 11 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody316_489 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_490 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 48#64))

def NamedBody316_491 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_492 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody316_493 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def NamedBody316_494 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 297

def NamedBody316_495 : StackLang.HolProg 64 :=
.seq NamedBody316_493 NamedBody316_494

def NamedBody316_496 : StackLang.HolProg 64 :=
.seq NamedBody316_492 NamedBody316_495

def NamedBody316_497 : StackLang.HolProg 64 :=
.seq NamedBody316_491 NamedBody316_496

def NamedBody316_498 : StackLang.HolProg 64 :=
.seq NamedBody316_490 NamedBody316_497

def NamedBody316_499 : StackLang.HolProg 64 :=
.seq NamedBody316_489 NamedBody316_498

def NamedBody316_500 : StackLang.HolProg 64 :=
.seq NamedBody316_488 NamedBody316_499

def NamedBody316_501 : StackLang.HolProg 64 :=
.seq NamedBody316_487 NamedBody316_500

def NamedBody316_502 : StackLang.HolProg 64 :=
.seq NamedBody316_486 NamedBody316_501

def NamedBody316_503 : StackLang.HolProg 64 :=
.seq NamedBody316_485 NamedBody316_502

def NamedBody316_504 : StackLang.HolProg 64 :=
.seq NamedBody316_484 NamedBody316_503

def NamedBody316_505 : StackLang.HolProg 64 :=
.seq NamedBody316_483 NamedBody316_504

def NamedBody316_506 : StackLang.HolProg 64 :=
.seq NamedBody316_460 NamedBody316_505

def NamedBody316_507 : StackLang.HolProg 64 :=
.seq NamedBody316_459 NamedBody316_506

def NamedBody316_508 : StackLang.HolProg 64 :=
.seq NamedBody316_458 NamedBody316_507

def NamedBody316_509 : StackLang.HolProg 64 :=
.seq NamedBody316_457 NamedBody316_508

def NamedBody316_510 : StackLang.HolProg 64 :=
.seq NamedBody316_394 NamedBody316_509

def NamedBody316_511 : StackLang.HolProg 64 :=
.seq NamedBody316_389 NamedBody316_510

def NamedBody316_512 : StackLang.HolProg 64 :=
.seq NamedBody316_388 NamedBody316_511

def NamedBody316_513 : StackLang.HolProg 64 :=
.seq NamedBody316_387 NamedBody316_512

def NamedBody316_514 : StackLang.HolProg 64 :=
.seq NamedBody316_386 NamedBody316_513

def NamedBody316_515 : StackLang.HolProg 64 :=
.seq NamedBody316_385 NamedBody316_514

def NamedBody316_516 : StackLang.HolProg 64 :=
.seq NamedBody316_384 NamedBody316_515

def NamedBody316_517 : StackLang.HolProg 64 :=
.seq NamedBody316_383 NamedBody316_516

def NamedBody316_518 : StackLang.HolProg 64 :=
.seq NamedBody316_382 NamedBody316_517

def NamedBody316_519 : StackLang.HolProg 64 :=
.seq NamedBody316_367 NamedBody316_518

def NamedBody316_520 : StackLang.HolProg 64 :=
.seq NamedBody316_366 NamedBody316_519

def NamedBody316_521 : StackLang.HolProg 64 :=
.seq NamedBody316_365 NamedBody316_520

def NamedBody316_522 : StackLang.HolProg 64 :=
.seq NamedBody316_364 NamedBody316_521

def NamedBody316_523 : StackLang.HolProg 64 :=
.seq NamedBody316_363 NamedBody316_522

def NamedBody316_524 : StackLang.HolProg 64 :=
.seq NamedBody316_362 NamedBody316_523

def NamedBody316_525 : StackLang.HolProg 64 :=
.seq NamedBody316_295 NamedBody316_524

def NamedBody316_526 : StackLang.HolProg 64 :=
.seq NamedBody316_294 NamedBody316_525

def NamedBody316_527 : StackLang.HolProg 64 :=
.seq NamedBody316_293 NamedBody316_526

def NamedBody316_528 : StackLang.HolProg 64 :=
.seq NamedBody316_292 NamedBody316_527

def NamedBody316_529 : StackLang.HolProg 64 :=
.seq NamedBody316_213 NamedBody316_528

def NamedBody316_530 : StackLang.HolProg 64 :=
.seq NamedBody316_212 NamedBody316_529

def NamedBody316_531 : StackLang.HolProg 64 :=
.seq NamedBody316_211 NamedBody316_530

def NamedBody316_532 : StackLang.HolProg 64 :=
.seq NamedBody316_210 NamedBody316_531

def NamedBody316_533 : StackLang.HolProg 64 :=
.seq NamedBody316_209 NamedBody316_532

def NamedBody316_534 : StackLang.HolProg 64 :=
.seq NamedBody316_208 NamedBody316_533

def NamedBody316_535 : StackLang.HolProg 64 :=
.seq NamedBody316_207 NamedBody316_534

def NamedBody316_536 : StackLang.HolProg 64 :=
.seq NamedBody316_206 NamedBody316_535

def NamedBody316_537 : StackLang.HolProg 64 :=
.seq NamedBody316_205 NamedBody316_536

def NamedBody316_538 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 40#64))

def NamedBody316_539 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) NamedBody316_537 NamedBody316_538

def NamedBody316_540 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody316_541 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody316_542 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def NamedBody316_543 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody316_544 : StackLang.HolProg 64 :=
.seq NamedBody316_542 NamedBody316_543

def NamedBody316_545 : StackLang.HolProg 64 :=
.seq NamedBody316_541 NamedBody316_544

def NamedBody316_546 : StackLang.HolProg 64 :=
.seq NamedBody316_540 NamedBody316_545

def NamedBody316_547 : StackLang.HolProg 64 :=
.seq NamedBody316_539 NamedBody316_546

def NamedBody316_548 : StackLang.HolProg 64 :=
.seq NamedBody316_204 NamedBody316_547

def NamedBody316_549 : StackLang.HolProg 64 :=
.seq NamedBody316_203 NamedBody316_548

def NamedBody316_550 : StackLang.HolProg 64 :=
.seq NamedBody316_202 NamedBody316_549

def NamedBody316_551 : StackLang.HolProg 64 :=
.seq NamedBody316_201 NamedBody316_550

def NamedBody316_552 : StackLang.HolProg 64 :=
.seq NamedBody316_190 NamedBody316_551

def NamedBody316_553 : StackLang.HolProg 64 :=
.seq NamedBody316_189 NamedBody316_552

def NamedBody316_554 : StackLang.HolProg 64 :=
.seq NamedBody316_188 NamedBody316_553

def NamedBody316_555 : StackLang.HolProg 64 :=
.seq NamedBody316_187 NamedBody316_554

def NamedBody316_556 : StackLang.HolProg 64 :=
.seq NamedBody316_176 NamedBody316_555

def NamedBody316_557 : StackLang.HolProg 64 :=
.seq NamedBody316_175 NamedBody316_556

def NamedBody316_558 : StackLang.HolProg 64 :=
.seq NamedBody316_174 NamedBody316_557

def NamedBody316_559 : StackLang.HolProg 64 :=
.seq NamedBody316_173 NamedBody316_558

def NamedBody316_560 : StackLang.HolProg 64 :=
.seq NamedBody316_172 NamedBody316_559

def NamedBody316_561 : StackLang.HolProg 64 :=
.seq NamedBody316_69 NamedBody316_560

def NamedBody316_562 : StackLang.HolProg 64 :=
.seq NamedBody316_68 NamedBody316_561

def NamedBody316_563 : StackLang.HolProg 64 :=
.seq NamedBody316_67 NamedBody316_562

def NamedBody316_564 : StackLang.HolProg 64 :=
.seq NamedBody316_66 NamedBody316_563

def NamedBody316_565 : StackLang.HolProg 64 :=
.seq NamedBody316_65 NamedBody316_564

def NamedBody316_566 : StackLang.HolProg 64 :=
.seq NamedBody316_64 NamedBody316_565

def NamedBody316_567 : StackLang.HolProg 64 :=
.seq NamedBody316_16 NamedBody316_566

def NamedBody316_568 : StackLang.HolProg 64 :=
.seq NamedBody316_11 NamedBody316_567

def NamedBody316_569 : StackLang.HolProg 64 :=
.seq NamedBody316_10 NamedBody316_568

def NamedBody316_570 : StackLang.HolProg 64 :=
.seq NamedBody316_9 NamedBody316_569

def NamedBody316_571 : StackLang.HolProg 64 :=
.seq NamedBody316_8 NamedBody316_570

def NamedBody316_572 : StackLang.HolProg 64 :=
.seq NamedBody316_7 NamedBody316_571

def NamedBody316_573 : StackLang.HolProg 64 :=
.seq NamedBody316_6 NamedBody316_572

def Named316 : Nat × StackLang.HolProg 64 := (316, NamedBody316_573)
theorem Named316_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed316 = Named316 := by
  kernel_rfl
#print axioms Named316_eq
end InitECandidate.Proofs.BackendStages
