import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function415
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody415_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody415_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody415_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody415_3 : StackLang.HolProg 64 :=
.seq rawBody415_1 rawBody415_2

def rawBody415_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1238#64)

def rawBody415_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_7 : StackLang.HolProg 64 :=
.seq rawBody415_5 rawBody415_6

def rawBody415_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody415_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody415_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 3

def rawBody415_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody415_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody415_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody415_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody415_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_18 : StackLang.HolProg 64 :=
.seq rawBody415_16 rawBody415_17

def rawBody415_19 : StackLang.HolProg 64 :=
.seq rawBody415_15 rawBody415_18

def rawBody415_20 : StackLang.HolProg 64 :=
.seq rawBody415_14 rawBody415_19

def rawBody415_21 : StackLang.HolProg 64 :=
.seq rawBody415_13 rawBody415_20

def rawBody415_22 : StackLang.HolProg 64 :=
.seq rawBody415_12 rawBody415_21

def rawBody415_23 : StackLang.HolProg 64 :=
.seq rawBody415_11 rawBody415_22

def rawBody415_24 : StackLang.HolProg 64 :=
.seq rawBody415_10 rawBody415_23

def rawBody415_25 : StackLang.HolProg 64 :=
.seq rawBody415_9 rawBody415_24

def rawBody415_26 : StackLang.HolProg 64 :=
.seq rawBody415_8 rawBody415_25

def rawBody415_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody415_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody415_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody415_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody415_35 : StackLang.HolProg 64 :=
.seq rawBody415_33 rawBody415_34

def rawBody415_36 : StackLang.HolProg 64 :=
.seq rawBody415_32 rawBody415_35

def rawBody415_37 : StackLang.HolProg 64 :=
.seq rawBody415_31 rawBody415_36

def rawBody415_38 : StackLang.HolProg 64 :=
.seq rawBody415_30 rawBody415_37

def rawBody415_39 : StackLang.HolProg 64 :=
.seq rawBody415_29 rawBody415_38

def rawBody415_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody415_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody415_42 : StackLang.HolProg 64 :=
.seq rawBody415_40 rawBody415_41

def rawBody415_43 : StackLang.HolProg 64 :=
.call (some (rawBody415_39, 0, 415, 2)) (Sum.inl 407) (some (rawBody415_42, 415, 3))

def rawBody415_44 : StackLang.HolProg 64 :=
.seq rawBody415_28 rawBody415_43

def rawBody415_45 : StackLang.HolProg 64 :=
.seq rawBody415_27 rawBody415_44

def rawBody415_46 : StackLang.HolProg 64 :=
.seq rawBody415_26 rawBody415_45

def rawBody415_47 : StackLang.HolProg 64 :=
.seq rawBody415_7 rawBody415_46

def rawBody415_48 : StackLang.HolProg 64 :=
.seq rawBody415_4 rawBody415_47

def rawBody415_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody415_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody415_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody415_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody415_58 : StackLang.HolProg 64 :=
.seq rawBody415_56 rawBody415_57

def rawBody415_59 : StackLang.HolProg 64 :=
.seq rawBody415_55 rawBody415_58

def rawBody415_60 : StackLang.HolProg 64 :=
.seq rawBody415_54 rawBody415_59

def rawBody415_61 : StackLang.HolProg 64 :=
.seq rawBody415_53 rawBody415_60

def rawBody415_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_63 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody415_61 rawBody415_62

def rawBody415_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody415_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody415_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody415_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody415_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551480#64))

def rawBody415_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody415_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody415_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1239#64)

def rawBody415_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_77 : StackLang.HolProg 64 :=
.seq rawBody415_75 rawBody415_76

def rawBody415_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody415_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody415_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 5

def rawBody415_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody415_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody415_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody415_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody415_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_88 : StackLang.HolProg 64 :=
.seq rawBody415_86 rawBody415_87

def rawBody415_89 : StackLang.HolProg 64 :=
.seq rawBody415_85 rawBody415_88

def rawBody415_90 : StackLang.HolProg 64 :=
.seq rawBody415_84 rawBody415_89

def rawBody415_91 : StackLang.HolProg 64 :=
.seq rawBody415_83 rawBody415_90

def rawBody415_92 : StackLang.HolProg 64 :=
.seq rawBody415_82 rawBody415_91

def rawBody415_93 : StackLang.HolProg 64 :=
.seq rawBody415_81 rawBody415_92

def rawBody415_94 : StackLang.HolProg 64 :=
.seq rawBody415_80 rawBody415_93

def rawBody415_95 : StackLang.HolProg 64 :=
.seq rawBody415_79 rawBody415_94

def rawBody415_96 : StackLang.HolProg 64 :=
.seq rawBody415_78 rawBody415_95

def rawBody415_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody415_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody415_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody415_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody415_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody415_106 : StackLang.HolProg 64 :=
.seq rawBody415_104 rawBody415_105

