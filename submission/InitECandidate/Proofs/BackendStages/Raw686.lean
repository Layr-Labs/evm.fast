import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function686
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody686_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 13

def rawBody686_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody686_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1152#64)

def rawBody686_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 12

def rawBody686_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 11

def rawBody686_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def rawBody686_6 : StackLang.HolProg 64 :=
.seq rawBody686_4 rawBody686_5

def rawBody686_7 : StackLang.HolProg 64 :=
.seq rawBody686_3 rawBody686_6

def rawBody686_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2923#64)

def rawBody686_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_11 : StackLang.HolProg 64 :=
.seq rawBody686_9 rawBody686_10

def rawBody686_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody686_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody686_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 3

def rawBody686_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody686_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody686_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody686_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody686_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_22 : StackLang.HolProg 64 :=
.seq rawBody686_20 rawBody686_21

def rawBody686_23 : StackLang.HolProg 64 :=
.seq rawBody686_19 rawBody686_22

def rawBody686_24 : StackLang.HolProg 64 :=
.seq rawBody686_18 rawBody686_23

def rawBody686_25 : StackLang.HolProg 64 :=
.seq rawBody686_17 rawBody686_24

def rawBody686_26 : StackLang.HolProg 64 :=
.seq rawBody686_16 rawBody686_25

def rawBody686_27 : StackLang.HolProg 64 :=
.seq rawBody686_15 rawBody686_26

def rawBody686_28 : StackLang.HolProg 64 :=
.seq rawBody686_14 rawBody686_27

def rawBody686_29 : StackLang.HolProg 64 :=
.seq rawBody686_13 rawBody686_28

def rawBody686_30 : StackLang.HolProg 64 :=
.seq rawBody686_12 rawBody686_29

def rawBody686_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody686_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody686_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody686_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 11

def rawBody686_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody686_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody686_40 : StackLang.HolProg 64 :=
.seq rawBody686_38 rawBody686_39

def rawBody686_41 : StackLang.HolProg 64 :=
.seq rawBody686_37 rawBody686_40

def rawBody686_42 : StackLang.HolProg 64 :=
.seq rawBody686_36 rawBody686_41

def rawBody686_43 : StackLang.HolProg 64 :=
.seq rawBody686_35 rawBody686_42

def rawBody686_44 : StackLang.HolProg 64 :=
.seq rawBody686_34 rawBody686_43

def rawBody686_45 : StackLang.HolProg 64 :=
.seq rawBody686_33 rawBody686_44

def rawBody686_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 11

def rawBody686_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody686_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody686_49 : StackLang.HolProg 64 :=
.seq rawBody686_47 rawBody686_48

def rawBody686_50 : StackLang.HolProg 64 :=
.seq rawBody686_46 rawBody686_49

def rawBody686_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody686_52 : StackLang.HolProg 64 :=
.seq rawBody686_50 rawBody686_51

def rawBody686_53 : StackLang.HolProg 64 :=
.call (some (rawBody686_45, 0, 686, 2)) (Sum.inl 78) (some (rawBody686_52, 686, 3))

def rawBody686_54 : StackLang.HolProg 64 :=
.seq rawBody686_32 rawBody686_53

def rawBody686_55 : StackLang.HolProg 64 :=
.seq rawBody686_31 rawBody686_54

def rawBody686_56 : StackLang.HolProg 64 :=
.seq rawBody686_30 rawBody686_55

def rawBody686_57 : StackLang.HolProg 64 :=
.seq rawBody686_11 rawBody686_56

def rawBody686_58 : StackLang.HolProg 64 :=
.seq rawBody686_8 rawBody686_57

def rawBody686_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody686_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody686_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody686_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody686_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody686_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 10

def rawBody686_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody686_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody686_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 7

def rawBody686_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody686_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody686_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody686_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody686_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody686_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 56#64))

def rawBody686_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 9#64)

def rawBody686_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 11

def rawBody686_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 3

def rawBody686_90 : StackLang.HolProg 64 :=
.seq rawBody686_88 rawBody686_89

def rawBody686_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 10

def rawBody686_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 11

def rawBody686_93 : StackLang.HolProg 64 :=
.seq rawBody686_91 rawBody686_92

