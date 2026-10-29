import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw452
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody452_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody452_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody452_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody452_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody452_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody452_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551400#64))

def AllocBody452_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def AllocBody452_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody452_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody452_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 3

def AllocBody452_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody452_11 : StackLang.HolProg 64 :=
.seq AllocBody452_9 AllocBody452_10

def AllocBody452_12 : StackLang.HolProg 64 :=
.seq AllocBody452_8 AllocBody452_11

def AllocBody452_13 : StackLang.HolProg 64 :=
.seq AllocBody452_7 AllocBody452_12

def AllocBody452_14 : StackLang.HolProg 64 :=
.seq AllocBody452_6 AllocBody452_13

def AllocBody452_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1374#64)

def AllocBody452_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody452_18 : StackLang.HolProg 64 :=
.seq AllocBody452_16 AllocBody452_17

def AllocBody452_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody452_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody452_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody452_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 3

def AllocBody452_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody452_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody452_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody452_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody452_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody452_29 : StackLang.HolProg 64 :=
.seq AllocBody452_27 AllocBody452_28

def AllocBody452_30 : StackLang.HolProg 64 :=
.seq AllocBody452_26 AllocBody452_29

def AllocBody452_31 : StackLang.HolProg 64 :=
.seq AllocBody452_25 AllocBody452_30

def AllocBody452_32 : StackLang.HolProg 64 :=
.seq AllocBody452_24 AllocBody452_31

def AllocBody452_33 : StackLang.HolProg 64 :=
.seq AllocBody452_23 AllocBody452_32

def AllocBody452_34 : StackLang.HolProg 64 :=
.seq AllocBody452_22 AllocBody452_33

def AllocBody452_35 : StackLang.HolProg 64 :=
.seq AllocBody452_21 AllocBody452_34

def AllocBody452_36 : StackLang.HolProg 64 :=
.seq AllocBody452_20 AllocBody452_35

def AllocBody452_37 : StackLang.HolProg 64 :=
.seq AllocBody452_19 AllocBody452_36

def AllocBody452_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody452_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody452_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody452_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody452_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody452_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody452_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody452_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody452_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody452_49 : StackLang.HolProg 64 :=
.seq AllocBody452_47 AllocBody452_48

def AllocBody452_50 : StackLang.HolProg 64 :=
.seq AllocBody452_46 AllocBody452_49

def AllocBody452_51 : StackLang.HolProg 64 :=
.seq AllocBody452_45 AllocBody452_50

def AllocBody452_52 : StackLang.HolProg 64 :=
.seq AllocBody452_44 AllocBody452_51

def AllocBody452_53 : StackLang.HolProg 64 :=
.seq AllocBody452_43 AllocBody452_52

def AllocBody452_54 : StackLang.HolProg 64 :=
.seq AllocBody452_42 AllocBody452_53

def AllocBody452_55 : StackLang.HolProg 64 :=
.seq AllocBody452_41 AllocBody452_54

def AllocBody452_56 : StackLang.HolProg 64 :=
.seq AllocBody452_40 AllocBody452_55

def AllocBody452_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 4

def AllocBody452_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody452_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 2

def AllocBody452_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody452_61 : StackLang.HolProg 64 :=
.seq AllocBody452_59 AllocBody452_60

def AllocBody452_62 : StackLang.HolProg 64 :=
.seq AllocBody452_58 AllocBody452_61

def AllocBody452_63 : StackLang.HolProg 64 :=
.seq AllocBody452_57 AllocBody452_62

def AllocBody452_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody452_65 : StackLang.HolProg 64 :=
.seq AllocBody452_63 AllocBody452_64

def AllocBody452_66 : StackLang.HolProg 64 :=
.call (some (AllocBody452_56, 0, 452, 2)) (Sum.inl 186) (some (AllocBody452_65, 452, 3))

def AllocBody452_67 : StackLang.HolProg 64 :=
.seq AllocBody452_39 AllocBody452_66

def AllocBody452_68 : StackLang.HolProg 64 :=
.seq AllocBody452_38 AllocBody452_67

def AllocBody452_69 : StackLang.HolProg 64 :=
.seq AllocBody452_37 AllocBody452_68

def AllocBody452_70 : StackLang.HolProg 64 :=
.seq AllocBody452_18 AllocBody452_69

def AllocBody452_71 : StackLang.HolProg 64 :=
.seq AllocBody452_15 AllocBody452_70

def AllocBody452_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody452_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody452_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody452_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody452_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody452_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody452_80 : StackLang.HolProg 64 :=
.seq AllocBody452_78 AllocBody452_79

def AllocBody452_81 : StackLang.HolProg 64 :=
.seq AllocBody452_77 AllocBody452_80

def AllocBody452_82 : StackLang.HolProg 64 :=
.seq AllocBody452_76 AllocBody452_81

def AllocBody452_83 : StackLang.HolProg 64 :=
.seq AllocBody452_75 AllocBody452_82

def AllocBody452_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_85 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody452_83 AllocBody452_84

def AllocBody452_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody452_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody452_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody452_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody452_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody452_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody452_93 : StackLang.HolProg 64 :=
.seq AllocBody452_91 AllocBody452_92

def AllocBody452_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1375#64)

def AllocBody452_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody452_97 : StackLang.HolProg 64 :=
.seq AllocBody452_95 AllocBody452_96

def AllocBody452_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody452_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody452_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody452_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 452 5

