import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function393
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody393_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def rawBody393_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody393_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def rawBody393_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def rawBody393_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def rawBody393_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def rawBody393_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def rawBody393_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def rawBody393_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def rawBody393_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody393_10 : StackLang.HolProg 64 :=
.seq rawBody393_8 rawBody393_9

def rawBody393_11 : StackLang.HolProg 64 :=
.seq rawBody393_7 rawBody393_10

def rawBody393_12 : StackLang.HolProg 64 :=
.seq rawBody393_6 rawBody393_11

def rawBody393_13 : StackLang.HolProg 64 :=
.seq rawBody393_5 rawBody393_12

def rawBody393_14 : StackLang.HolProg 64 :=
.seq rawBody393_4 rawBody393_13

def rawBody393_15 : StackLang.HolProg 64 :=
.seq rawBody393_3 rawBody393_14

def rawBody393_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1171#64)

def rawBody393_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody393_19 : StackLang.HolProg 64 :=
.seq rawBody393_17 rawBody393_18

def rawBody393_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody393_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody393_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody393_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 393 3

def rawBody393_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody393_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody393_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody393_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody393_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody393_30 : StackLang.HolProg 64 :=
.seq rawBody393_28 rawBody393_29

def rawBody393_31 : StackLang.HolProg 64 :=
.seq rawBody393_27 rawBody393_30

def rawBody393_32 : StackLang.HolProg 64 :=
.seq rawBody393_26 rawBody393_31

def rawBody393_33 : StackLang.HolProg 64 :=
.seq rawBody393_25 rawBody393_32

def rawBody393_34 : StackLang.HolProg 64 :=
.seq rawBody393_24 rawBody393_33

def rawBody393_35 : StackLang.HolProg 64 :=
.seq rawBody393_23 rawBody393_34

def rawBody393_36 : StackLang.HolProg 64 :=
.seq rawBody393_22 rawBody393_35

def rawBody393_37 : StackLang.HolProg 64 :=
.seq rawBody393_21 rawBody393_36

def rawBody393_38 : StackLang.HolProg 64 :=
.seq rawBody393_20 rawBody393_37

def rawBody393_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody393_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody393_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody393_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody393_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody393_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody393_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody393_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody393_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody393_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody393_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody393_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody393_53 : StackLang.HolProg 64 :=
.seq rawBody393_51 rawBody393_52

def rawBody393_54 : StackLang.HolProg 64 :=
.seq rawBody393_50 rawBody393_53

def rawBody393_55 : StackLang.HolProg 64 :=
.seq rawBody393_49 rawBody393_54

def rawBody393_56 : StackLang.HolProg 64 :=
.seq rawBody393_48 rawBody393_55

def rawBody393_57 : StackLang.HolProg 64 :=
.seq rawBody393_47 rawBody393_56

def rawBody393_58 : StackLang.HolProg 64 :=
.seq rawBody393_46 rawBody393_57

def rawBody393_59 : StackLang.HolProg 64 :=
.seq rawBody393_45 rawBody393_58

def rawBody393_60 : StackLang.HolProg 64 :=
.seq rawBody393_44 rawBody393_59

def rawBody393_61 : StackLang.HolProg 64 :=
.seq rawBody393_43 rawBody393_60

def rawBody393_62 : StackLang.HolProg 64 :=
.seq rawBody393_42 rawBody393_61

def rawBody393_63 : StackLang.HolProg 64 :=
.seq rawBody393_41 rawBody393_62

def rawBody393_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def rawBody393_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def rawBody393_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def rawBody393_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def rawBody393_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def rawBody393_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody393_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def rawBody393_71 : StackLang.HolProg 64 :=
.seq rawBody393_69 rawBody393_70

def rawBody393_72 : StackLang.HolProg 64 :=
.seq rawBody393_68 rawBody393_71

def rawBody393_73 : StackLang.HolProg 64 :=
.seq rawBody393_67 rawBody393_72

def rawBody393_74 : StackLang.HolProg 64 :=
.seq rawBody393_66 rawBody393_73

def rawBody393_75 : StackLang.HolProg 64 :=
.seq rawBody393_65 rawBody393_74

def rawBody393_76 : StackLang.HolProg 64 :=
.seq rawBody393_64 rawBody393_75

def rawBody393_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody393_78 : StackLang.HolProg 64 :=
.seq rawBody393_76 rawBody393_77

def rawBody393_79 : StackLang.HolProg 64 :=
.call (some (rawBody393_63, 0, 393, 2)) (Sum.inl 68) (some (rawBody393_78, 393, 3))