def rawBody415_107 : StackLang.HolProg 64 :=
.seq rawBody415_103 rawBody415_106

def rawBody415_108 : StackLang.HolProg 64 :=
.seq rawBody415_102 rawBody415_107

def rawBody415_109 : StackLang.HolProg 64 :=
.seq rawBody415_101 rawBody415_108

def rawBody415_110 : StackLang.HolProg 64 :=
.seq rawBody415_100 rawBody415_109

def rawBody415_111 : StackLang.HolProg 64 :=
.seq rawBody415_99 rawBody415_110

def rawBody415_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody415_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody415_114 : StackLang.HolProg 64 :=
.seq rawBody415_112 rawBody415_113

def rawBody415_115 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody415_116 : StackLang.HolProg 64 :=
.seq rawBody415_114 rawBody415_115

def rawBody415_117 : StackLang.HolProg 64 :=
.call (some (rawBody415_111, 0, 415, 4)) (Sum.inl 79) (some (rawBody415_116, 415, 5))

def rawBody415_118 : StackLang.HolProg 64 :=
.seq rawBody415_98 rawBody415_117

def rawBody415_119 : StackLang.HolProg 64 :=
.seq rawBody415_97 rawBody415_118

def rawBody415_120 : StackLang.HolProg 64 :=
.seq rawBody415_96 rawBody415_119

def rawBody415_121 : StackLang.HolProg 64 :=
.seq rawBody415_77 rawBody415_120

def rawBody415_122 : StackLang.HolProg 64 :=
.seq rawBody415_74 rawBody415_121

def rawBody415_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody415_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody415_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody415_131 : StackLang.HolProg 64 :=
.seq rawBody415_129 rawBody415_130

def rawBody415_132 : StackLang.HolProg 64 :=
.seq rawBody415_128 rawBody415_131

def rawBody415_133 : StackLang.HolProg 64 :=
.seq rawBody415_127 rawBody415_132

def rawBody415_134 : StackLang.HolProg 64 :=
.seq rawBody415_126 rawBody415_133

def rawBody415_135 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_136 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody415_134 rawBody415_135

def rawBody415_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody415_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 2

def rawBody415_141 : StackLang.HolProg 64 :=
.seq rawBody415_139 rawBody415_140

def rawBody415_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1240#64)

def rawBody415_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_145 : StackLang.HolProg 64 :=
.seq rawBody415_143 rawBody415_144

def rawBody415_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody415_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody415_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody415_149 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 415 7

def rawBody415_150 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody415_151 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody415_152 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody415_153 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_154 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody415_155 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_156 : StackLang.HolProg 64 :=
.seq rawBody415_154 rawBody415_155

def rawBody415_157 : StackLang.HolProg 64 :=
.seq rawBody415_153 rawBody415_156

def rawBody415_158 : StackLang.HolProg 64 :=
.seq rawBody415_152 rawBody415_157

def rawBody415_159 : StackLang.HolProg 64 :=
.seq rawBody415_151 rawBody415_158

def rawBody415_160 : StackLang.HolProg 64 :=
.seq rawBody415_150 rawBody415_159

def rawBody415_161 : StackLang.HolProg 64 :=
.seq rawBody415_149 rawBody415_160

def rawBody415_162 : StackLang.HolProg 64 :=
.seq rawBody415_148 rawBody415_161

def rawBody415_163 : StackLang.HolProg 64 :=
.seq rawBody415_147 rawBody415_162

def rawBody415_164 : StackLang.HolProg 64 :=
.seq rawBody415_146 rawBody415_163

def rawBody415_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody415_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_168 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody415_169 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody415_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody415_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody415_173 : StackLang.HolProg 64 :=
.seq rawBody415_171 rawBody415_172

def rawBody415_174 : StackLang.HolProg 64 :=
.seq rawBody415_170 rawBody415_173

def rawBody415_175 : StackLang.HolProg 64 :=
.seq rawBody415_169 rawBody415_174

def rawBody415_176 : StackLang.HolProg 64 :=
.seq rawBody415_168 rawBody415_175

def rawBody415_177 : StackLang.HolProg 64 :=
.seq rawBody415_167 rawBody415_176

def rawBody415_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody415_179 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody415_180 : StackLang.HolProg 64 :=
.seq rawBody415_178 rawBody415_179

def rawBody415_181 : StackLang.HolProg 64 :=
.call (some (rawBody415_177, 0, 415, 6)) (Sum.inl 414) (some (rawBody415_180, 415, 7))

def rawBody415_182 : StackLang.HolProg 64 :=
.seq rawBody415_166 rawBody415_181

def rawBody415_183 : StackLang.HolProg 64 :=
.seq rawBody415_165 rawBody415_182

def rawBody415_184 : StackLang.HolProg 64 :=
.seq rawBody415_164 rawBody415_183

def rawBody415_185 : StackLang.HolProg 64 :=
.seq rawBody415_145 rawBody415_184

