import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function408
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody408_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody408_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody408_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody408_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody408_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody408_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551480#64))

def rawBody408_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody408_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody408_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody408_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody408_10 : StackLang.HolProg 64 :=
.seq rawBody408_8 rawBody408_9

def rawBody408_11 : StackLang.HolProg 64 :=
.seq rawBody408_7 rawBody408_10

def rawBody408_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1213#64)

def rawBody408_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_15 : StackLang.HolProg 64 :=
.seq rawBody408_13 rawBody408_14

def rawBody408_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 3

def rawBody408_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_26 : StackLang.HolProg 64 :=
.seq rawBody408_24 rawBody408_25

def rawBody408_27 : StackLang.HolProg 64 :=
.seq rawBody408_23 rawBody408_26

def rawBody408_28 : StackLang.HolProg 64 :=
.seq rawBody408_22 rawBody408_27

def rawBody408_29 : StackLang.HolProg 64 :=
.seq rawBody408_21 rawBody408_28

def rawBody408_30 : StackLang.HolProg 64 :=
.seq rawBody408_20 rawBody408_29

def rawBody408_31 : StackLang.HolProg 64 :=
.seq rawBody408_19 rawBody408_30

def rawBody408_32 : StackLang.HolProg 64 :=
.seq rawBody408_18 rawBody408_31

def rawBody408_33 : StackLang.HolProg 64 :=
.seq rawBody408_17 rawBody408_32

def rawBody408_34 : StackLang.HolProg 64 :=
.seq rawBody408_16 rawBody408_33

def rawBody408_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody408_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody408_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody408_44 : StackLang.HolProg 64 :=
.seq rawBody408_42 rawBody408_43

def rawBody408_45 : StackLang.HolProg 64 :=
.seq rawBody408_41 rawBody408_44

def rawBody408_46 : StackLang.HolProg 64 :=
.seq rawBody408_40 rawBody408_45

def rawBody408_47 : StackLang.HolProg 64 :=
.seq rawBody408_39 rawBody408_46

def rawBody408_48 : StackLang.HolProg 64 :=
.seq rawBody408_38 rawBody408_47

def rawBody408_49 : StackLang.HolProg 64 :=
.seq rawBody408_37 rawBody408_48

def rawBody408_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody408_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody408_52 : StackLang.HolProg 64 :=
.seq rawBody408_50 rawBody408_51

def rawBody408_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_54 : StackLang.HolProg 64 :=
.seq rawBody408_52 rawBody408_53

def rawBody408_55 : StackLang.HolProg 64 :=
.call (some (rawBody408_49, 0, 408, 2)) (Sum.inl 79) (some (rawBody408_54, 408, 3))

def rawBody408_56 : StackLang.HolProg 64 :=
.seq rawBody408_36 rawBody408_55

def rawBody408_57 : StackLang.HolProg 64 :=
.seq rawBody408_35 rawBody408_56

def rawBody408_58 : StackLang.HolProg 64 :=
.seq rawBody408_34 rawBody408_57

def rawBody408_59 : StackLang.HolProg 64 :=
.seq rawBody408_15 rawBody408_58

def rawBody408_60 : StackLang.HolProg 64 :=
.seq rawBody408_12 rawBody408_59

def rawBody408_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody408_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody408_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody408_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody408_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody408_70 : StackLang.HolProg 64 :=
.seq rawBody408_68 rawBody408_69

def rawBody408_71 : StackLang.HolProg 64 :=
.seq rawBody408_67 rawBody408_70

def rawBody408_72 : StackLang.HolProg 64 :=
.seq rawBody408_66 rawBody408_71

def rawBody408_73 : StackLang.HolProg 64 :=
.seq rawBody408_65 rawBody408_72

def rawBody408_74 : StackLang.HolProg 64 :=
.seq rawBody408_64 rawBody408_73

def rawBody408_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_76 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody408_74 rawBody408_75

def rawBody408_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody408_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody408_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody408_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody408_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody408_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody408_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody408_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody408_87 : StackLang.HolProg 64 :=
.seq rawBody408_85 rawBody408_86