def rawBody686_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 10

def rawBody686_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 8 9

def rawBody686_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 8

def rawBody686_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 6

def rawBody686_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 5

def rawBody686_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody686_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 9 2

def rawBody686_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody686_102 : StackLang.HolProg 64 :=
.seq rawBody686_100 rawBody686_101

def rawBody686_103 : StackLang.HolProg 64 :=
.seq rawBody686_99 rawBody686_102

def rawBody686_104 : StackLang.HolProg 64 :=
.seq rawBody686_98 rawBody686_103

def rawBody686_105 : StackLang.HolProg 64 :=
.seq rawBody686_97 rawBody686_104

def rawBody686_106 : StackLang.HolProg 64 :=
.seq rawBody686_96 rawBody686_105

def rawBody686_107 : StackLang.HolProg 64 :=
.seq rawBody686_95 rawBody686_106

def rawBody686_108 : StackLang.HolProg 64 :=
.seq rawBody686_94 rawBody686_107

def rawBody686_109 : StackLang.HolProg 64 :=
.seq rawBody686_93 rawBody686_108

def rawBody686_110 : StackLang.HolProg 64 :=
.seq rawBody686_90 rawBody686_109

def rawBody686_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2924#64)

def rawBody686_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_114 : StackLang.HolProg 64 :=
.seq rawBody686_112 rawBody686_113

def rawBody686_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody686_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody686_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 5

def rawBody686_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody686_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody686_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody686_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody686_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_125 : StackLang.HolProg 64 :=
.seq rawBody686_123 rawBody686_124

def rawBody686_126 : StackLang.HolProg 64 :=
.seq rawBody686_122 rawBody686_125

def rawBody686_127 : StackLang.HolProg 64 :=
.seq rawBody686_121 rawBody686_126

def rawBody686_128 : StackLang.HolProg 64 :=
.seq rawBody686_120 rawBody686_127

def rawBody686_129 : StackLang.HolProg 64 :=
.seq rawBody686_119 rawBody686_128

def rawBody686_130 : StackLang.HolProg 64 :=
.seq rawBody686_118 rawBody686_129

def rawBody686_131 : StackLang.HolProg 64 :=
.seq rawBody686_117 rawBody686_130

def rawBody686_132 : StackLang.HolProg 64 :=
.seq rawBody686_116 rawBody686_131

def rawBody686_133 : StackLang.HolProg 64 :=
.seq rawBody686_115 rawBody686_132

def rawBody686_134 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody686_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_136 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody686_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody686_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody686_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody686_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody686_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody686_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody686_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody686_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody686_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody686_148 : StackLang.HolProg 64 :=
.seq rawBody686_146 rawBody686_147

def rawBody686_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody686_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody686_151 : StackLang.HolProg 64 :=
.seq rawBody686_149 rawBody686_150

def rawBody686_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody686_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody686_154 : StackLang.HolProg 64 :=
.seq rawBody686_152 rawBody686_153

def rawBody686_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody686_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody686_157 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody686_158 : StackLang.HolProg 64 :=
.seq rawBody686_156 rawBody686_157

def rawBody686_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody686_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody686_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody686_162 : StackLang.HolProg 64 :=
.seq rawBody686_160 rawBody686_161

def rawBody686_163 : StackLang.HolProg 64 :=
.seq rawBody686_159 rawBody686_162

def rawBody686_164 : StackLang.HolProg 64 :=
.seq rawBody686_158 rawBody686_163

def rawBody686_165 : StackLang.HolProg 64 :=
.seq rawBody686_155 rawBody686_164

def rawBody686_166 : StackLang.HolProg 64 :=
.seq rawBody686_154 rawBody686_165

def rawBody686_167 : StackLang.HolProg 64 :=
.seq rawBody686_151 rawBody686_166

def rawBody686_168 : StackLang.HolProg 64 :=
.seq rawBody686_148 rawBody686_167

def rawBody686_169 : StackLang.HolProg 64 :=
.seq rawBody686_145 rawBody686_168

def rawBody686_170 : StackLang.HolProg 64 :=
.seq rawBody686_144 rawBody686_169

def rawBody686_171 : StackLang.HolProg 64 :=
.seq rawBody686_143 rawBody686_170

