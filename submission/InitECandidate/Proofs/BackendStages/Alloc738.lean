import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw738
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody738_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 9

def AllocBody738_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody738_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody738_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody738_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 8#64))

def AllocBody738_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 16#64))

def AllocBody738_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 24#64))

def AllocBody738_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 32#64))

def AllocBody738_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 40#64))

def AllocBody738_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 48#64))

def AllocBody738_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 56#64))

def AllocBody738_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 64#64))

def AllocBody738_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 72#64))

def AllocBody738_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 80#64))

def AllocBody738_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 88#64))

def AllocBody738_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 8

def AllocBody738_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 12 7

def AllocBody738_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 6

def AllocBody738_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 5

def AllocBody738_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 4

def AllocBody738_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody738_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 11 2

def AllocBody738_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 10 1

def AllocBody738_33 : StackLang.HolProg 64 :=
.seq AllocBody738_31 AllocBody738_32

def AllocBody738_34 : StackLang.HolProg 64 :=
.seq AllocBody738_30 AllocBody738_33

def AllocBody738_35 : StackLang.HolProg 64 :=
.seq AllocBody738_29 AllocBody738_34

def AllocBody738_36 : StackLang.HolProg 64 :=
.seq AllocBody738_28 AllocBody738_35

def AllocBody738_37 : StackLang.HolProg 64 :=
.seq AllocBody738_27 AllocBody738_36

def AllocBody738_38 : StackLang.HolProg 64 :=
.seq AllocBody738_26 AllocBody738_37

def AllocBody738_39 : StackLang.HolProg 64 :=
.seq AllocBody738_25 AllocBody738_38

def AllocBody738_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3270#64)

def AllocBody738_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody738_43 : StackLang.HolProg 64 :=
.seq AllocBody738_41 AllocBody738_42

def AllocBody738_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody738_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody738_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody738_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 738 3

def AllocBody738_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody738_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody738_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody738_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody738_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody738_54 : StackLang.HolProg 64 :=
.seq AllocBody738_52 AllocBody738_53

def AllocBody738_55 : StackLang.HolProg 64 :=
.seq AllocBody738_51 AllocBody738_54

def AllocBody738_56 : StackLang.HolProg 64 :=
.seq AllocBody738_50 AllocBody738_55

def AllocBody738_57 : StackLang.HolProg 64 :=
.seq AllocBody738_49 AllocBody738_56

def AllocBody738_58 : StackLang.HolProg 64 :=
.seq AllocBody738_48 AllocBody738_57

def AllocBody738_59 : StackLang.HolProg 64 :=
.seq AllocBody738_47 AllocBody738_58

def AllocBody738_60 : StackLang.HolProg 64 :=
.seq AllocBody738_46 AllocBody738_59

def AllocBody738_61 : StackLang.HolProg 64 :=
.seq AllocBody738_45 AllocBody738_60

def AllocBody738_62 : StackLang.HolProg 64 :=
.seq AllocBody738_44 AllocBody738_61

def AllocBody738_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody738_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody738_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody738_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody738_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody738_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def AllocBody738_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody738_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody738_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 5

def AllocBody738_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody738_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody738_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 2

def AllocBody738_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 1

def AllocBody738_78 : StackLang.HolProg 64 :=
.seq AllocBody738_76 AllocBody738_77

def AllocBody738_79 : StackLang.HolProg 64 :=
.seq AllocBody738_75 AllocBody738_78

def AllocBody738_80 : StackLang.HolProg 64 :=
.seq AllocBody738_74 AllocBody738_79

def AllocBody738_81 : StackLang.HolProg 64 :=
.seq AllocBody738_73 AllocBody738_80

def AllocBody738_82 : StackLang.HolProg 64 :=
.seq AllocBody738_72 AllocBody738_81

def AllocBody738_83 : StackLang.HolProg 64 :=
.seq AllocBody738_71 AllocBody738_82

def AllocBody738_84 : StackLang.HolProg 64 :=
.seq AllocBody738_70 AllocBody738_83

def AllocBody738_85 : StackLang.HolProg 64 :=
.seq AllocBody738_69 AllocBody738_84

def AllocBody738_86 : StackLang.HolProg 64 :=
.seq AllocBody738_68 AllocBody738_85

def AllocBody738_87 : StackLang.HolProg 64 :=
.seq AllocBody738_67 AllocBody738_86

def AllocBody738_88 : StackLang.HolProg 64 :=
.seq AllocBody738_66 AllocBody738_87

def AllocBody738_89 : StackLang.HolProg 64 :=
.seq AllocBody738_65 AllocBody738_88

def AllocBody738_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 8

