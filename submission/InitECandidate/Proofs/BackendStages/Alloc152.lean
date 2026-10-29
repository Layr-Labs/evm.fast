import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw152
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody152_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def AllocBody152_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody152_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def AllocBody152_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody152_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody152_7 : StackLang.HolProg 64 :=
.seq AllocBody152_5 AllocBody152_6

def AllocBody152_8 : StackLang.HolProg 64 :=
.seq AllocBody152_4 AllocBody152_7

def AllocBody152_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def AllocBody152_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody152_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody152_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody152_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def AllocBody152_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody152_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def AllocBody152_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def AllocBody152_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody152_24 : StackLang.HolProg 64 :=
.seq AllocBody152_22 AllocBody152_23

def AllocBody152_25 : StackLang.HolProg 64 :=
.seq AllocBody152_21 AllocBody152_24

def AllocBody152_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 128#64)

def AllocBody152_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody152_29 : StackLang.HolProg 64 :=
.seq AllocBody152_27 AllocBody152_28

def AllocBody152_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody152_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody152_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody152_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 152 3

def AllocBody152_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody152_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody152_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody152_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody152_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody152_40 : StackLang.HolProg 64 :=
.seq AllocBody152_38 AllocBody152_39

def AllocBody152_41 : StackLang.HolProg 64 :=
.seq AllocBody152_37 AllocBody152_40

def AllocBody152_42 : StackLang.HolProg 64 :=
.seq AllocBody152_36 AllocBody152_41

def AllocBody152_43 : StackLang.HolProg 64 :=
.seq AllocBody152_35 AllocBody152_42

def AllocBody152_44 : StackLang.HolProg 64 :=
.seq AllocBody152_34 AllocBody152_43

def AllocBody152_45 : StackLang.HolProg 64 :=
.seq AllocBody152_33 AllocBody152_44

def AllocBody152_46 : StackLang.HolProg 64 :=
.seq AllocBody152_32 AllocBody152_45

def AllocBody152_47 : StackLang.HolProg 64 :=
.seq AllocBody152_31 AllocBody152_46

def AllocBody152_48 : StackLang.HolProg 64 :=
.seq AllocBody152_30 AllocBody152_47

def AllocBody152_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody152_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody152_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody152_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody152_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody152_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody152_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody152_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody152_59 : StackLang.HolProg 64 :=
.seq AllocBody152_57 AllocBody152_58

def AllocBody152_60 : StackLang.HolProg 64 :=
.seq AllocBody152_56 AllocBody152_59

def AllocBody152_61 : StackLang.HolProg 64 :=
.seq AllocBody152_55 AllocBody152_60

def AllocBody152_62 : StackLang.HolProg 64 :=
.seq AllocBody152_54 AllocBody152_61

def AllocBody152_63 : StackLang.HolProg 64 :=
.seq AllocBody152_53 AllocBody152_62

def AllocBody152_64 : StackLang.HolProg 64 :=
.seq AllocBody152_52 AllocBody152_63

def AllocBody152_65 : StackLang.HolProg 64 :=
.seq AllocBody152_51 AllocBody152_64

def AllocBody152_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def AllocBody152_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def AllocBody152_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def AllocBody152_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody152_70 : StackLang.HolProg 64 :=
.seq AllocBody152_68 AllocBody152_69

def AllocBody152_71 : StackLang.HolProg 64 :=
.seq AllocBody152_67 AllocBody152_70

def AllocBody152_72 : StackLang.HolProg 64 :=
.seq AllocBody152_66 AllocBody152_71

def AllocBody152_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody152_74 : StackLang.HolProg 64 :=
.seq AllocBody152_72 AllocBody152_73

def AllocBody152_75 : StackLang.HolProg 64 :=
.call (some (AllocBody152_65, 0, 152, 2)) (Sum.inl 88) (some (AllocBody152_74, 152, 3))

def AllocBody152_76 : StackLang.HolProg 64 :=
.seq AllocBody152_50 AllocBody152_75

def AllocBody152_77 : StackLang.HolProg 64 :=
.seq AllocBody152_49 AllocBody152_76

def AllocBody152_78 : StackLang.HolProg 64 :=
.seq AllocBody152_48 AllocBody152_77

def AllocBody152_79 : StackLang.HolProg 64 :=
.seq AllocBody152_29 AllocBody152_78

def AllocBody152_80 : StackLang.HolProg 64 :=
.seq AllocBody152_26 AllocBody152_79