def rawBody408_88 : StackLang.HolProg 64 :=
.seq rawBody408_84 rawBody408_87

def rawBody408_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1214#64)

def rawBody408_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_92 : StackLang.HolProg 64 :=
.seq rawBody408_90 rawBody408_91

def rawBody408_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 5

def rawBody408_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_103 : StackLang.HolProg 64 :=
.seq rawBody408_101 rawBody408_102

def rawBody408_104 : StackLang.HolProg 64 :=
.seq rawBody408_100 rawBody408_103

def rawBody408_105 : StackLang.HolProg 64 :=
.seq rawBody408_99 rawBody408_104

def rawBody408_106 : StackLang.HolProg 64 :=
.seq rawBody408_98 rawBody408_105

def rawBody408_107 : StackLang.HolProg 64 :=
.seq rawBody408_97 rawBody408_106

def rawBody408_108 : StackLang.HolProg 64 :=
.seq rawBody408_96 rawBody408_107

def rawBody408_109 : StackLang.HolProg 64 :=
.seq rawBody408_95 rawBody408_108

def rawBody408_110 : StackLang.HolProg 64 :=
.seq rawBody408_94 rawBody408_109

def rawBody408_111 : StackLang.HolProg 64 :=
.seq rawBody408_93 rawBody408_110

def rawBody408_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody408_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody408_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody408_121 : StackLang.HolProg 64 :=
.seq rawBody408_119 rawBody408_120

def rawBody408_122 : StackLang.HolProg 64 :=
.seq rawBody408_118 rawBody408_121

def rawBody408_123 : StackLang.HolProg 64 :=
.seq rawBody408_117 rawBody408_122

def rawBody408_124 : StackLang.HolProg 64 :=
.seq rawBody408_116 rawBody408_123

def rawBody408_125 : StackLang.HolProg 64 :=
.seq rawBody408_115 rawBody408_124

def rawBody408_126 : StackLang.HolProg 64 :=
.seq rawBody408_114 rawBody408_125

def rawBody408_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody408_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody408_129 : StackLang.HolProg 64 :=
.seq rawBody408_127 rawBody408_128

def rawBody408_130 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_131 : StackLang.HolProg 64 :=
.seq rawBody408_129 rawBody408_130

def rawBody408_132 : StackLang.HolProg 64 :=
.call (some (rawBody408_126, 0, 408, 4)) (Sum.inl 186) (some (rawBody408_131, 408, 5))

def rawBody408_133 : StackLang.HolProg 64 :=
.seq rawBody408_113 rawBody408_132

def rawBody408_134 : StackLang.HolProg 64 :=
.seq rawBody408_112 rawBody408_133

def rawBody408_135 : StackLang.HolProg 64 :=
.seq rawBody408_111 rawBody408_134

def rawBody408_136 : StackLang.HolProg 64 :=
.seq rawBody408_92 rawBody408_135

def rawBody408_137 : StackLang.HolProg 64 :=
.seq rawBody408_89 rawBody408_136

def rawBody408_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody408_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_142 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_143 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody408_144 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_145 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody408_146 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_147 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody408_148 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody408_149 : StackLang.HolProg 64 :=
.seq rawBody408_147 rawBody408_148

def rawBody408_150 : StackLang.HolProg 64 :=
.seq rawBody408_146 rawBody408_149

def rawBody408_151 : StackLang.HolProg 64 :=
.seq rawBody408_145 rawBody408_150

def rawBody408_152 : StackLang.HolProg 64 :=
.seq rawBody408_144 rawBody408_151

def rawBody408_153 : StackLang.HolProg 64 :=
.seq rawBody408_143 rawBody408_152

def rawBody408_154 : StackLang.HolProg 64 :=
.seq rawBody408_142 rawBody408_153

def rawBody408_155 : StackLang.HolProg 64 :=
.seq rawBody408_141 rawBody408_154

def rawBody408_156 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_157 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody408_155 rawBody408_156

def rawBody408_158 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_159 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_160 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody408_161 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody408_162 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody408_163 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551440#64))