def AllocBody738_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody738_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 6

def AllocBody738_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 10 5

def AllocBody738_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 4

def AllocBody738_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 3

def AllocBody738_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 2

def AllocBody738_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 1

def AllocBody738_98 : StackLang.HolProg 64 :=
.seq AllocBody738_96 AllocBody738_97

def AllocBody738_99 : StackLang.HolProg 64 :=
.seq AllocBody738_95 AllocBody738_98

def AllocBody738_100 : StackLang.HolProg 64 :=
.seq AllocBody738_94 AllocBody738_99

def AllocBody738_101 : StackLang.HolProg 64 :=
.seq AllocBody738_93 AllocBody738_100

def AllocBody738_102 : StackLang.HolProg 64 :=
.seq AllocBody738_92 AllocBody738_101

def AllocBody738_103 : StackLang.HolProg 64 :=
.seq AllocBody738_91 AllocBody738_102

def AllocBody738_104 : StackLang.HolProg 64 :=
.seq AllocBody738_90 AllocBody738_103

def AllocBody738_105 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody738_106 : StackLang.HolProg 64 :=
.seq AllocBody738_104 AllocBody738_105

def AllocBody738_107 : StackLang.HolProg 64 :=
.call (some (AllocBody738_89, 0, 738, 2)) (Sum.inl 712) (some (AllocBody738_106, 738, 3))

def AllocBody738_108 : StackLang.HolProg 64 :=
.seq AllocBody738_64 AllocBody738_107

def AllocBody738_109 : StackLang.HolProg 64 :=
.seq AllocBody738_63 AllocBody738_108

def AllocBody738_110 : StackLang.HolProg 64 :=
.seq AllocBody738_62 AllocBody738_109

def AllocBody738_111 : StackLang.HolProg 64 :=
.seq AllocBody738_43 AllocBody738_110

def AllocBody738_112 : StackLang.HolProg 64 :=
.seq AllocBody738_40 AllocBody738_111

def AllocBody738_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody738_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 0#64))

def AllocBody738_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 8#64))

def AllocBody738_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 16#64))

def AllocBody738_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 24#64))

def AllocBody738_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 32#64))

def AllocBody738_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 9 40#64))

def AllocBody738_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody738_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody738_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody738_132 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_133 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody738_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody738_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody738_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody738_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody738_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody738_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 9

def AllocBody738_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 14

def AllocBody738_144 : StackLang.HolProg 64 :=
.seq AllocBody738_142 AllocBody738_143

def AllocBody738_145 : StackLang.HolProg 64 :=
.seq AllocBody738_141 AllocBody738_144

def AllocBody738_146 : StackLang.HolProg 64 :=
.seq AllocBody738_140 AllocBody738_145

def AllocBody738_147 : StackLang.HolProg 64 :=
.seq AllocBody738_139 AllocBody738_146

def AllocBody738_148 : StackLang.HolProg 64 :=
.seq AllocBody738_138 AllocBody738_147

def AllocBody738_149 : StackLang.HolProg 64 :=
.seq AllocBody738_137 AllocBody738_148

def AllocBody738_150 : StackLang.HolProg 64 :=
.seq AllocBody738_136 AllocBody738_149

def AllocBody738_151 : StackLang.HolProg 64 :=
.seq AllocBody738_135 AllocBody738_150

def AllocBody738_152 : StackLang.HolProg 64 :=
.seq AllocBody738_134 AllocBody738_151

def AllocBody738_153 : StackLang.HolProg 64 :=
.seq AllocBody738_133 AllocBody738_152

def AllocBody738_154 : StackLang.HolProg 64 :=
.seq AllocBody738_132 AllocBody738_153

def AllocBody738_155 : StackLang.HolProg 64 :=
.seq AllocBody738_131 AllocBody738_154

def AllocBody738_156 : StackLang.HolProg 64 :=
.seq AllocBody738_130 AllocBody738_155

def AllocBody738_157 : StackLang.HolProg 64 :=
.seq AllocBody738_129 AllocBody738_156

def AllocBody738_158 : StackLang.HolProg 64 :=
.seq AllocBody738_128 AllocBody738_157

def AllocBody738_159 : StackLang.HolProg 64 :=
.seq AllocBody738_127 AllocBody738_158

def AllocBody738_160 : StackLang.HolProg 64 :=
.seq AllocBody738_126 AllocBody738_159

def AllocBody738_161 : StackLang.HolProg 64 :=
.seq AllocBody738_125 AllocBody738_160

def AllocBody738_162 : StackLang.HolProg 64 :=
.seq AllocBody738_124 AllocBody738_161

def AllocBody738_163 : StackLang.HolProg 64 :=
.seq AllocBody738_123 AllocBody738_162