def rawBody415_186 : StackLang.HolProg 64 :=
.seq rawBody415_142 rawBody415_185

def rawBody415_187 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_188 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_189 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody415_190 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_191 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody415_192 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody415_195 : StackLang.HolProg 64 :=
.seq rawBody415_193 rawBody415_194

def rawBody415_196 : StackLang.HolProg 64 :=
.seq rawBody415_192 rawBody415_195

def rawBody415_197 : StackLang.HolProg 64 :=
.seq rawBody415_191 rawBody415_196

def rawBody415_198 : StackLang.HolProg 64 :=
.seq rawBody415_190 rawBody415_197

def rawBody415_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_200 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody415_198 rawBody415_199

def rawBody415_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody415_203 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody415_204 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody415_205 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody415_206 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody415_207 : StackLang.HolProg 64 :=
.seq rawBody415_205 rawBody415_206

def rawBody415_208 : StackLang.HolProg 64 :=
.seq rawBody415_204 rawBody415_207

def rawBody415_209 : StackLang.HolProg 64 :=
.seq rawBody415_203 rawBody415_208

def rawBody415_210 : StackLang.HolProg 64 :=
.seq rawBody415_202 rawBody415_209

def rawBody415_211 : StackLang.HolProg 64 :=
.seq rawBody415_201 rawBody415_210

def rawBody415_212 : StackLang.HolProg 64 :=
.seq rawBody415_200 rawBody415_211

def rawBody415_213 : StackLang.HolProg 64 :=
.seq rawBody415_189 rawBody415_212

def rawBody415_214 : StackLang.HolProg 64 :=
.seq rawBody415_188 rawBody415_213

def rawBody415_215 : StackLang.HolProg 64 :=
.seq rawBody415_187 rawBody415_214

def rawBody415_216 : StackLang.HolProg 64 :=
.seq rawBody415_186 rawBody415_215

def rawBody415_217 : StackLang.HolProg 64 :=
.seq rawBody415_141 rawBody415_216

def rawBody415_218 : StackLang.HolProg 64 :=
.seq rawBody415_138 rawBody415_217

def rawBody415_219 : StackLang.HolProg 64 :=
.seq rawBody415_137 rawBody415_218

def rawBody415_220 : StackLang.HolProg 64 :=
.seq rawBody415_136 rawBody415_219

def rawBody415_221 : StackLang.HolProg 64 :=
.seq rawBody415_125 rawBody415_220

def rawBody415_222 : StackLang.HolProg 64 :=
.seq rawBody415_124 rawBody415_221

def rawBody415_223 : StackLang.HolProg 64 :=
.seq rawBody415_123 rawBody415_222

def rawBody415_224 : StackLang.HolProg 64 :=
.seq rawBody415_122 rawBody415_223

def rawBody415_225 : StackLang.HolProg 64 :=
.seq rawBody415_73 rawBody415_224

def rawBody415_226 : StackLang.HolProg 64 :=
.seq rawBody415_72 rawBody415_225

def rawBody415_227 : StackLang.HolProg 64 :=
.seq rawBody415_71 rawBody415_226

def rawBody415_228 : StackLang.HolProg 64 :=
.seq rawBody415_70 rawBody415_227

def rawBody415_229 : StackLang.HolProg 64 :=
.seq rawBody415_69 rawBody415_228

def rawBody415_230 : StackLang.HolProg 64 :=
.seq rawBody415_68 rawBody415_229

def rawBody415_231 : StackLang.HolProg 64 :=
.seq rawBody415_67 rawBody415_230

def rawBody415_232 : StackLang.HolProg 64 :=
.seq rawBody415_66 rawBody415_231

def rawBody415_233 : StackLang.HolProg 64 :=
.seq rawBody415_65 rawBody415_232

def rawBody415_234 : StackLang.HolProg 64 :=
.seq rawBody415_64 rawBody415_233

def rawBody415_235 : StackLang.HolProg 64 :=
.seq rawBody415_63 rawBody415_234

def rawBody415_236 : StackLang.HolProg 64 :=
.seq rawBody415_52 rawBody415_235

def rawBody415_237 : StackLang.HolProg 64 :=
.seq rawBody415_51 rawBody415_236

def rawBody415_238 : StackLang.HolProg 64 :=
.seq rawBody415_50 rawBody415_237

def rawBody415_239 : StackLang.HolProg 64 :=
.seq rawBody415_49 rawBody415_238

def rawBody415_240 : StackLang.HolProg 64 :=
.seq rawBody415_48 rawBody415_239

def rawBody415_241 : StackLang.HolProg 64 :=
.seq rawBody415_3 rawBody415_240

def rawBody415_242 : StackLang.HolProg 64 :=
.seq rawBody415_0 rawBody415_241

def raw415 : StackLang.HolProg 64 := rawBody415_242
theorem raw415_eq : StackRawCall.compTop RawInfo.rawInfo (function415 (.list [])).1 = raw415 := by
  kernel_rfl
#print axioms raw415_eq
end InitECandidate.Proofs.BackendStages
