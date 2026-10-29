import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw472
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody472_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def AllocBody472_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody472_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody472_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def AllocBody472_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551360#64))

def AllocBody472_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 192#64))

def AllocBody472_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def AllocBody472_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 2

def AllocBody472_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def AllocBody472_10 : StackLang.HolProg 64 :=
.seq AllocBody472_8 AllocBody472_9

def AllocBody472_11 : StackLang.HolProg 64 :=
.seq AllocBody472_7 AllocBody472_10

def AllocBody472_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1495#64)

def AllocBody472_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody472_15 : StackLang.HolProg 64 :=
.seq AllocBody472_13 AllocBody472_14

def AllocBody472_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody472_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody472_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody472_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 472 3

def AllocBody472_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody472_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody472_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody472_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody472_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody472_26 : StackLang.HolProg 64 :=
.seq AllocBody472_24 AllocBody472_25

def AllocBody472_27 : StackLang.HolProg 64 :=
.seq AllocBody472_23 AllocBody472_26

def AllocBody472_28 : StackLang.HolProg 64 :=
.seq AllocBody472_22 AllocBody472_27

def AllocBody472_29 : StackLang.HolProg 64 :=
.seq AllocBody472_21 AllocBody472_28

def AllocBody472_30 : StackLang.HolProg 64 :=
.seq AllocBody472_20 AllocBody472_29

def AllocBody472_31 : StackLang.HolProg 64 :=
.seq AllocBody472_19 AllocBody472_30

def AllocBody472_32 : StackLang.HolProg 64 :=
.seq AllocBody472_18 AllocBody472_31

def AllocBody472_33 : StackLang.HolProg 64 :=
.seq AllocBody472_17 AllocBody472_32

def AllocBody472_34 : StackLang.HolProg 64 :=
.seq AllocBody472_16 AllocBody472_33

def AllocBody472_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody472_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody472_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody472_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody472_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody472_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody472_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody472_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody472_45 : StackLang.HolProg 64 :=
.seq AllocBody472_43 AllocBody472_44

def AllocBody472_46 : StackLang.HolProg 64 :=
.seq AllocBody472_42 AllocBody472_45

def AllocBody472_47 : StackLang.HolProg 64 :=
.seq AllocBody472_41 AllocBody472_46

def AllocBody472_48 : StackLang.HolProg 64 :=
.seq AllocBody472_40 AllocBody472_47

def AllocBody472_49 : StackLang.HolProg 64 :=
.seq AllocBody472_39 AllocBody472_48

def AllocBody472_50 : StackLang.HolProg 64 :=
.seq AllocBody472_38 AllocBody472_49

def AllocBody472_51 : StackLang.HolProg 64 :=
.seq AllocBody472_37 AllocBody472_50

def AllocBody472_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 6 3

def AllocBody472_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def AllocBody472_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def AllocBody472_55 : StackLang.HolProg 64 :=
.seq AllocBody472_53 AllocBody472_54

def AllocBody472_56 : StackLang.HolProg 64 :=
.seq AllocBody472_52 AllocBody472_55

def AllocBody472_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody472_58 : StackLang.HolProg 64 :=
.seq AllocBody472_56 AllocBody472_57

def AllocBody472_59 : StackLang.HolProg 64 :=
.call (some (AllocBody472_51, 0, 472, 2)) (Sum.inl 92) (some (AllocBody472_58, 472, 3))

def AllocBody472_60 : StackLang.HolProg 64 :=
.seq AllocBody472_36 AllocBody472_59

def AllocBody472_61 : StackLang.HolProg 64 :=
.seq AllocBody472_35 AllocBody472_60

def AllocBody472_62 : StackLang.HolProg 64 :=
.seq AllocBody472_34 AllocBody472_61

def AllocBody472_63 : StackLang.HolProg 64 :=
.seq AllocBody472_15 AllocBody472_62

def AllocBody472_64 : StackLang.HolProg 64 :=
.seq AllocBody472_12 AllocBody472_63

def AllocBody472_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody472_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody472_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody472_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def AllocBody472_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody472_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 64#64)))

def AllocBody472_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 64#64))

def AllocBody472_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody472_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody472_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody472_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 192#64)))

def AllocBody472_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody472_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def AllocBody472_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def AllocBody472_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 72#64)))

def AllocBody472_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody472_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 72#64))

def AllocBody472_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody472_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody472_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody472_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody472_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def AllocBody472_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 6

def AllocBody472_97 : StackLang.HolProg 64 :=
.seq AllocBody472_95 AllocBody472_96

def AllocBody472_98 : StackLang.HolProg 64 :=
.seq AllocBody472_94 AllocBody472_97