def AllocBody738_164 : StackLang.HolProg 64 :=
.seq AllocBody738_122 AllocBody738_163

def AllocBody738_165 : StackLang.HolProg 64 :=
.seq AllocBody738_121 AllocBody738_164

def AllocBody738_166 : StackLang.HolProg 64 :=
.seq AllocBody738_120 AllocBody738_165

def AllocBody738_167 : StackLang.HolProg 64 :=
.seq AllocBody738_119 AllocBody738_166

def AllocBody738_168 : StackLang.HolProg 64 :=
.seq AllocBody738_118 AllocBody738_167

def AllocBody738_169 : StackLang.HolProg 64 :=
.seq AllocBody738_117 AllocBody738_168

def AllocBody738_170 : StackLang.HolProg 64 :=
.seq AllocBody738_116 AllocBody738_169

def AllocBody738_171 : StackLang.HolProg 64 :=
.seq AllocBody738_115 AllocBody738_170

def AllocBody738_172 : StackLang.HolProg 64 :=
.seq AllocBody738_114 AllocBody738_171

def AllocBody738_173 : StackLang.HolProg 64 :=
.seq AllocBody738_113 AllocBody738_172

def AllocBody738_174 : StackLang.HolProg 64 :=
.seq AllocBody738_112 AllocBody738_173

def AllocBody738_175 : StackLang.HolProg 64 :=
.seq AllocBody738_39 AllocBody738_174

def AllocBody738_176 : StackLang.HolProg 64 :=
.seq AllocBody738_24 AllocBody738_175

def AllocBody738_177 : StackLang.HolProg 64 :=
.seq AllocBody738_23 AllocBody738_176

def AllocBody738_178 : StackLang.HolProg 64 :=
.seq AllocBody738_22 AllocBody738_177

def AllocBody738_179 : StackLang.HolProg 64 :=
.seq AllocBody738_21 AllocBody738_178

def AllocBody738_180 : StackLang.HolProg 64 :=
.seq AllocBody738_20 AllocBody738_179

def AllocBody738_181 : StackLang.HolProg 64 :=
.seq AllocBody738_19 AllocBody738_180

def AllocBody738_182 : StackLang.HolProg 64 :=
.seq AllocBody738_18 AllocBody738_181

def AllocBody738_183 : StackLang.HolProg 64 :=
.seq AllocBody738_17 AllocBody738_182

def AllocBody738_184 : StackLang.HolProg 64 :=
.seq AllocBody738_16 AllocBody738_183

def AllocBody738_185 : StackLang.HolProg 64 :=
.seq AllocBody738_15 AllocBody738_184

def AllocBody738_186 : StackLang.HolProg 64 :=
.seq AllocBody738_14 AllocBody738_185

def AllocBody738_187 : StackLang.HolProg 64 :=
.seq AllocBody738_13 AllocBody738_186

def AllocBody738_188 : StackLang.HolProg 64 :=
.seq AllocBody738_12 AllocBody738_187

def AllocBody738_189 : StackLang.HolProg 64 :=
.seq AllocBody738_11 AllocBody738_188

def AllocBody738_190 : StackLang.HolProg 64 :=
.seq AllocBody738_10 AllocBody738_189

def AllocBody738_191 : StackLang.HolProg 64 :=
.seq AllocBody738_9 AllocBody738_190

def AllocBody738_192 : StackLang.HolProg 64 :=
.seq AllocBody738_8 AllocBody738_191

def AllocBody738_193 : StackLang.HolProg 64 :=
.seq AllocBody738_7 AllocBody738_192

def AllocBody738_194 : StackLang.HolProg 64 :=
.seq AllocBody738_6 AllocBody738_193

def AllocBody738_195 : StackLang.HolProg 64 :=
.seq AllocBody738_5 AllocBody738_194

def AllocBody738_196 : StackLang.HolProg 64 :=
.seq AllocBody738_4 AllocBody738_195

def AllocBody738_197 : StackLang.HolProg 64 :=
.seq AllocBody738_3 AllocBody738_196

def AllocBody738_198 : StackLang.HolProg 64 :=
.seq AllocBody738_2 AllocBody738_197

def AllocBody738_199 : StackLang.HolProg 64 :=
.seq AllocBody738_1 AllocBody738_198

def AllocBody738_200 : StackLang.HolProg 64 :=
.seq AllocBody738_0 AllocBody738_199

def Alloc738 : Nat × StackLang.HolProg 64 := (738, AllocBody738_200)
theorem Alloc738_eq : StackAlloc.progComp (738, raw738) = Alloc738 := by
  kernel_rfl
#print axioms Alloc738_eq
end InitECandidate.Proofs.BackendStages
