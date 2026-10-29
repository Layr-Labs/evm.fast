import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw412
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody412_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody412_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody412_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1231#64)

def AllocBody412_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody412_5 : StackLang.HolProg 64 :=
.seq AllocBody412_3 AllocBody412_4

def AllocBody412_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody412_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody412_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody412_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 3

def AllocBody412_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody412_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody412_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody412_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody412_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody412_16 : StackLang.HolProg 64 :=
.seq AllocBody412_14 AllocBody412_15

def AllocBody412_17 : StackLang.HolProg 64 :=
.seq AllocBody412_13 AllocBody412_16

def AllocBody412_18 : StackLang.HolProg 64 :=
.seq AllocBody412_12 AllocBody412_17

def AllocBody412_19 : StackLang.HolProg 64 :=
.seq AllocBody412_11 AllocBody412_18

def AllocBody412_20 : StackLang.HolProg 64 :=
.seq AllocBody412_10 AllocBody412_19

def AllocBody412_21 : StackLang.HolProg 64 :=
.seq AllocBody412_9 AllocBody412_20

def AllocBody412_22 : StackLang.HolProg 64 :=
.seq AllocBody412_8 AllocBody412_21

def AllocBody412_23 : StackLang.HolProg 64 :=
.seq AllocBody412_7 AllocBody412_22

def AllocBody412_24 : StackLang.HolProg 64 :=
.seq AllocBody412_6 AllocBody412_23

def AllocBody412_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody412_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody412_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody412_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody412_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody412_32 : StackLang.HolProg 64 :=
.seq AllocBody412_30 AllocBody412_31

def AllocBody412_33 : StackLang.HolProg 64 :=
.seq AllocBody412_29 AllocBody412_32

def AllocBody412_34 : StackLang.HolProg 64 :=
.seq AllocBody412_28 AllocBody412_33

def AllocBody412_35 : StackLang.HolProg 64 :=
.seq AllocBody412_27 AllocBody412_34

def AllocBody412_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody412_38 : StackLang.HolProg 64 :=
.seq AllocBody412_36 AllocBody412_37

def AllocBody412_39 : StackLang.HolProg 64 :=
.call (some (AllocBody412_35, 0, 412, 2)) (Sum.inl 392) (some (AllocBody412_38, 412, 3))

def AllocBody412_40 : StackLang.HolProg 64 :=
.seq AllocBody412_26 AllocBody412_39

def AllocBody412_41 : StackLang.HolProg 64 :=
.seq AllocBody412_25 AllocBody412_40

def AllocBody412_42 : StackLang.HolProg 64 :=
.seq AllocBody412_24 AllocBody412_41

def AllocBody412_43 : StackLang.HolProg 64 :=
.seq AllocBody412_5 AllocBody412_42

def AllocBody412_44 : StackLang.HolProg 64 :=
.seq AllocBody412_2 AllocBody412_43

def AllocBody412_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody412_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody412_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody412_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody412_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551432#64))

def AllocBody412_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 64#64))

def AllocBody412_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1232#64)

def AllocBody412_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody412_55 : StackLang.HolProg 64 :=
.seq AllocBody412_53 AllocBody412_54

def AllocBody412_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody412_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody412_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody412_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 412 5

def AllocBody412_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody412_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody412_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody412_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody412_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody412_66 : StackLang.HolProg 64 :=
.seq AllocBody412_64 AllocBody412_65

def AllocBody412_67 : StackLang.HolProg 64 :=
.seq AllocBody412_63 AllocBody412_66

def AllocBody412_68 : StackLang.HolProg 64 :=
.seq AllocBody412_62 AllocBody412_67

def AllocBody412_69 : StackLang.HolProg 64 :=
.seq AllocBody412_61 AllocBody412_68

def AllocBody412_70 : StackLang.HolProg 64 :=
.seq AllocBody412_60 AllocBody412_69

def AllocBody412_71 : StackLang.HolProg 64 :=
.seq AllocBody412_59 AllocBody412_70

def AllocBody412_72 : StackLang.HolProg 64 :=
.seq AllocBody412_58 AllocBody412_71

def AllocBody412_73 : StackLang.HolProg 64 :=
.seq AllocBody412_57 AllocBody412_72

def AllocBody412_74 : StackLang.HolProg 64 :=
.seq AllocBody412_56 AllocBody412_73

def AllocBody412_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody412_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody412_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody412_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody412_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody412_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody412_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody412_84 : StackLang.HolProg 64 :=
.seq AllocBody412_82 AllocBody412_83

def AllocBody412_85 : StackLang.HolProg 64 :=
.seq AllocBody412_81 AllocBody412_84

def AllocBody412_86 : StackLang.HolProg 64 :=
.seq AllocBody412_80 AllocBody412_85

def AllocBody412_87 : StackLang.HolProg 64 :=
.seq AllocBody412_79 AllocBody412_86

def AllocBody412_88 : StackLang.HolProg 64 :=
.seq AllocBody412_78 AllocBody412_87

def AllocBody412_89 : StackLang.HolProg 64 :=
.seq AllocBody412_77 AllocBody412_88

def AllocBody412_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody412_91 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody412_92 : StackLang.HolProg 64 :=
.seq AllocBody412_90 AllocBody412_91