def rawBody408_164 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 48#64))

def rawBody408_165 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody408_166 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody408_167 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody408_168 : StackLang.HolProg 64 :=
.seq rawBody408_166 rawBody408_167

def rawBody408_169 : StackLang.HolProg 64 :=
.seq rawBody408_165 rawBody408_168

def rawBody408_170 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_171 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1215#64)

def rawBody408_172 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_173 : StackLang.HolProg 64 :=
.seq rawBody408_171 rawBody408_172

def rawBody408_174 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_175 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_176 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_177 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 7

def rawBody408_178 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_179 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_180 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_181 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_182 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_183 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_184 : StackLang.HolProg 64 :=
.seq rawBody408_182 rawBody408_183

def rawBody408_185 : StackLang.HolProg 64 :=
.seq rawBody408_181 rawBody408_184

def rawBody408_186 : StackLang.HolProg 64 :=
.seq rawBody408_180 rawBody408_185

def rawBody408_187 : StackLang.HolProg 64 :=
.seq rawBody408_179 rawBody408_186

def rawBody408_188 : StackLang.HolProg 64 :=
.seq rawBody408_178 rawBody408_187

def rawBody408_189 : StackLang.HolProg 64 :=
.seq rawBody408_177 rawBody408_188

def rawBody408_190 : StackLang.HolProg 64 :=
.seq rawBody408_176 rawBody408_189

def rawBody408_191 : StackLang.HolProg 64 :=
.seq rawBody408_175 rawBody408_190

def rawBody408_192 : StackLang.HolProg 64 :=
.seq rawBody408_174 rawBody408_191

def rawBody408_193 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_194 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_195 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_196 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_197 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_198 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_199 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody408_200 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody408_201 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody408_202 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody408_203 : StackLang.HolProg 64 :=
.seq rawBody408_201 rawBody408_202

def rawBody408_204 : StackLang.HolProg 64 :=
.seq rawBody408_200 rawBody408_203

def rawBody408_205 : StackLang.HolProg 64 :=
.seq rawBody408_199 rawBody408_204

def rawBody408_206 : StackLang.HolProg 64 :=
.seq rawBody408_198 rawBody408_205

def rawBody408_207 : StackLang.HolProg 64 :=
.seq rawBody408_197 rawBody408_206

def rawBody408_208 : StackLang.HolProg 64 :=
.seq rawBody408_196 rawBody408_207

def rawBody408_209 : StackLang.HolProg 64 :=
.seq rawBody408_195 rawBody408_208

def rawBody408_210 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 3

def rawBody408_211 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody408_212 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody408_213 : StackLang.HolProg 64 :=
.seq rawBody408_211 rawBody408_212

def rawBody408_214 : StackLang.HolProg 64 :=
.seq rawBody408_210 rawBody408_213

def rawBody408_215 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_216 : StackLang.HolProg 64 :=
.seq rawBody408_214 rawBody408_215

def rawBody408_217 : StackLang.HolProg 64 :=
.call (some (rawBody408_209, 0, 408, 6)) (Sum.inl 186) (some (rawBody408_216, 408, 7))

def rawBody408_218 : StackLang.HolProg 64 :=
.seq rawBody408_194 rawBody408_217

def rawBody408_219 : StackLang.HolProg 64 :=
.seq rawBody408_193 rawBody408_218

def rawBody408_220 : StackLang.HolProg 64 :=
.seq rawBody408_192 rawBody408_219

def rawBody408_221 : StackLang.HolProg 64 :=
.seq rawBody408_173 rawBody408_220

def rawBody408_222 : StackLang.HolProg 64 :=
.seq rawBody408_170 rawBody408_221

def rawBody408_223 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_224 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_225 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody408_226 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_227 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_228 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody408_229 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_230 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody408_231 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_232 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody408_233 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def rawBody408_234 : StackLang.HolProg 64 :=
.seq rawBody408_232 rawBody408_233

def rawBody408_235 : StackLang.HolProg 64 :=
.seq rawBody408_231 rawBody408_234