def rawBody686_172 : StackLang.HolProg 64 :=
.seq rawBody686_142 rawBody686_171

def rawBody686_173 : StackLang.HolProg 64 :=
.seq rawBody686_141 rawBody686_172

def rawBody686_174 : StackLang.HolProg 64 :=
.seq rawBody686_140 rawBody686_173

def rawBody686_175 : StackLang.HolProg 64 :=
.seq rawBody686_139 rawBody686_174

def rawBody686_176 : StackLang.HolProg 64 :=
.seq rawBody686_138 rawBody686_175

def rawBody686_177 : StackLang.HolProg 64 :=
.seq rawBody686_137 rawBody686_176

def rawBody686_178 : StackLang.HolProg 64 :=
.seq rawBody686_136 rawBody686_177

def rawBody686_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 9

def rawBody686_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 8

def rawBody686_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 7

def rawBody686_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 9

def rawBody686_183 : StackLang.HolProg 64 :=
.seq rawBody686_181 rawBody686_182

def rawBody686_184 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 6

def rawBody686_185 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 8

def rawBody686_186 : StackLang.HolProg 64 :=
.seq rawBody686_184 rawBody686_185

def rawBody686_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 5

def rawBody686_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 7

def rawBody686_189 : StackLang.HolProg 64 :=
.seq rawBody686_187 rawBody686_188

def rawBody686_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody686_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 3

def rawBody686_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 6

def rawBody686_193 : StackLang.HolProg 64 :=
.seq rawBody686_191 rawBody686_192

def rawBody686_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody686_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 1

def rawBody686_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 5

def rawBody686_197 : StackLang.HolProg 64 :=
.seq rawBody686_195 rawBody686_196

def rawBody686_198 : StackLang.HolProg 64 :=
.seq rawBody686_194 rawBody686_197

def rawBody686_199 : StackLang.HolProg 64 :=
.seq rawBody686_193 rawBody686_198

def rawBody686_200 : StackLang.HolProg 64 :=
.seq rawBody686_190 rawBody686_199

def rawBody686_201 : StackLang.HolProg 64 :=
.seq rawBody686_189 rawBody686_200

def rawBody686_202 : StackLang.HolProg 64 :=
.seq rawBody686_186 rawBody686_201

def rawBody686_203 : StackLang.HolProg 64 :=
.seq rawBody686_183 rawBody686_202

def rawBody686_204 : StackLang.HolProg 64 :=
.seq rawBody686_180 rawBody686_203

def rawBody686_205 : StackLang.HolProg 64 :=
.seq rawBody686_179 rawBody686_204

def rawBody686_206 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody686_207 : StackLang.HolProg 64 :=
.seq rawBody686_205 rawBody686_206

def rawBody686_208 : StackLang.HolProg 64 :=
.call (some (rawBody686_178, 0, 686, 4)) (Sum.inl 665) (some (rawBody686_207, 686, 5))

def rawBody686_209 : StackLang.HolProg 64 :=
.seq rawBody686_135 rawBody686_208

def rawBody686_210 : StackLang.HolProg 64 :=
.seq rawBody686_134 rawBody686_209

def rawBody686_211 : StackLang.HolProg 64 :=
.seq rawBody686_133 rawBody686_210

def rawBody686_212 : StackLang.HolProg 64 :=
.seq rawBody686_114 rawBody686_211

def rawBody686_213 : StackLang.HolProg 64 :=
.seq rawBody686_111 rawBody686_212

def rawBody686_214 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_215 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody686_216 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_217 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2925#64)

def rawBody686_218 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_219 : StackLang.HolProg 64 :=
.seq rawBody686_217 rawBody686_218

def rawBody686_220 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody686_221 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody686_222 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody686_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 686 7

def rawBody686_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody686_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody686_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody686_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody686_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_230 : StackLang.HolProg 64 :=
.seq rawBody686_228 rawBody686_229

def rawBody686_231 : StackLang.HolProg 64 :=
.seq rawBody686_227 rawBody686_230

def rawBody686_232 : StackLang.HolProg 64 :=
.seq rawBody686_226 rawBody686_231

def rawBody686_233 : StackLang.HolProg 64 :=
.seq rawBody686_225 rawBody686_232

