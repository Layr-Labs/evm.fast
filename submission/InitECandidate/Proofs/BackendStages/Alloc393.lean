import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw393
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody393_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 8

def AllocBody393_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody393_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 56#64)

def AllocBody393_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 7

def AllocBody393_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 6

def AllocBody393_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 5

def AllocBody393_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 4

def AllocBody393_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 7 3

def AllocBody393_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 2

def AllocBody393_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def AllocBody393_10 : StackLang.HolProg 64 :=
.seq AllocBody393_8 AllocBody393_9

def AllocBody393_11 : StackLang.HolProg 64 :=
.seq AllocBody393_7 AllocBody393_10

def AllocBody393_12 : StackLang.HolProg 64 :=
.seq AllocBody393_6 AllocBody393_11

def AllocBody393_13 : StackLang.HolProg 64 :=
.seq AllocBody393_5 AllocBody393_12

def AllocBody393_14 : StackLang.HolProg 64 :=
.seq AllocBody393_4 AllocBody393_13

def AllocBody393_15 : StackLang.HolProg 64 :=
.seq AllocBody393_3 AllocBody393_14

def AllocBody393_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1171#64)

def AllocBody393_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody393_19 : StackLang.HolProg 64 :=
.seq AllocBody393_17 AllocBody393_18

def AllocBody393_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody393_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody393_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody393_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 393 3

def AllocBody393_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody393_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody393_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody393_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody393_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody393_30 : StackLang.HolProg 64 :=
.seq AllocBody393_28 AllocBody393_29

def AllocBody393_31 : StackLang.HolProg 64 :=
.seq AllocBody393_27 AllocBody393_30

def AllocBody393_32 : StackLang.HolProg 64 :=
.seq AllocBody393_26 AllocBody393_31

def AllocBody393_33 : StackLang.HolProg 64 :=
.seq AllocBody393_25 AllocBody393_32

def AllocBody393_34 : StackLang.HolProg 64 :=
.seq AllocBody393_24 AllocBody393_33

def AllocBody393_35 : StackLang.HolProg 64 :=
.seq AllocBody393_23 AllocBody393_34

def AllocBody393_36 : StackLang.HolProg 64 :=
.seq AllocBody393_22 AllocBody393_35

def AllocBody393_37 : StackLang.HolProg 64 :=
.seq AllocBody393_21 AllocBody393_36

def AllocBody393_38 : StackLang.HolProg 64 :=
.seq AllocBody393_20 AllocBody393_37

def AllocBody393_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody393_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody393_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody393_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody393_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody393_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody393_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody393_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody393_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody393_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody393_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody393_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody393_53 : StackLang.HolProg 64 :=
.seq AllocBody393_51 AllocBody393_52

def AllocBody393_54 : StackLang.HolProg 64 :=
.seq AllocBody393_50 AllocBody393_53

def AllocBody393_55 : StackLang.HolProg 64 :=
.seq AllocBody393_49 AllocBody393_54

def AllocBody393_56 : StackLang.HolProg 64 :=
.seq AllocBody393_48 AllocBody393_55

def AllocBody393_57 : StackLang.HolProg 64 :=
.seq AllocBody393_47 AllocBody393_56

def AllocBody393_58 : StackLang.HolProg 64 :=
.seq AllocBody393_46 AllocBody393_57

def AllocBody393_59 : StackLang.HolProg 64 :=
.seq AllocBody393_45 AllocBody393_58

def AllocBody393_60 : StackLang.HolProg 64 :=
.seq AllocBody393_44 AllocBody393_59

def AllocBody393_61 : StackLang.HolProg 64 :=
.seq AllocBody393_43 AllocBody393_60

def AllocBody393_62 : StackLang.HolProg 64 :=
.seq AllocBody393_42 AllocBody393_61

def AllocBody393_63 : StackLang.HolProg 64 :=
.seq AllocBody393_41 AllocBody393_62

def AllocBody393_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 8 7

def AllocBody393_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 6

def AllocBody393_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 5

def AllocBody393_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 4

def AllocBody393_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 7 3

def AllocBody393_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def AllocBody393_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 1

def AllocBody393_71 : StackLang.HolProg 64 :=
.seq AllocBody393_69 AllocBody393_70

def AllocBody393_72 : StackLang.HolProg 64 :=
.seq AllocBody393_68 AllocBody393_71

def AllocBody393_73 : StackLang.HolProg 64 :=
.seq AllocBody393_67 AllocBody393_72

def AllocBody393_74 : StackLang.HolProg 64 :=
.seq AllocBody393_66 AllocBody393_73

def AllocBody393_75 : StackLang.HolProg 64 :=
.seq AllocBody393_65 AllocBody393_74

def AllocBody393_76 : StackLang.HolProg 64 :=
.seq AllocBody393_64 AllocBody393_75

def AllocBody393_77 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody393_78 : StackLang.HolProg 64 :=
.seq AllocBody393_76 AllocBody393_77