def rawBody408_236 : StackLang.HolProg 64 :=
.seq rawBody408_230 rawBody408_235

def rawBody408_237 : StackLang.HolProg 64 :=
.seq rawBody408_229 rawBody408_236

def rawBody408_238 : StackLang.HolProg 64 :=
.seq rawBody408_228 rawBody408_237

def rawBody408_239 : StackLang.HolProg 64 :=
.seq rawBody408_227 rawBody408_238

def rawBody408_240 : StackLang.HolProg 64 :=
.seq rawBody408_226 rawBody408_239

def rawBody408_241 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_242 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody408_240 rawBody408_241

def rawBody408_243 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_244 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_245 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody408_246 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody408_247 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 3

def rawBody408_248 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody408_249 : StackLang.HolProg 64 :=
.seq rawBody408_247 rawBody408_248

def rawBody408_250 : StackLang.HolProg 64 :=
.seq rawBody408_246 rawBody408_249

def rawBody408_251 : StackLang.HolProg 64 :=
.seq rawBody408_245 rawBody408_250

def rawBody408_252 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_253 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1216#64)

def rawBody408_254 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_255 : StackLang.HolProg 64 :=
.seq rawBody408_253 rawBody408_254

def rawBody408_256 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_257 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_258 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_259 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 9

def rawBody408_260 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_261 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_262 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_263 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_264 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_265 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_266 : StackLang.HolProg 64 :=
.seq rawBody408_264 rawBody408_265

def rawBody408_267 : StackLang.HolProg 64 :=
.seq rawBody408_263 rawBody408_266

def rawBody408_268 : StackLang.HolProg 64 :=
.seq rawBody408_262 rawBody408_267

def rawBody408_269 : StackLang.HolProg 64 :=
.seq rawBody408_261 rawBody408_268

def rawBody408_270 : StackLang.HolProg 64 :=
.seq rawBody408_260 rawBody408_269

def rawBody408_271 : StackLang.HolProg 64 :=
.seq rawBody408_259 rawBody408_270

def rawBody408_272 : StackLang.HolProg 64 :=
.seq rawBody408_258 rawBody408_271

def rawBody408_273 : StackLang.HolProg 64 :=
.seq rawBody408_257 rawBody408_272

def rawBody408_274 : StackLang.HolProg 64 :=
.seq rawBody408_256 rawBody408_273

def rawBody408_275 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_276 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_277 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_278 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_279 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_280 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_281 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody408_282 : StackLang.HolProg 64 :=
.seq rawBody408_280 rawBody408_281

def rawBody408_283 : StackLang.HolProg 64 :=
.seq rawBody408_279 rawBody408_282

def rawBody408_284 : StackLang.HolProg 64 :=
.seq rawBody408_278 rawBody408_283

def rawBody408_285 : StackLang.HolProg 64 :=
.seq rawBody408_277 rawBody408_284

def rawBody408_286 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_287 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_288 : StackLang.HolProg 64 :=
.seq rawBody408_286 rawBody408_287

def rawBody408_289 : StackLang.HolProg 64 :=
.call (some (rawBody408_285, 0, 408, 8)) (Sum.inl 392) (some (rawBody408_288, 408, 9))

def rawBody408_290 : StackLang.HolProg 64 :=
.seq rawBody408_276 rawBody408_289

def rawBody408_291 : StackLang.HolProg 64 :=
.seq rawBody408_275 rawBody408_290

def rawBody408_292 : StackLang.HolProg 64 :=
.seq rawBody408_274 rawBody408_291

def rawBody408_293 : StackLang.HolProg 64 :=
.seq rawBody408_255 rawBody408_292

def rawBody408_294 : StackLang.HolProg 64 :=
.seq rawBody408_252 rawBody408_293

def rawBody408_295 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_296 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody408_297 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody408_298 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody408_299 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def rawBody408_300 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody408_301 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_302 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody408_303 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_304 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_305 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1217#64)

def rawBody408_306 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_307 : StackLang.HolProg 64 :=
.seq rawBody408_305 rawBody408_306

def rawBody408_308 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_309 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_310 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_311 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 11

