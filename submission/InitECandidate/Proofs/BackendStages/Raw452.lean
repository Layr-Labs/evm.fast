import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function452
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody452_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody452_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody452_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody452_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody452_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody452_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def rawBody452_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody452_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody452_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody452_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def rawBody452_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody452_11 : StackLang.HolProg 64 :=
.seq rawBody452_9 rawBody452_10

def rawBody452_12 : StackLang.HolProg 64 :=
.seq rawBody452_8 rawBody452_11

def rawBody452_13 : StackLang.HolProg 64 :=
.seq rawBody452_7 rawBody452_12

def rawBody452_14 : StackLang.HolProg 64 :=
.seq rawBody452_6 rawBody452_13

def rawBody452_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1374#64)

def rawBody452_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody452_18 : StackLang.HolProg 64 :=
.seq rawBody452_16 rawBody452_17

def rawBody452_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody452_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody452_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody452_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 3

def rawBody452_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody452_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody452_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody452_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody452_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody452_29 : StackLang.HolProg 64 :=
.seq rawBody452_27 rawBody452_28

def rawBody452_30 : StackLang.HolProg 64 :=
.seq rawBody452_26 rawBody452_29

def rawBody452_31 : StackLang.HolProg 64 :=
.seq rawBody452_25 rawBody452_30

def rawBody452_32 : StackLang.HolProg 64 :=
.seq rawBody452_24 rawBody452_31

def rawBody452_33 : StackLang.HolProg 64 :=
.seq rawBody452_23 rawBody452_32

def rawBody452_34 : StackLang.HolProg 64 :=
.seq rawBody452_22 rawBody452_33

def rawBody452_35 : StackLang.HolProg 64 :=
.seq rawBody452_21 rawBody452_34

def rawBody452_36 : StackLang.HolProg 64 :=
.seq rawBody452_20 rawBody452_35

def rawBody452_37 : StackLang.HolProg 64 :=
.seq rawBody452_19 rawBody452_36

def rawBody452_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody452_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody452_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody452_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody452_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody452_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody452_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody452_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody452_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody452_49 : StackLang.HolProg 64 :=
.seq rawBody452_47 rawBody452_48

def rawBody452_50 : StackLang.HolProg 64 :=
.seq rawBody452_46 rawBody452_49

def rawBody452_51 : StackLang.HolProg 64 :=
.seq rawBody452_45 rawBody452_50

def rawBody452_52 : StackLang.HolProg 64 :=
.seq rawBody452_44 rawBody452_51

def rawBody452_53 : StackLang.HolProg 64 :=
.seq rawBody452_43 rawBody452_52

def rawBody452_54 : StackLang.HolProg 64 :=
.seq rawBody452_42 rawBody452_53

def rawBody452_55 : StackLang.HolProg 64 :=
.seq rawBody452_41 rawBody452_54

def rawBody452_56 : StackLang.HolProg 64 :=
.seq rawBody452_40 rawBody452_55

def rawBody452_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def rawBody452_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody452_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def rawBody452_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody452_61 : StackLang.HolProg 64 :=
.seq rawBody452_59 rawBody452_60

def rawBody452_62 : StackLang.HolProg 64 :=
.seq rawBody452_58 rawBody452_61

def rawBody452_63 : StackLang.HolProg 64 :=
.seq rawBody452_57 rawBody452_62

def rawBody452_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody452_65 : StackLang.HolProg 64 :=
.seq rawBody452_63 rawBody452_64

def rawBody452_66 : StackLang.HolProg 64 :=
.call (some (rawBody452_56, 0, 452, 2)) (Sum.inl 186) (some (rawBody452_65, 452, 3))

def rawBody452_67 : StackLang.HolProg 64 :=
.seq rawBody452_39 rawBody452_66

def rawBody452_68 : StackLang.HolProg 64 :=
.seq rawBody452_38 rawBody452_67

def rawBody452_69 : StackLang.HolProg 64 :=
.seq rawBody452_37 rawBody452_68

def rawBody452_70 : StackLang.HolProg 64 :=
.seq rawBody452_18 rawBody452_69

def rawBody452_71 : StackLang.HolProg 64 :=
.seq rawBody452_15 rawBody452_70

def rawBody452_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody452_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody452_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody452_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody452_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody452_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def rawBody452_80 : StackLang.HolProg 64 :=
.seq rawBody452_78 rawBody452_79

def rawBody452_81 : StackLang.HolProg 64 :=
.seq rawBody452_77 rawBody452_80

def rawBody452_82 : StackLang.HolProg 64 :=
.seq rawBody452_76 rawBody452_81

def rawBody452_83 : StackLang.HolProg 64 :=
.seq rawBody452_75 rawBody452_82

def rawBody452_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody452_83 rawBody452_84

def rawBody452_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody452_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody452_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody452_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody452_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody452_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody452_93 : StackLang.HolProg 64 :=
.seq rawBody452_91 rawBody452_92

def rawBody452_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1375#64)

def rawBody452_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody452_97 : StackLang.HolProg 64 :=
.seq rawBody452_95 rawBody452_96

def rawBody452_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody452_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody452_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody452_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 5