def AllocBody472_99 : StackLang.HolProg 64 :=
.seq AllocBody472_93 AllocBody472_98

def AllocBody472_100 : StackLang.HolProg 64 :=
.seq AllocBody472_92 AllocBody472_99

def AllocBody472_101 : StackLang.HolProg 64 :=
.seq AllocBody472_91 AllocBody472_100

def AllocBody472_102 : StackLang.HolProg 64 :=
.seq AllocBody472_90 AllocBody472_101

def AllocBody472_103 : StackLang.HolProg 64 :=
.seq AllocBody472_89 AllocBody472_102

def AllocBody472_104 : StackLang.HolProg 64 :=
.seq AllocBody472_88 AllocBody472_103

def AllocBody472_105 : StackLang.HolProg 64 :=
.seq AllocBody472_87 AllocBody472_104

def AllocBody472_106 : StackLang.HolProg 64 :=
.seq AllocBody472_86 AllocBody472_105

def AllocBody472_107 : StackLang.HolProg 64 :=
.seq AllocBody472_85 AllocBody472_106

def AllocBody472_108 : StackLang.HolProg 64 :=
.seq AllocBody472_84 AllocBody472_107

def AllocBody472_109 : StackLang.HolProg 64 :=
.seq AllocBody472_83 AllocBody472_108

def AllocBody472_110 : StackLang.HolProg 64 :=
.seq AllocBody472_82 AllocBody472_109

def AllocBody472_111 : StackLang.HolProg 64 :=
.seq AllocBody472_81 AllocBody472_110

def AllocBody472_112 : StackLang.HolProg 64 :=
.seq AllocBody472_80 AllocBody472_111

def AllocBody472_113 : StackLang.HolProg 64 :=
.seq AllocBody472_79 AllocBody472_112

def AllocBody472_114 : StackLang.HolProg 64 :=
.seq AllocBody472_78 AllocBody472_113

def AllocBody472_115 : StackLang.HolProg 64 :=
.seq AllocBody472_77 AllocBody472_114

def AllocBody472_116 : StackLang.HolProg 64 :=
.seq AllocBody472_76 AllocBody472_115

def AllocBody472_117 : StackLang.HolProg 64 :=
.seq AllocBody472_75 AllocBody472_116

def AllocBody472_118 : StackLang.HolProg 64 :=
.seq AllocBody472_74 AllocBody472_117

def AllocBody472_119 : StackLang.HolProg 64 :=
.seq AllocBody472_73 AllocBody472_118

def AllocBody472_120 : StackLang.HolProg 64 :=
.seq AllocBody472_72 AllocBody472_119

def AllocBody472_121 : StackLang.HolProg 64 :=
.seq AllocBody472_71 AllocBody472_120

def AllocBody472_122 : StackLang.HolProg 64 :=
.seq AllocBody472_70 AllocBody472_121

def AllocBody472_123 : StackLang.HolProg 64 :=
.seq AllocBody472_69 AllocBody472_122

def AllocBody472_124 : StackLang.HolProg 64 :=
.seq AllocBody472_68 AllocBody472_123

def AllocBody472_125 : StackLang.HolProg 64 :=
.seq AllocBody472_67 AllocBody472_124

def AllocBody472_126 : StackLang.HolProg 64 :=
.seq AllocBody472_66 AllocBody472_125

def AllocBody472_127 : StackLang.HolProg 64 :=
.seq AllocBody472_65 AllocBody472_126

def AllocBody472_128 : StackLang.HolProg 64 :=
.seq AllocBody472_64 AllocBody472_127

def AllocBody472_129 : StackLang.HolProg 64 :=
.seq AllocBody472_11 AllocBody472_128

def AllocBody472_130 : StackLang.HolProg 64 :=
.seq AllocBody472_6 AllocBody472_129

def AllocBody472_131 : StackLang.HolProg 64 :=
.seq AllocBody472_5 AllocBody472_130

def AllocBody472_132 : StackLang.HolProg 64 :=
.seq AllocBody472_4 AllocBody472_131

def AllocBody472_133 : StackLang.HolProg 64 :=
.seq AllocBody472_3 AllocBody472_132

def AllocBody472_134 : StackLang.HolProg 64 :=
.seq AllocBody472_2 AllocBody472_133

def AllocBody472_135 : StackLang.HolProg 64 :=
.seq AllocBody472_1 AllocBody472_134

def AllocBody472_136 : StackLang.HolProg 64 :=
.seq AllocBody472_0 AllocBody472_135

def Alloc472 : Nat × StackLang.HolProg 64 := (472, AllocBody472_136)
theorem Alloc472_eq : StackAlloc.progComp (472, raw472) = Alloc472 := by
  kernel_rfl
#print axioms Alloc472_eq
end InitECandidate.Proofs.BackendStages