def rawBody408_312 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_313 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_314 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_315 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_316 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_317 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_318 : StackLang.HolProg 64 :=
.seq rawBody408_316 rawBody408_317

def rawBody408_319 : StackLang.HolProg 64 :=
.seq rawBody408_315 rawBody408_318

def rawBody408_320 : StackLang.HolProg 64 :=
.seq rawBody408_314 rawBody408_319

def rawBody408_321 : StackLang.HolProg 64 :=
.seq rawBody408_313 rawBody408_320

def rawBody408_322 : StackLang.HolProg 64 :=
.seq rawBody408_312 rawBody408_321

def rawBody408_323 : StackLang.HolProg 64 :=
.seq rawBody408_311 rawBody408_322

def rawBody408_324 : StackLang.HolProg 64 :=
.seq rawBody408_310 rawBody408_323

def rawBody408_325 : StackLang.HolProg 64 :=
.seq rawBody408_309 rawBody408_324

def rawBody408_326 : StackLang.HolProg 64 :=
.seq rawBody408_308 rawBody408_325

def rawBody408_327 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_328 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_329 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_330 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_331 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_332 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_333 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody408_334 : StackLang.HolProg 64 :=
.seq rawBody408_332 rawBody408_333

def rawBody408_335 : StackLang.HolProg 64 :=
.seq rawBody408_331 rawBody408_334

def rawBody408_336 : StackLang.HolProg 64 :=
.seq rawBody408_330 rawBody408_335

def rawBody408_337 : StackLang.HolProg 64 :=
.seq rawBody408_329 rawBody408_336

def rawBody408_338 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody408_339 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_340 : StackLang.HolProg 64 :=
.seq rawBody408_338 rawBody408_339

def rawBody408_341 : StackLang.HolProg 64 :=
.call (some (rawBody408_337, 0, 408, 10)) (Sum.inl 192) (some (rawBody408_340, 408, 11))

def rawBody408_342 : StackLang.HolProg 64 :=
.seq rawBody408_328 rawBody408_341

def rawBody408_343 : StackLang.HolProg 64 :=
.seq rawBody408_327 rawBody408_342

def rawBody408_344 : StackLang.HolProg 64 :=
.seq rawBody408_326 rawBody408_343

def rawBody408_345 : StackLang.HolProg 64 :=
.seq rawBody408_307 rawBody408_344

def rawBody408_346 : StackLang.HolProg 64 :=
.seq rawBody408_304 rawBody408_345

def rawBody408_347 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_348 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody408_349 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_350 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1218#64)

def rawBody408_351 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_352 : StackLang.HolProg 64 :=
.seq rawBody408_350 rawBody408_351

def rawBody408_353 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody408_354 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody408_355 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody408_356 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 408 13

def rawBody408_357 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody408_358 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody408_359 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody408_360 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_361 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody408_362 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_363 : StackLang.HolProg 64 :=
.seq rawBody408_361 rawBody408_362

def rawBody408_364 : StackLang.HolProg 64 :=
.seq rawBody408_360 rawBody408_363

def rawBody408_365 : StackLang.HolProg 64 :=
.seq rawBody408_359 rawBody408_364

def rawBody408_366 : StackLang.HolProg 64 :=
.seq rawBody408_358 rawBody408_365

def rawBody408_367 : StackLang.HolProg 64 :=
.seq rawBody408_357 rawBody408_366

def rawBody408_368 : StackLang.HolProg 64 :=
.seq rawBody408_356 rawBody408_367

def rawBody408_369 : StackLang.HolProg 64 :=
.seq rawBody408_355 rawBody408_368

def rawBody408_370 : StackLang.HolProg 64 :=
.seq rawBody408_354 rawBody408_369

def rawBody408_371 : StackLang.HolProg 64 :=
.seq rawBody408_353 rawBody408_370

def rawBody408_372 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody408_373 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_374 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody408_375 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody408_376 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody408_377 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody408_378 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody408_379 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody408_380 : StackLang.HolProg 64 :=
.seq rawBody408_378 rawBody408_379