def AllocBody152_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody152_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def AllocBody152_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody152_86 : StackLang.HolProg 64 :=
.seq AllocBody152_84 AllocBody152_85

def AllocBody152_87 : StackLang.HolProg 64 :=
.seq AllocBody152_83 AllocBody152_86

def AllocBody152_88 : StackLang.HolProg 64 :=
.seq AllocBody152_82 AllocBody152_87

def AllocBody152_89 : StackLang.HolProg 64 :=
.seq AllocBody152_81 AllocBody152_88

def AllocBody152_90 : StackLang.HolProg 64 :=
.seq AllocBody152_80 AllocBody152_89

def AllocBody152_91 : StackLang.HolProg 64 :=
.seq AllocBody152_25 AllocBody152_90

def AllocBody152_92 : StackLang.HolProg 64 :=
.seq AllocBody152_20 AllocBody152_91

def AllocBody152_93 : StackLang.HolProg 64 :=
.seq AllocBody152_19 AllocBody152_92

def AllocBody152_94 : StackLang.HolProg 64 :=
.seq AllocBody152_18 AllocBody152_93

def AllocBody152_95 : StackLang.HolProg 64 :=
.seq AllocBody152_17 AllocBody152_94

def AllocBody152_96 : StackLang.HolProg 64 :=
.seq AllocBody152_16 AllocBody152_95

def AllocBody152_97 : StackLang.HolProg 64 :=
.seq AllocBody152_15 AllocBody152_96

def AllocBody152_98 : StackLang.HolProg 64 :=
.seq AllocBody152_14 AllocBody152_97

def AllocBody152_99 : StackLang.HolProg 64 :=
.seq AllocBody152_13 AllocBody152_98

def AllocBody152_100 : StackLang.HolProg 64 :=
.seq AllocBody152_12 AllocBody152_99

def AllocBody152_101 : StackLang.HolProg 64 :=
.seq AllocBody152_11 AllocBody152_100

def AllocBody152_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody152_104 : StackLang.HolProg 64 :=
.seq AllocBody152_102 AllocBody152_103

def AllocBody152_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody152_101 AllocBody152_104

def AllocBody152_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def AllocBody152_108 : StackLang.HolProg 64 :=
.seq AllocBody152_106 AllocBody152_107

def AllocBody152_109 : StackLang.HolProg 64 :=
.seq AllocBody152_105 AllocBody152_108

def AllocBody152_110 : StackLang.HolProg 64 :=
.seq AllocBody152_10 AllocBody152_109

def AllocBody152_111 : StackLang.HolProg 64 :=
.seq AllocBody152_9 AllocBody152_110

def AllocBody152_112 : StackLang.HolProg 64 :=
.loop AllocBody152_111

def AllocBody152_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody152_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody152_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody152_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def AllocBody152_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def AllocBody152_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def AllocBody152_119 : StackLang.HolProg 64 :=
.seq AllocBody152_117 AllocBody152_118

def AllocBody152_120 : StackLang.HolProg 64 :=
.seq AllocBody152_116 AllocBody152_119

def AllocBody152_121 : StackLang.HolProg 64 :=
.seq AllocBody152_115 AllocBody152_120

def AllocBody152_122 : StackLang.HolProg 64 :=
.seq AllocBody152_114 AllocBody152_121

def AllocBody152_123 : StackLang.HolProg 64 :=
.seq AllocBody152_113 AllocBody152_122

def AllocBody152_124 : StackLang.HolProg 64 :=
.seq AllocBody152_112 AllocBody152_123

def AllocBody152_125 : StackLang.HolProg 64 :=
.seq AllocBody152_8 AllocBody152_124

def AllocBody152_126 : StackLang.HolProg 64 :=
.seq AllocBody152_3 AllocBody152_125

def AllocBody152_127 : StackLang.HolProg 64 :=
.seq AllocBody152_2 AllocBody152_126

def AllocBody152_128 : StackLang.HolProg 64 :=
.seq AllocBody152_1 AllocBody152_127

def AllocBody152_129 : StackLang.HolProg 64 :=
.seq AllocBody152_0 AllocBody152_128

def Alloc152 : Nat × StackLang.HolProg 64 := (152, AllocBody152_129)
theorem Alloc152_eq : StackAlloc.progComp (152, raw152) = Alloc152 := by
  kernel_rfl
#print axioms Alloc152_eq
end InitECandidate.Proofs.BackendStages