def AllocBody452_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody452_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody452_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody452_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody452_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody452_108 : StackLang.HolProg 64 :=
.seq AllocBody452_106 AllocBody452_107

def AllocBody452_109 : StackLang.HolProg 64 :=
.seq AllocBody452_105 AllocBody452_108

def AllocBody452_110 : StackLang.HolProg 64 :=
.seq AllocBody452_104 AllocBody452_109

def AllocBody452_111 : StackLang.HolProg 64 :=
.seq AllocBody452_103 AllocBody452_110

def AllocBody452_112 : StackLang.HolProg 64 :=
.seq AllocBody452_102 AllocBody452_111

def AllocBody452_113 : StackLang.HolProg 64 :=
.seq AllocBody452_101 AllocBody452_112

def AllocBody452_114 : StackLang.HolProg 64 :=
.seq AllocBody452_100 AllocBody452_113

def AllocBody452_115 : StackLang.HolProg 64 :=
.seq AllocBody452_99 AllocBody452_114

def AllocBody452_116 : StackLang.HolProg 64 :=
.seq AllocBody452_98 AllocBody452_115

def AllocBody452_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody452_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody452_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody452_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody452_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody452_124 : StackLang.HolProg 64 :=
.seq AllocBody452_122 AllocBody452_123

def AllocBody452_125 : StackLang.HolProg 64 :=
.seq AllocBody452_121 AllocBody452_124

def AllocBody452_126 : StackLang.HolProg 64 :=
.seq AllocBody452_120 AllocBody452_125

def AllocBody452_127 : StackLang.HolProg 64 :=
.seq AllocBody452_119 AllocBody452_126

def AllocBody452_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody452_129 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody452_130 : StackLang.HolProg 64 :=
.seq AllocBody452_128 AllocBody452_129

def AllocBody452_131 : StackLang.HolProg 64 :=
.call (some (AllocBody452_127, 0, 452, 4)) (Sum.inl 451) (some (AllocBody452_130, 452, 5))

def AllocBody452_132 : StackLang.HolProg 64 :=
.seq AllocBody452_118 AllocBody452_131

def AllocBody452_133 : StackLang.HolProg 64 :=
.seq AllocBody452_117 AllocBody452_132

def AllocBody452_134 : StackLang.HolProg 64 :=
.seq AllocBody452_116 AllocBody452_133

def AllocBody452_135 : StackLang.HolProg 64 :=
.seq AllocBody452_97 AllocBody452_134

def AllocBody452_136 : StackLang.HolProg 64 :=
.seq AllocBody452_94 AllocBody452_135

def AllocBody452_137 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody452_138 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody452_139 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody452_140 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody452_141 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody452_142 : StackLang.HolProg 64 :=
.seq AllocBody452_140 AllocBody452_141

def AllocBody452_143 : StackLang.HolProg 64 :=
.seq AllocBody452_139 AllocBody452_142

def AllocBody452_144 : StackLang.HolProg 64 :=
.seq AllocBody452_138 AllocBody452_143

def AllocBody452_145 : StackLang.HolProg 64 :=
.seq AllocBody452_137 AllocBody452_144

def AllocBody452_146 : StackLang.HolProg 64 :=
.seq AllocBody452_136 AllocBody452_145

def AllocBody452_147 : StackLang.HolProg 64 :=
.seq AllocBody452_93 AllocBody452_146

def AllocBody452_148 : StackLang.HolProg 64 :=
.seq AllocBody452_90 AllocBody452_147

def AllocBody452_149 : StackLang.HolProg 64 :=
.seq AllocBody452_89 AllocBody452_148

def AllocBody452_150 : StackLang.HolProg 64 :=
.seq AllocBody452_88 AllocBody452_149

def AllocBody452_151 : StackLang.HolProg 64 :=
.seq AllocBody452_87 AllocBody452_150

def AllocBody452_152 : StackLang.HolProg 64 :=
.seq AllocBody452_86 AllocBody452_151

def AllocBody452_153 : StackLang.HolProg 64 :=
.seq AllocBody452_85 AllocBody452_152

def AllocBody452_154 : StackLang.HolProg 64 :=
.seq AllocBody452_74 AllocBody452_153

def AllocBody452_155 : StackLang.HolProg 64 :=
.seq AllocBody452_73 AllocBody452_154

def AllocBody452_156 : StackLang.HolProg 64 :=
.seq AllocBody452_72 AllocBody452_155

def AllocBody452_157 : StackLang.HolProg 64 :=
.seq AllocBody452_71 AllocBody452_156

def AllocBody452_158 : StackLang.HolProg 64 :=
.seq AllocBody452_14 AllocBody452_157

def AllocBody452_159 : StackLang.HolProg 64 :=
.seq AllocBody452_5 AllocBody452_158

def AllocBody452_160 : StackLang.HolProg 64 :=
.seq AllocBody452_4 AllocBody452_159

def AllocBody452_161 : StackLang.HolProg 64 :=
.seq AllocBody452_3 AllocBody452_160

def AllocBody452_162 : StackLang.HolProg 64 :=
.seq AllocBody452_2 AllocBody452_161

def AllocBody452_163 : StackLang.HolProg 64 :=
.seq AllocBody452_1 AllocBody452_162

def AllocBody452_164 : StackLang.HolProg 64 :=
.seq AllocBody452_0 AllocBody452_163

def Alloc452 : Nat × StackLang.HolProg 64 := (452, AllocBody452_164)
theorem Alloc452_eq : StackAlloc.progComp (452, raw452) = Alloc452 := by
  kernel_rfl
#print axioms Alloc452_eq
end InitECandidate.Proofs.BackendStages