def rawBody408_381 : StackLang.HolProg 64 :=
.seq rawBody408_377 rawBody408_380

def rawBody408_382 : StackLang.HolProg 64 :=
.seq rawBody408_376 rawBody408_381

def rawBody408_383 : StackLang.HolProg 64 :=
.seq rawBody408_375 rawBody408_382

def rawBody408_384 : StackLang.HolProg 64 :=
.seq rawBody408_374 rawBody408_383

def rawBody408_385 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 3

def rawBody408_386 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody408_387 : StackLang.HolProg 64 :=
.seq rawBody408_385 rawBody408_386

def rawBody408_388 : StackLang.HolProg 64 :=
.call (some (rawBody408_384, 0, 408, 12)) (Sum.inl 402) (some (rawBody408_387, 408, 13))

def rawBody408_389 : StackLang.HolProg 64 :=
.seq rawBody408_373 rawBody408_388

def rawBody408_390 : StackLang.HolProg 64 :=
.seq rawBody408_372 rawBody408_389

def rawBody408_391 : StackLang.HolProg 64 :=
.seq rawBody408_371 rawBody408_390

def rawBody408_392 : StackLang.HolProg 64 :=
.seq rawBody408_352 rawBody408_391

def rawBody408_393 : StackLang.HolProg 64 :=
.seq rawBody408_349 rawBody408_392

def rawBody408_394 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody408_395 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody408_396 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody408_397 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody408_398 : StackLang.HolProg 64 :=
.seq rawBody408_396 rawBody408_397

def rawBody408_399 : StackLang.HolProg 64 :=
.seq rawBody408_395 rawBody408_398

def rawBody408_400 : StackLang.HolProg 64 :=
.seq rawBody408_394 rawBody408_399

def rawBody408_401 : StackLang.HolProg 64 :=
.seq rawBody408_393 rawBody408_400

def rawBody408_402 : StackLang.HolProg 64 :=
.seq rawBody408_348 rawBody408_401

def rawBody408_403 : StackLang.HolProg 64 :=
.seq rawBody408_347 rawBody408_402

def rawBody408_404 : StackLang.HolProg 64 :=
.seq rawBody408_346 rawBody408_403

def rawBody408_405 : StackLang.HolProg 64 :=
.seq rawBody408_303 rawBody408_404

def rawBody408_406 : StackLang.HolProg 64 :=
.seq rawBody408_302 rawBody408_405

def rawBody408_407 : StackLang.HolProg 64 :=
.seq rawBody408_301 rawBody408_406

def rawBody408_408 : StackLang.HolProg 64 :=
.seq rawBody408_300 rawBody408_407

def rawBody408_409 : StackLang.HolProg 64 :=
.seq rawBody408_299 rawBody408_408

def rawBody408_410 : StackLang.HolProg 64 :=
.seq rawBody408_298 rawBody408_409

def rawBody408_411 : StackLang.HolProg 64 :=
.seq rawBody408_297 rawBody408_410

def rawBody408_412 : StackLang.HolProg 64 :=
.seq rawBody408_296 rawBody408_411

def rawBody408_413 : StackLang.HolProg 64 :=
.seq rawBody408_295 rawBody408_412

def rawBody408_414 : StackLang.HolProg 64 :=
.seq rawBody408_294 rawBody408_413

def rawBody408_415 : StackLang.HolProg 64 :=
.seq rawBody408_251 rawBody408_414

def rawBody408_416 : StackLang.HolProg 64 :=
.seq rawBody408_244 rawBody408_415

def rawBody408_417 : StackLang.HolProg 64 :=
.seq rawBody408_243 rawBody408_416

def rawBody408_418 : StackLang.HolProg 64 :=
.seq rawBody408_242 rawBody408_417

def rawBody408_419 : StackLang.HolProg 64 :=
.seq rawBody408_225 rawBody408_418

def rawBody408_420 : StackLang.HolProg 64 :=
.seq rawBody408_224 rawBody408_419

def rawBody408_421 : StackLang.HolProg 64 :=
.seq rawBody408_223 rawBody408_420

def rawBody408_422 : StackLang.HolProg 64 :=
.seq rawBody408_222 rawBody408_421