def rawBody686_234 : StackLang.HolProg 64 :=
.seq rawBody686_224 rawBody686_233

def rawBody686_235 : StackLang.HolProg 64 :=
.seq rawBody686_223 rawBody686_234

def rawBody686_236 : StackLang.HolProg 64 :=
.seq rawBody686_222 rawBody686_235

def rawBody686_237 : StackLang.HolProg 64 :=
.seq rawBody686_221 rawBody686_236

def rawBody686_238 : StackLang.HolProg 64 :=
.seq rawBody686_220 rawBody686_237

def rawBody686_239 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody686_240 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_242 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody686_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody686_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody686_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody686_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody686_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody686_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 12

def rawBody686_249 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def rawBody686_250 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 10

def rawBody686_251 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody686_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def rawBody686_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 7

def rawBody686_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def rawBody686_255 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody686_256 : StackLang.HolProg 64 :=
.seq rawBody686_254 rawBody686_255

def rawBody686_257 : StackLang.HolProg 64 :=
.seq rawBody686_253 rawBody686_256

def rawBody686_258 : StackLang.HolProg 64 :=
.seq rawBody686_252 rawBody686_257

def rawBody686_259 : StackLang.HolProg 64 :=
.seq rawBody686_251 rawBody686_258

def rawBody686_260 : StackLang.HolProg 64 :=
.seq rawBody686_250 rawBody686_259

def rawBody686_261 : StackLang.HolProg 64 :=
.seq rawBody686_249 rawBody686_260

def rawBody686_262 : StackLang.HolProg 64 :=
.seq rawBody686_248 rawBody686_261

def rawBody686_263 : StackLang.HolProg 64 :=
.seq rawBody686_247 rawBody686_262

def rawBody686_264 : StackLang.HolProg 64 :=
.seq rawBody686_246 rawBody686_263

def rawBody686_265 : StackLang.HolProg 64 :=
.seq rawBody686_245 rawBody686_264

def rawBody686_266 : StackLang.HolProg 64 :=
.seq rawBody686_244 rawBody686_265

def rawBody686_267 : StackLang.HolProg 64 :=
.seq rawBody686_243 rawBody686_266

def rawBody686_268 : StackLang.HolProg 64 :=
.seq rawBody686_242 rawBody686_267

def rawBody686_269 : StackLang.HolProg 64 :=
.seq rawBody686_241 rawBody686_268

def rawBody686_270 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 15 12

def rawBody686_271 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 11

def rawBody686_272 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 14 10

def rawBody686_273 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 9

def rawBody686_274 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 11 8

def rawBody686_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 12 7

def rawBody686_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 13 6

def rawBody686_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 5

def rawBody686_278 : StackLang.HolProg 64 :=
.seq rawBody686_276 rawBody686_277

def rawBody686_279 : StackLang.HolProg 64 :=
.seq rawBody686_275 rawBody686_278

def rawBody686_280 : StackLang.HolProg 64 :=
.seq rawBody686_274 rawBody686_279

def rawBody686_281 : StackLang.HolProg 64 :=
.seq rawBody686_273 rawBody686_280

def rawBody686_282 : StackLang.HolProg 64 :=
.seq rawBody686_272 rawBody686_281

def rawBody686_283 : StackLang.HolProg 64 :=
.seq rawBody686_271 rawBody686_282

def rawBody686_284 : StackLang.HolProg 64 :=
.seq rawBody686_270 rawBody686_283

def rawBody686_285 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody686_286 : StackLang.HolProg 64 :=
.seq rawBody686_284 rawBody686_285

def rawBody686_287 : StackLang.HolProg 64 :=
.call (some (rawBody686_269, 0, 686, 6)) (Sum.inl 659) (some (rawBody686_286, 686, 7))

def rawBody686_288 : StackLang.HolProg 64 :=
.seq rawBody686_240 rawBody686_287

def rawBody686_289 : StackLang.HolProg 64 :=
.seq rawBody686_239 rawBody686_288

def rawBody686_290 : StackLang.HolProg 64 :=
.seq rawBody686_238 rawBody686_289

def rawBody686_291 : StackLang.HolProg 64 :=
.seq rawBody686_219 rawBody686_290