def AllocBody393_79 : StackLang.HolProg 64 :=
.call (some (AllocBody393_63, 0, 393, 2)) (Sum.inl 68) (some (AllocBody393_78, 393, 3))

def AllocBody393_80 : StackLang.HolProg 64 :=
.seq AllocBody393_40 AllocBody393_79

def AllocBody393_81 : StackLang.HolProg 64 :=
.seq AllocBody393_39 AllocBody393_80

def AllocBody393_82 : StackLang.HolProg 64 :=
.seq AllocBody393_38 AllocBody393_81

def AllocBody393_83 : StackLang.HolProg 64 :=
.seq AllocBody393_19 AllocBody393_82

def AllocBody393_84 : StackLang.HolProg 64 :=
.seq AllocBody393_16 AllocBody393_83

def AllocBody393_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody393_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody393_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def AllocBody393_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody393_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody393_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody393_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody393_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def AllocBody393_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody393_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody393_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody393_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def AllocBody393_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody393_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody393_108 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody393_109 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody393_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody393_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 8

def AllocBody393_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 8

def AllocBody393_113 : StackLang.HolProg 64 :=
.seq AllocBody393_111 AllocBody393_112

def AllocBody393_114 : StackLang.HolProg 64 :=
.seq AllocBody393_110 AllocBody393_113

def AllocBody393_115 : StackLang.HolProg 64 :=
.seq AllocBody393_109 AllocBody393_114

def AllocBody393_116 : StackLang.HolProg 64 :=
.seq AllocBody393_108 AllocBody393_115

def AllocBody393_117 : StackLang.HolProg 64 :=
.seq AllocBody393_107 AllocBody393_116

def AllocBody393_118 : StackLang.HolProg 64 :=
.seq AllocBody393_106 AllocBody393_117

def AllocBody393_119 : StackLang.HolProg 64 :=
.seq AllocBody393_105 AllocBody393_118

def AllocBody393_120 : StackLang.HolProg 64 :=
.seq AllocBody393_104 AllocBody393_119

def AllocBody393_121 : StackLang.HolProg 64 :=
.seq AllocBody393_103 AllocBody393_120

def AllocBody393_122 : StackLang.HolProg 64 :=
.seq AllocBody393_102 AllocBody393_121

def AllocBody393_123 : StackLang.HolProg 64 :=
.seq AllocBody393_101 AllocBody393_122

def AllocBody393_124 : StackLang.HolProg 64 :=
.seq AllocBody393_100 AllocBody393_123

def AllocBody393_125 : StackLang.HolProg 64 :=
.seq AllocBody393_99 AllocBody393_124

def AllocBody393_126 : StackLang.HolProg 64 :=
.seq AllocBody393_98 AllocBody393_125

def AllocBody393_127 : StackLang.HolProg 64 :=
.seq AllocBody393_97 AllocBody393_126

def AllocBody393_128 : StackLang.HolProg 64 :=
.seq AllocBody393_96 AllocBody393_127

def AllocBody393_129 : StackLang.HolProg 64 :=
.seq AllocBody393_95 AllocBody393_128

def AllocBody393_130 : StackLang.HolProg 64 :=
.seq AllocBody393_94 AllocBody393_129

def AllocBody393_131 : StackLang.HolProg 64 :=
.seq AllocBody393_93 AllocBody393_130

def AllocBody393_132 : StackLang.HolProg 64 :=
.seq AllocBody393_92 AllocBody393_131

def AllocBody393_133 : StackLang.HolProg 64 :=
.seq AllocBody393_91 AllocBody393_132

def AllocBody393_134 : StackLang.HolProg 64 :=
.seq AllocBody393_90 AllocBody393_133

def AllocBody393_135 : StackLang.HolProg 64 :=
.seq AllocBody393_89 AllocBody393_134

def AllocBody393_136 : StackLang.HolProg 64 :=
.seq AllocBody393_88 AllocBody393_135

def AllocBody393_137 : StackLang.HolProg 64 :=
.seq AllocBody393_87 AllocBody393_136

def AllocBody393_138 : StackLang.HolProg 64 :=
.seq AllocBody393_86 AllocBody393_137

def AllocBody393_139 : StackLang.HolProg 64 :=
.seq AllocBody393_85 AllocBody393_138

def AllocBody393_140 : StackLang.HolProg 64 :=
.seq AllocBody393_84 AllocBody393_139

def AllocBody393_141 : StackLang.HolProg 64 :=
.seq AllocBody393_15 AllocBody393_140

def AllocBody393_142 : StackLang.HolProg 64 :=
.seq AllocBody393_2 AllocBody393_141

def AllocBody393_143 : StackLang.HolProg 64 :=
.seq AllocBody393_1 AllocBody393_142

def AllocBody393_144 : StackLang.HolProg 64 :=
.seq AllocBody393_0 AllocBody393_143

def Alloc393 : Nat × StackLang.HolProg 64 := (393, AllocBody393_144)
theorem Alloc393_eq : StackAlloc.progComp (393, raw393) = Alloc393 := by
  kernel_rfl
#print axioms Alloc393_eq
end InitECandidate.Proofs.BackendStages