def rawBody408_423 : StackLang.HolProg 64 :=
.seq rawBody408_169 rawBody408_422

def rawBody408_424 : StackLang.HolProg 64 :=
.seq rawBody408_164 rawBody408_423

def rawBody408_425 : StackLang.HolProg 64 :=
.seq rawBody408_163 rawBody408_424

def rawBody408_426 : StackLang.HolProg 64 :=
.seq rawBody408_162 rawBody408_425

def rawBody408_427 : StackLang.HolProg 64 :=
.seq rawBody408_161 rawBody408_426

def rawBody408_428 : StackLang.HolProg 64 :=
.seq rawBody408_160 rawBody408_427

def rawBody408_429 : StackLang.HolProg 64 :=
.seq rawBody408_159 rawBody408_428

def rawBody408_430 : StackLang.HolProg 64 :=
.seq rawBody408_158 rawBody408_429

def rawBody408_431 : StackLang.HolProg 64 :=
.seq rawBody408_157 rawBody408_430

def rawBody408_432 : StackLang.HolProg 64 :=
.seq rawBody408_140 rawBody408_431

def rawBody408_433 : StackLang.HolProg 64 :=
.seq rawBody408_139 rawBody408_432

def rawBody408_434 : StackLang.HolProg 64 :=
.seq rawBody408_138 rawBody408_433

def rawBody408_435 : StackLang.HolProg 64 :=
.seq rawBody408_137 rawBody408_434

def rawBody408_436 : StackLang.HolProg 64 :=
.seq rawBody408_88 rawBody408_435

def rawBody408_437 : StackLang.HolProg 64 :=
.seq rawBody408_83 rawBody408_436

def rawBody408_438 : StackLang.HolProg 64 :=
.seq rawBody408_82 rawBody408_437

def rawBody408_439 : StackLang.HolProg 64 :=
.seq rawBody408_81 rawBody408_438

def rawBody408_440 : StackLang.HolProg 64 :=
.seq rawBody408_80 rawBody408_439

def rawBody408_441 : StackLang.HolProg 64 :=
.seq rawBody408_79 rawBody408_440

def rawBody408_442 : StackLang.HolProg 64 :=
.seq rawBody408_78 rawBody408_441

def rawBody408_443 : StackLang.HolProg 64 :=
.seq rawBody408_77 rawBody408_442

def rawBody408_444 : StackLang.HolProg 64 :=
.seq rawBody408_76 rawBody408_443

def rawBody408_445 : StackLang.HolProg 64 :=
.seq rawBody408_63 rawBody408_444

def rawBody408_446 : StackLang.HolProg 64 :=
.seq rawBody408_62 rawBody408_445

def rawBody408_447 : StackLang.HolProg 64 :=
.seq rawBody408_61 rawBody408_446

def rawBody408_448 : StackLang.HolProg 64 :=
.seq rawBody408_60 rawBody408_447

def rawBody408_449 : StackLang.HolProg 64 :=
.seq rawBody408_11 rawBody408_448

def rawBody408_450 : StackLang.HolProg 64 :=
.seq rawBody408_6 rawBody408_449

def rawBody408_451 : StackLang.HolProg 64 :=
.seq rawBody408_5 rawBody408_450

def rawBody408_452 : StackLang.HolProg 64 :=
.seq rawBody408_4 rawBody408_451

def rawBody408_453 : StackLang.HolProg 64 :=
.seq rawBody408_3 rawBody408_452

def rawBody408_454 : StackLang.HolProg 64 :=
.seq rawBody408_2 rawBody408_453

def rawBody408_455 : StackLang.HolProg 64 :=
.seq rawBody408_1 rawBody408_454

def rawBody408_456 : StackLang.HolProg 64 :=
.seq rawBody408_0 rawBody408_455

def raw408 : StackLang.HolProg 64 := rawBody408_456
theorem raw408_eq : StackRawCall.compTop RawInfo.rawInfo (function408 (.list [])).1 = raw408 := by
  kernel_rfl
#print axioms raw408_eq
end InitECandidate.Proofs.BackendStages