def rawBody393_80 : StackLang.HolProg 64 :=
.seq rawBody393_40 rawBody393_79

def rawBody393_81 : StackLang.HolProg 64 :=
.seq rawBody393_39 rawBody393_80

def rawBody393_82 : StackLang.HolProg 64 :=
.seq rawBody393_38 rawBody393_81

def rawBody393_83 : StackLang.HolProg 64 :=
.seq rawBody393_19 rawBody393_82

def rawBody393_84 : StackLang.HolProg 64 :=
.seq rawBody393_16 rawBody393_83

def rawBody393_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody393_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody393_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody393_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody393_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody393_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody393_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody393_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody393_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody393_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody393_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody393_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def rawBody393_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody393_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody393_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody393_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody393_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody393_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def rawBody393_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def rawBody393_113 : StackLang.HolProg 64 :=
.seq rawBody393_111 rawBody393_112

def rawBody393_114 : StackLang.HolProg 64 :=
.seq rawBody393_110 rawBody393_113

def rawBody393_115 : StackLang.HolProg 64 :=
.seq rawBody393_109 rawBody393_114

def rawBody393_116 : StackLang.HolProg 64 :=
.seq rawBody393_108 rawBody393_115

def rawBody393_117 : StackLang.HolProg 64 :=
.seq rawBody393_107 rawBody393_116

def rawBody393_118 : StackLang.HolProg 64 :=
.seq rawBody393_106 rawBody393_117

def rawBody393_119 : StackLang.HolProg 64 :=
.seq rawBody393_105 rawBody393_118

def rawBody393_120 : StackLang.HolProg 64 :=
.seq rawBody393_104 rawBody393_119

def rawBody393_121 : StackLang.HolProg 64 :=
.seq rawBody393_103 rawBody393_120

def rawBody393_122 : StackLang.HolProg 64 :=
.seq rawBody393_102 rawBody393_121

def rawBody393_123 : StackLang.HolProg 64 :=
.seq rawBody393_101 rawBody393_122

def rawBody393_124 : StackLang.HolProg 64 :=
.seq rawBody393_100 rawBody393_123

def rawBody393_125 : StackLang.HolProg 64 :=
.seq rawBody393_99 rawBody393_124

def rawBody393_126 : StackLang.HolProg 64 :=
.seq rawBody393_98 rawBody393_125

def rawBody393_127 : StackLang.HolProg 64 :=
.seq rawBody393_97 rawBody393_126

def rawBody393_128 : StackLang.HolProg 64 :=
.seq rawBody393_96 rawBody393_127

def rawBody393_129 : StackLang.HolProg 64 :=
.seq rawBody393_95 rawBody393_128

def rawBody393_130 : StackLang.HolProg 64 :=
.seq rawBody393_94 rawBody393_129

def rawBody393_131 : StackLang.HolProg 64 :=
.seq rawBody393_93 rawBody393_130

def rawBody393_132 : StackLang.HolProg 64 :=
.seq rawBody393_92 rawBody393_131

def rawBody393_133 : StackLang.HolProg 64 :=
.seq rawBody393_91 rawBody393_132

def rawBody393_134 : StackLang.HolProg 64 :=
.seq rawBody393_90 rawBody393_133

def rawBody393_135 : StackLang.HolProg 64 :=
.seq rawBody393_89 rawBody393_134

def rawBody393_136 : StackLang.HolProg 64 :=
.seq rawBody393_88 rawBody393_135

def rawBody393_137 : StackLang.HolProg 64 :=
.seq rawBody393_87 rawBody393_136

def rawBody393_138 : StackLang.HolProg 64 :=
.seq rawBody393_86 rawBody393_137

def rawBody393_139 : StackLang.HolProg 64 :=
.seq rawBody393_85 rawBody393_138

def rawBody393_140 : StackLang.HolProg 64 :=
.seq rawBody393_84 rawBody393_139

def rawBody393_141 : StackLang.HolProg 64 :=
.seq rawBody393_15 rawBody393_140

def rawBody393_142 : StackLang.HolProg 64 :=
.seq rawBody393_2 rawBody393_141

def rawBody393_143 : StackLang.HolProg 64 :=
.seq rawBody393_1 rawBody393_142

def rawBody393_144 : StackLang.HolProg 64 :=
.seq rawBody393_0 rawBody393_143

def raw393 : StackLang.HolProg 64 := rawBody393_144
theorem raw393_eq : StackRawCall.compTop RawInfo.rawInfo (function393 (.list [])).1 = raw393 := by
  kernel_rfl
#print axioms raw393_eq
end InitECandidate.Proofs.BackendStages