def AllocBody412_93 : StackLang.HolProg 64 :=
.call (some (AllocBody412_89, 0, 412, 4)) (Sum.inl 186) (some (AllocBody412_92, 412, 5))

def AllocBody412_94 : StackLang.HolProg 64 :=
.seq AllocBody412_76 AllocBody412_93

def AllocBody412_95 : StackLang.HolProg 64 :=
.seq AllocBody412_75 AllocBody412_94

def AllocBody412_96 : StackLang.HolProg 64 :=
.seq AllocBody412_74 AllocBody412_95

def AllocBody412_97 : StackLang.HolProg 64 :=
.seq AllocBody412_55 AllocBody412_96

def AllocBody412_98 : StackLang.HolProg 64 :=
.seq AllocBody412_52 AllocBody412_97

def AllocBody412_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody412_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody412_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody412_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody412_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody412_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody412_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody412_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody412_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody412_110 : StackLang.HolProg 64 :=
.seq AllocBody412_108 AllocBody412_109

def AllocBody412_111 : StackLang.HolProg 64 :=
.seq AllocBody412_107 AllocBody412_110

def AllocBody412_112 : StackLang.HolProg 64 :=
.seq AllocBody412_106 AllocBody412_111

def AllocBody412_113 : StackLang.HolProg 64 :=
.seq AllocBody412_105 AllocBody412_112

def AllocBody412_114 : StackLang.HolProg 64 :=
.seq AllocBody412_104 AllocBody412_113

def AllocBody412_115 : StackLang.HolProg 64 :=
.seq AllocBody412_103 AllocBody412_114

def AllocBody412_116 : StackLang.HolProg 64 :=
.seq AllocBody412_102 AllocBody412_115

def AllocBody412_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody412_116 AllocBody412_117

def AllocBody412_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody412_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody412_121 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_122 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def AllocBody412_123 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_124 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def AllocBody412_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def AllocBody412_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def AllocBody412_129 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody412_130 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody412_131 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 5

def AllocBody412_132 : StackLang.HolProg 64 :=
.seq AllocBody412_130 AllocBody412_131

def AllocBody412_133 : StackLang.HolProg 64 :=
.seq AllocBody412_129 AllocBody412_132

def AllocBody412_134 : StackLang.HolProg 64 :=
.seq AllocBody412_128 AllocBody412_133

def AllocBody412_135 : StackLang.HolProg 64 :=
.seq AllocBody412_127 AllocBody412_134

def AllocBody412_136 : StackLang.HolProg 64 :=
.seq AllocBody412_126 AllocBody412_135

def AllocBody412_137 : StackLang.HolProg 64 :=
.seq AllocBody412_125 AllocBody412_136

def AllocBody412_138 : StackLang.HolProg 64 :=
.seq AllocBody412_124 AllocBody412_137

def AllocBody412_139 : StackLang.HolProg 64 :=
.seq AllocBody412_123 AllocBody412_138

def AllocBody412_140 : StackLang.HolProg 64 :=
.seq AllocBody412_122 AllocBody412_139

def AllocBody412_141 : StackLang.HolProg 64 :=
.seq AllocBody412_121 AllocBody412_140

def AllocBody412_142 : StackLang.HolProg 64 :=
.seq AllocBody412_120 AllocBody412_141

def AllocBody412_143 : StackLang.HolProg 64 :=
.seq AllocBody412_119 AllocBody412_142

def AllocBody412_144 : StackLang.HolProg 64 :=
.seq AllocBody412_118 AllocBody412_143

def AllocBody412_145 : StackLang.HolProg 64 :=
.seq AllocBody412_101 AllocBody412_144

def AllocBody412_146 : StackLang.HolProg 64 :=
.seq AllocBody412_100 AllocBody412_145

def AllocBody412_147 : StackLang.HolProg 64 :=
.seq AllocBody412_99 AllocBody412_146

def AllocBody412_148 : StackLang.HolProg 64 :=
.seq AllocBody412_98 AllocBody412_147

def AllocBody412_149 : StackLang.HolProg 64 :=
.seq AllocBody412_51 AllocBody412_148

def AllocBody412_150 : StackLang.HolProg 64 :=
.seq AllocBody412_50 AllocBody412_149

def AllocBody412_151 : StackLang.HolProg 64 :=
.seq AllocBody412_49 AllocBody412_150

def AllocBody412_152 : StackLang.HolProg 64 :=
.seq AllocBody412_48 AllocBody412_151

def AllocBody412_153 : StackLang.HolProg 64 :=
.seq AllocBody412_47 AllocBody412_152

def AllocBody412_154 : StackLang.HolProg 64 :=
.seq AllocBody412_46 AllocBody412_153

def AllocBody412_155 : StackLang.HolProg 64 :=
.seq AllocBody412_45 AllocBody412_154

def AllocBody412_156 : StackLang.HolProg 64 :=
.seq AllocBody412_44 AllocBody412_155

def AllocBody412_157 : StackLang.HolProg 64 :=
.seq AllocBody412_1 AllocBody412_156

def AllocBody412_158 : StackLang.HolProg 64 :=
.seq AllocBody412_0 AllocBody412_157

def Alloc412 : Nat × StackLang.HolProg 64 := (412, AllocBody412_158)
theorem Alloc412_eq : StackAlloc.progComp (412, raw412) = Alloc412 := by
  kernel_rfl
#print axioms Alloc412_eq
end InitECandidate.Proofs.BackendStages
