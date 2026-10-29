import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function337
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody337_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 6

def rawBody337_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 5

def rawBody337_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 4

def rawBody337_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 3

def rawBody337_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def rawBody337_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody337_6 : StackLang.HolProg 64 :=
.seq rawBody337_4 rawBody337_5

def rawBody337_7 : StackLang.HolProg 64 :=
.seq rawBody337_3 rawBody337_6

def rawBody337_8 : StackLang.HolProg 64 :=
.seq rawBody337_2 rawBody337_7

def rawBody337_9 : StackLang.HolProg 64 :=
.seq rawBody337_1 rawBody337_8

def rawBody337_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 971#64)

def rawBody337_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody337_13 : StackLang.HolProg 64 :=
.seq rawBody337_11 rawBody337_12

def rawBody337_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody337_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody337_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody337_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 337 3

def rawBody337_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody337_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody337_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody337_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody337_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody337_24 : StackLang.HolProg 64 :=
.seq rawBody337_22 rawBody337_23

def rawBody337_25 : StackLang.HolProg 64 :=
.seq rawBody337_21 rawBody337_24

def rawBody337_26 : StackLang.HolProg 64 :=
.seq rawBody337_20 rawBody337_25

def rawBody337_27 : StackLang.HolProg 64 :=
.seq rawBody337_19 rawBody337_26

def rawBody337_28 : StackLang.HolProg 64 :=
.seq rawBody337_18 rawBody337_27

def rawBody337_29 : StackLang.HolProg 64 :=
.seq rawBody337_17 rawBody337_28

def rawBody337_30 : StackLang.HolProg 64 :=
.seq rawBody337_16 rawBody337_29

def rawBody337_31 : StackLang.HolProg 64 :=
.seq rawBody337_15 rawBody337_30

def rawBody337_32 : StackLang.HolProg 64 :=
.seq rawBody337_14 rawBody337_31

def rawBody337_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody337_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody337_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody337_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody337_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 9 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody337_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody337_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody337_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody337_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody337_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody337_45 : StackLang.HolProg 64 :=
.seq rawBody337_43 rawBody337_44

def rawBody337_46 : StackLang.HolProg 64 :=
.seq rawBody337_42 rawBody337_45

def rawBody337_47 : StackLang.HolProg 64 :=
.seq rawBody337_41 rawBody337_46

def rawBody337_48 : StackLang.HolProg 64 :=
.seq rawBody337_40 rawBody337_47

def rawBody337_49 : StackLang.HolProg 64 :=
.seq rawBody337_39 rawBody337_48

def rawBody337_50 : StackLang.HolProg 64 :=
.seq rawBody337_38 rawBody337_49

def rawBody337_51 : StackLang.HolProg 64 :=
.seq rawBody337_37 rawBody337_50

def rawBody337_52 : StackLang.HolProg 64 :=
.seq rawBody337_36 rawBody337_51

def rawBody337_53 : StackLang.HolProg 64 :=
.seq rawBody337_35 rawBody337_52

def rawBody337_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 5

def rawBody337_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 4

def rawBody337_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 3

def rawBody337_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 2

def rawBody337_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 1

def rawBody337_59 : StackLang.HolProg 64 :=
.seq rawBody337_57 rawBody337_58

def rawBody337_60 : StackLang.HolProg 64 :=
.seq rawBody337_56 rawBody337_59

def rawBody337_61 : StackLang.HolProg 64 :=
.seq rawBody337_55 rawBody337_60

def rawBody337_62 : StackLang.HolProg 64 :=
.seq rawBody337_54 rawBody337_61

def rawBody337_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody337_64 : StackLang.HolProg 64 :=
.seq rawBody337_62 rawBody337_63

def rawBody337_65 : StackLang.HolProg 64 :=
.call (some (rawBody337_53, 0, 337, 2)) (Sum.inl 335) (some (rawBody337_64, 337, 3))

def rawBody337_66 : StackLang.HolProg 64 :=
.seq rawBody337_34 rawBody337_65

def rawBody337_67 : StackLang.HolProg 64 :=
.seq rawBody337_33 rawBody337_66

def rawBody337_68 : StackLang.HolProg 64 :=
.seq rawBody337_32 rawBody337_67

def rawBody337_69 : StackLang.HolProg 64 :=
.seq rawBody337_13 rawBody337_68

def rawBody337_70 : StackLang.HolProg 64 :=
.seq rawBody337_10 rawBody337_69

def rawBody337_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody337_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 3

def rawBody337_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody337_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody337_80 : StackLang.HolProg 64 :=
.seq rawBody337_78 rawBody337_79