def rawBody452_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody452_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody452_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody452_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody452_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody452_108 : StackLang.HolProg 64 :=
.seq rawBody452_106 rawBody452_107

def rawBody452_109 : StackLang.HolProg 64 :=
.seq rawBody452_105 rawBody452_108

def rawBody452_110 : StackLang.HolProg 64 :=
.seq rawBody452_104 rawBody452_109

def rawBody452_111 : StackLang.HolProg 64 :=
.seq rawBody452_103 rawBody452_110

def rawBody452_112 : StackLang.HolProg 64 :=
.seq rawBody452_102 rawBody452_111

def rawBody452_113 : StackLang.HolProg 64 :=
.seq rawBody452_101 rawBody452_112

def rawBody452_114 : StackLang.HolProg 64 :=
.seq rawBody452_100 rawBody452_113

def rawBody452_115 : StackLang.HolProg 64 :=
.seq rawBody452_99 rawBody452_114

def rawBody452_116 : StackLang.HolProg 64 :=
.seq rawBody452_98 rawBody452_115

def rawBody452_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody452_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody452_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody452_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody452_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody452_124 : StackLang.HolProg 64 :=
.seq rawBody452_122 rawBody452_123

def rawBody452_125 : StackLang.HolProg 64 :=
.seq rawBody452_121 rawBody452_124

def rawBody452_126 : StackLang.HolProg 64 :=
.seq rawBody452_120 rawBody452_125

def rawBody452_127 : StackLang.HolProg 64 :=
.seq rawBody452_119 rawBody452_126

def rawBody452_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody452_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody452_130 : StackLang.HolProg 64 :=
.seq rawBody452_128 rawBody452_129

def rawBody452_131 : StackLang.HolProg 64 :=
.call (some (rawBody452_127, 0, 452, 4)) (Sum.inl 451) (some (rawBody452_130, 452, 5))

def rawBody452_132 : StackLang.HolProg 64 :=
.seq rawBody452_118 rawBody452_131

def rawBody452_133 : StackLang.HolProg 64 :=
.seq rawBody452_117 rawBody452_132

def rawBody452_134 : StackLang.HolProg 64 :=
.seq rawBody452_116 rawBody452_133

def rawBody452_135 : StackLang.HolProg 64 :=
.seq rawBody452_97 rawBody452_134

def rawBody452_136 : StackLang.HolProg 64 :=
.seq rawBody452_94 rawBody452_135

def rawBody452_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody452_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody452_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody452_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody452_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody452_142 : StackLang.HolProg 64 :=
.seq rawBody452_140 rawBody452_141

def rawBody452_143 : StackLang.HolProg 64 :=
.seq rawBody452_139 rawBody452_142

def rawBody452_144 : StackLang.HolProg 64 :=
.seq rawBody452_138 rawBody452_143

def rawBody452_145 : StackLang.HolProg 64 :=
.seq rawBody452_137 rawBody452_144

def rawBody452_146 : StackLang.HolProg 64 :=
.seq rawBody452_136 rawBody452_145

def rawBody452_147 : StackLang.HolProg 64 :=
.seq rawBody452_93 rawBody452_146

def rawBody452_148 : StackLang.HolProg 64 :=
.seq rawBody452_90 rawBody452_147

def rawBody452_149 : StackLang.HolProg 64 :=
.seq rawBody452_89 rawBody452_148

def rawBody452_150 : StackLang.HolProg 64 :=
.seq rawBody452_88 rawBody452_149

def rawBody452_151 : StackLang.HolProg 64 :=
.seq rawBody452_87 rawBody452_150

def rawBody452_152 : StackLang.HolProg 64 :=
.seq rawBody452_86 rawBody452_151

def rawBody452_153 : StackLang.HolProg 64 :=
.seq rawBody452_85 rawBody452_152

def rawBody452_154 : StackLang.HolProg 64 :=
.seq rawBody452_74 rawBody452_153

def rawBody452_155 : StackLang.HolProg 64 :=
.seq rawBody452_73 rawBody452_154

def rawBody452_156 : StackLang.HolProg 64 :=
.seq rawBody452_72 rawBody452_155

def rawBody452_157 : StackLang.HolProg 64 :=
.seq rawBody452_71 rawBody452_156

def rawBody452_158 : StackLang.HolProg 64 :=
.seq rawBody452_14 rawBody452_157

def rawBody452_159 : StackLang.HolProg 64 :=
.seq rawBody452_5 rawBody452_158

def rawBody452_160 : StackLang.HolProg 64 :=
.seq rawBody452_4 rawBody452_159

def rawBody452_161 : StackLang.HolProg 64 :=
.seq rawBody452_3 rawBody452_160

def rawBody452_162 : StackLang.HolProg 64 :=
.seq rawBody452_2 rawBody452_161

def rawBody452_163 : StackLang.HolProg 64 :=
.seq rawBody452_1 rawBody452_162

def rawBody452_164 : StackLang.HolProg 64 :=
.seq rawBody452_0 rawBody452_163

def raw452 : StackLang.HolProg 64 := rawBody452_164
theorem raw452_eq : StackRawCall.compTop RawInfo.rawInfo (function452 (.list [])).1 = raw452 := by
  kernel_rfl
#print axioms raw452_eq
end InitECandidate.Proofs.BackendStages