def rawBody686_292 : StackLang.HolProg 64 :=
.seq rawBody686_216 rawBody686_291

def rawBody686_293 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_294 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody686_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def rawBody686_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def rawBody686_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_300 : StackLang.HolProg 64 :=
.seq rawBody686_298 rawBody686_299

def rawBody686_301 : StackLang.HolProg 64 :=
.seq rawBody686_297 rawBody686_300

def rawBody686_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_304 : StackLang.HolProg 64 :=
.seq rawBody686_302 rawBody686_303

def rawBody686_305 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody686_301 rawBody686_304

def rawBody686_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_307 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 1#64)

def rawBody686_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def rawBody686_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_312 : StackLang.HolProg 64 :=
.seq rawBody686_310 rawBody686_311

def rawBody686_313 : StackLang.HolProg 64 :=
.seq rawBody686_309 rawBody686_312

def rawBody686_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_316 : StackLang.HolProg 64 :=
.seq rawBody686_314 rawBody686_315

def rawBody686_317 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0) rawBody686_313 rawBody686_316

def rawBody686_318 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_319 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_320 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 384#64)

def rawBody686_321 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody686_322 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith (Flapjack.Compiler.Encoders.Asm.HolArith.longMul 3 0 0 2))

def rawBody686_323 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_324 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def rawBody686_325 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_326 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody686_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody686_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody686_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody686_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_334 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody686_335 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_336 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody686_337 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody686_339 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody686_340 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_341 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody686_342 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_343 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 14
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody686_344 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_345 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def rawBody686_346 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def rawBody686_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def rawBody686_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody686_352 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 15 12

def rawBody686_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 13 11

def rawBody686_354 : StackLang.HolProg 64 :=
.seq rawBody686_352 rawBody686_353

def rawBody686_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody686_356 : StackLang.HolProg 64 :=
.seq rawBody686_354 rawBody686_355

def rawBody686_357 : StackLang.HolProg 64 :=
.seq rawBody686_351 rawBody686_356

def rawBody686_358 : StackLang.HolProg 64 :=
.seq rawBody686_350 rawBody686_357

def rawBody686_359 : StackLang.HolProg 64 :=
.seq rawBody686_349 rawBody686_358

def rawBody686_360 : StackLang.HolProg 64 :=
.seq rawBody686_348 rawBody686_359

def rawBody686_361 : StackLang.HolProg 64 :=
.seq rawBody686_347 rawBody686_360

def rawBody686_362 : StackLang.HolProg 64 :=
.seq rawBody686_346 rawBody686_361

def rawBody686_363 : StackLang.HolProg 64 :=
.seq rawBody686_345 rawBody686_362

def rawBody686_364 : StackLang.HolProg 64 :=
.seq rawBody686_344 rawBody686_363

def rawBody686_365 : StackLang.HolProg 64 :=
.seq rawBody686_343 rawBody686_364

def rawBody686_366 : StackLang.HolProg 64 :=
.seq rawBody686_342 rawBody686_365

def rawBody686_367 : StackLang.HolProg 64 :=
.seq rawBody686_341 rawBody686_366

def rawBody686_368 : StackLang.HolProg 64 :=
.seq rawBody686_340 rawBody686_367

def rawBody686_369 : StackLang.HolProg 64 :=
.seq rawBody686_339 rawBody686_368

def rawBody686_370 : StackLang.HolProg 64 :=
.seq rawBody686_338 rawBody686_369

def rawBody686_371 : StackLang.HolProg 64 :=
.seq rawBody686_337 rawBody686_370

def rawBody686_372 : StackLang.HolProg 64 :=
.seq rawBody686_336 rawBody686_371

def rawBody686_373 : StackLang.HolProg 64 :=
.seq rawBody686_335 rawBody686_372

def rawBody686_374 : StackLang.HolProg 64 :=
.seq rawBody686_334 rawBody686_373

def rawBody686_375 : StackLang.HolProg 64 :=
.seq rawBody686_333 rawBody686_374

def rawBody686_376 : StackLang.HolProg 64 :=
.seq rawBody686_332 rawBody686_375

def rawBody686_377 : StackLang.HolProg 64 :=
.seq rawBody686_331 rawBody686_376