def rawBody337_81 : StackLang.HolProg 64 :=
.seq rawBody337_77 rawBody337_80

def rawBody337_82 : StackLang.HolProg 64 :=
.seq rawBody337_76 rawBody337_81

def rawBody337_83 : StackLang.HolProg 64 :=
.seq rawBody337_75 rawBody337_82

def rawBody337_84 : StackLang.HolProg 64 :=
.seq rawBody337_74 rawBody337_83

def rawBody337_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody337_86 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody337_84 rawBody337_85

def rawBody337_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody337_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody337_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody337_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody337_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody337_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody337_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody337_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody337_105 : StackLang.HolProg 64 :=
.seq rawBody337_103 rawBody337_104

def rawBody337_106 : StackLang.HolProg 64 :=
.seq rawBody337_102 rawBody337_105

def rawBody337_107 : StackLang.HolProg 64 :=
.seq rawBody337_101 rawBody337_106

def rawBody337_108 : StackLang.HolProg 64 :=
.seq rawBody337_100 rawBody337_107

def rawBody337_109 : StackLang.HolProg 64 :=
.seq rawBody337_99 rawBody337_108

def rawBody337_110 : StackLang.HolProg 64 :=
.seq rawBody337_98 rawBody337_109

def rawBody337_111 : StackLang.HolProg 64 :=
.seq rawBody337_97 rawBody337_110

def rawBody337_112 : StackLang.HolProg 64 :=
.seq rawBody337_96 rawBody337_111

def rawBody337_113 : StackLang.HolProg 64 :=
.seq rawBody337_95 rawBody337_112

def rawBody337_114 : StackLang.HolProg 64 :=
.seq rawBody337_94 rawBody337_113

def rawBody337_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody337_117 : StackLang.HolProg 64 :=
.seq rawBody337_115 rawBody337_116

def rawBody337_118 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody337_114 rawBody337_117

def rawBody337_119 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_120 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_121 : StackLang.HolProg 64 :=
.seq rawBody337_119 rawBody337_120

def rawBody337_122 : StackLang.HolProg 64 :=
.seq rawBody337_118 rawBody337_121

def rawBody337_123 : StackLang.HolProg 64 :=
.seq rawBody337_93 rawBody337_122

def rawBody337_124 : StackLang.HolProg 64 :=
.loop rawBody337_123

def rawBody337_125 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody337_126 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody337_127 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 6

def rawBody337_128 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody337_129 : StackLang.HolProg 64 :=
.seq rawBody337_127 rawBody337_128

def rawBody337_130 : StackLang.HolProg 64 :=
.seq rawBody337_126 rawBody337_129

def rawBody337_131 : StackLang.HolProg 64 :=
.seq rawBody337_125 rawBody337_130

def rawBody337_132 : StackLang.HolProg 64 :=
.seq rawBody337_124 rawBody337_131

def rawBody337_133 : StackLang.HolProg 64 :=
.seq rawBody337_92 rawBody337_132

def rawBody337_134 : StackLang.HolProg 64 :=
.seq rawBody337_91 rawBody337_133

def rawBody337_135 : StackLang.HolProg 64 :=
.seq rawBody337_90 rawBody337_134

def rawBody337_136 : StackLang.HolProg 64 :=
.seq rawBody337_89 rawBody337_135

def rawBody337_137 : StackLang.HolProg 64 :=
.seq rawBody337_88 rawBody337_136

def rawBody337_138 : StackLang.HolProg 64 :=
.seq rawBody337_87 rawBody337_137

def rawBody337_139 : StackLang.HolProg 64 :=
.seq rawBody337_86 rawBody337_138

def rawBody337_140 : StackLang.HolProg 64 :=
.seq rawBody337_73 rawBody337_139

def rawBody337_141 : StackLang.HolProg 64 :=
.seq rawBody337_72 rawBody337_140

def rawBody337_142 : StackLang.HolProg 64 :=
.seq rawBody337_71 rawBody337_141

def rawBody337_143 : StackLang.HolProg 64 :=
.seq rawBody337_70 rawBody337_142

def rawBody337_144 : StackLang.HolProg 64 :=
.seq rawBody337_9 rawBody337_143

def rawBody337_145 : StackLang.HolProg 64 :=
.seq rawBody337_0 rawBody337_144

def raw337 : StackLang.HolProg 64 := rawBody337_145
theorem raw337_eq : StackRawCall.compTop RawInfo.rawInfo (function337 (.list [])).1 = raw337 := by
  kernel_rfl
#print axioms raw337_eq
end InitECandidate.Proofs.BackendStages