def rawBody686_378 : StackLang.HolProg 64 :=
.seq rawBody686_330 rawBody686_377

def rawBody686_379 : StackLang.HolProg 64 :=
.seq rawBody686_329 rawBody686_378

def rawBody686_380 : StackLang.HolProg 64 :=
.seq rawBody686_328 rawBody686_379

def rawBody686_381 : StackLang.HolProg 64 :=
.seq rawBody686_327 rawBody686_380

def rawBody686_382 : StackLang.HolProg 64 :=
.seq rawBody686_326 rawBody686_381

def rawBody686_383 : StackLang.HolProg 64 :=
.seq rawBody686_325 rawBody686_382

def rawBody686_384 : StackLang.HolProg 64 :=
.seq rawBody686_324 rawBody686_383

def rawBody686_385 : StackLang.HolProg 64 :=
.seq rawBody686_323 rawBody686_384

def rawBody686_386 : StackLang.HolProg 64 :=
.seq rawBody686_322 rawBody686_385

def rawBody686_387 : StackLang.HolProg 64 :=
.seq rawBody686_321 rawBody686_386

def rawBody686_388 : StackLang.HolProg 64 :=
.seq rawBody686_320 rawBody686_387

def rawBody686_389 : StackLang.HolProg 64 :=
.seq rawBody686_319 rawBody686_388

def rawBody686_390 : StackLang.HolProg 64 :=
.seq rawBody686_318 rawBody686_389

def rawBody686_391 : StackLang.HolProg 64 :=
.seq rawBody686_317 rawBody686_390

def rawBody686_392 : StackLang.HolProg 64 :=
.seq rawBody686_308 rawBody686_391

def rawBody686_393 : StackLang.HolProg 64 :=
.seq rawBody686_307 rawBody686_392

def rawBody686_394 : StackLang.HolProg 64 :=
.seq rawBody686_306 rawBody686_393

def rawBody686_395 : StackLang.HolProg 64 :=
.seq rawBody686_305 rawBody686_394

def rawBody686_396 : StackLang.HolProg 64 :=
.seq rawBody686_296 rawBody686_395

def rawBody686_397 : StackLang.HolProg 64 :=
.seq rawBody686_295 rawBody686_396

def rawBody686_398 : StackLang.HolProg 64 :=
.seq rawBody686_294 rawBody686_397

def rawBody686_399 : StackLang.HolProg 64 :=
.seq rawBody686_293 rawBody686_398

def rawBody686_400 : StackLang.HolProg 64 :=
.seq rawBody686_292 rawBody686_399

def rawBody686_401 : StackLang.HolProg 64 :=
.seq rawBody686_215 rawBody686_400

def rawBody686_402 : StackLang.HolProg 64 :=
.seq rawBody686_214 rawBody686_401

def rawBody686_403 : StackLang.HolProg 64 :=
.seq rawBody686_213 rawBody686_402

def rawBody686_404 : StackLang.HolProg 64 :=
.seq rawBody686_110 rawBody686_403

def rawBody686_405 : StackLang.HolProg 64 :=
.seq rawBody686_87 rawBody686_404

def rawBody686_406 : StackLang.HolProg 64 :=
.seq rawBody686_86 rawBody686_405

def rawBody686_407 : StackLang.HolProg 64 :=
.seq rawBody686_85 rawBody686_406

def rawBody686_408 : StackLang.HolProg 64 :=
.seq rawBody686_84 rawBody686_407

def rawBody686_409 : StackLang.HolProg 64 :=
.seq rawBody686_83 rawBody686_408

def rawBody686_410 : StackLang.HolProg 64 :=
.seq rawBody686_82 rawBody686_409

def rawBody686_411 : StackLang.HolProg 64 :=
.seq rawBody686_81 rawBody686_410

def rawBody686_412 : StackLang.HolProg 64 :=
.seq rawBody686_80 rawBody686_411

def rawBody686_413 : StackLang.HolProg 64 :=
.seq rawBody686_79 rawBody686_412

def rawBody686_414 : StackLang.HolProg 64 :=
.seq rawBody686_78 rawBody686_413

def rawBody686_415 : StackLang.HolProg 64 :=
.seq rawBody686_77 rawBody686_414

def rawBody686_416 : StackLang.HolProg 64 :=
.seq rawBody686_76 rawBody686_415

def rawBody686_417 : StackLang.HolProg 64 :=
.seq rawBody686_75 rawBody686_416

def rawBody686_418 : StackLang.HolProg 64 :=
.seq rawBody686_74 rawBody686_417

def rawBody686_419 : StackLang.HolProg 64 :=
.seq rawBody686_73 rawBody686_418

def rawBody686_420 : StackLang.HolProg 64 :=
.seq rawBody686_72 rawBody686_419

def rawBody686_421 : StackLang.HolProg 64 :=
.seq rawBody686_71 rawBody686_420

def rawBody686_422 : StackLang.HolProg 64 :=
.seq rawBody686_70 rawBody686_421

def rawBody686_423 : StackLang.HolProg 64 :=
.seq rawBody686_69 rawBody686_422

def rawBody686_424 : StackLang.HolProg 64 :=
.seq rawBody686_68 rawBody686_423

def rawBody686_425 : StackLang.HolProg 64 :=
.seq rawBody686_67 rawBody686_424

def rawBody686_426 : StackLang.HolProg 64 :=
.seq rawBody686_66 rawBody686_425

def rawBody686_427 : StackLang.HolProg 64 :=
.seq rawBody686_65 rawBody686_426

def rawBody686_428 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_429 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody686_430 : StackLang.HolProg 64 :=
.seq rawBody686_428 rawBody686_429

def rawBody686_431 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody686_427 rawBody686_430

def rawBody686_432 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_433 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 12

def rawBody686_434 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 11

def rawBody686_435 : StackLang.HolProg 64 :=
.seq rawBody686_433 rawBody686_434

def rawBody686_436 : StackLang.HolProg 64 :=
.seq rawBody686_432 rawBody686_435

def rawBody686_437 : StackLang.HolProg 64 :=
.seq rawBody686_431 rawBody686_436

def rawBody686_438 : StackLang.HolProg 64 :=
.seq rawBody686_64 rawBody686_437

def rawBody686_439 : StackLang.HolProg 64 :=
.seq rawBody686_63 rawBody686_438

def rawBody686_440 : StackLang.HolProg 64 :=
.loop rawBody686_439

def rawBody686_441 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody686_442 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody686_443 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody686_444 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 12

def rawBody686_445 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 13

def rawBody686_446 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody686_447 : StackLang.HolProg 64 :=
.seq rawBody686_445 rawBody686_446

def rawBody686_448 : StackLang.HolProg 64 :=
.seq rawBody686_444 rawBody686_447

def rawBody686_449 : StackLang.HolProg 64 :=
.seq rawBody686_443 rawBody686_448

def rawBody686_450 : StackLang.HolProg 64 :=
.seq rawBody686_442 rawBody686_449

def rawBody686_451 : StackLang.HolProg 64 :=
.seq rawBody686_441 rawBody686_450

def rawBody686_452 : StackLang.HolProg 64 :=
.seq rawBody686_440 rawBody686_451

def rawBody686_453 : StackLang.HolProg 64 :=
.seq rawBody686_62 rawBody686_452

def rawBody686_454 : StackLang.HolProg 64 :=
.seq rawBody686_61 rawBody686_453

def rawBody686_455 : StackLang.HolProg 64 :=
.seq rawBody686_60 rawBody686_454

def rawBody686_456 : StackLang.HolProg 64 :=
.seq rawBody686_59 rawBody686_455

def rawBody686_457 : StackLang.HolProg 64 :=
.seq rawBody686_58 rawBody686_456

def rawBody686_458 : StackLang.HolProg 64 :=
.seq rawBody686_7 rawBody686_457

def rawBody686_459 : StackLang.HolProg 64 :=
.seq rawBody686_2 rawBody686_458

def rawBody686_460 : StackLang.HolProg 64 :=
.seq rawBody686_1 rawBody686_459

def rawBody686_461 : StackLang.HolProg 64 :=
.seq rawBody686_0 rawBody686_460

def raw686 : StackLang.HolProg 64 := rawBody686_461
theorem raw686_eq : StackRawCall.compTop RawInfo.rawInfo (function686 (.list [])).1 = raw686 := by
  kernel_rfl
#print axioms raw686_eq
end InitECandidate.Proofs.BackendStages
