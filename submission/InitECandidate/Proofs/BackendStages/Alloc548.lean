import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw548
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody548_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody548_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody548_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1829#64)

def AllocBody548_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody548_5 : StackLang.HolProg 64 :=
.seq AllocBody548_3 AllocBody548_4

def AllocBody548_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody548_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody548_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody548_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 3

def AllocBody548_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody548_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody548_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody548_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody548_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody548_16 : StackLang.HolProg 64 :=
.seq AllocBody548_14 AllocBody548_15

def AllocBody548_17 : StackLang.HolProg 64 :=
.seq AllocBody548_13 AllocBody548_16

def AllocBody548_18 : StackLang.HolProg 64 :=
.seq AllocBody548_12 AllocBody548_17

def AllocBody548_19 : StackLang.HolProg 64 :=
.seq AllocBody548_11 AllocBody548_18

def AllocBody548_20 : StackLang.HolProg 64 :=
.seq AllocBody548_10 AllocBody548_19

def AllocBody548_21 : StackLang.HolProg 64 :=
.seq AllocBody548_9 AllocBody548_20

def AllocBody548_22 : StackLang.HolProg 64 :=
.seq AllocBody548_8 AllocBody548_21

def AllocBody548_23 : StackLang.HolProg 64 :=
.seq AllocBody548_7 AllocBody548_22

def AllocBody548_24 : StackLang.HolProg 64 :=
.seq AllocBody548_6 AllocBody548_23

def AllocBody548_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody548_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody548_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody548_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody548_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody548_32 : StackLang.HolProg 64 :=
.seq AllocBody548_30 AllocBody548_31

def AllocBody548_33 : StackLang.HolProg 64 :=
.seq AllocBody548_29 AllocBody548_32

def AllocBody548_34 : StackLang.HolProg 64 :=
.seq AllocBody548_28 AllocBody548_33

def AllocBody548_35 : StackLang.HolProg 64 :=
.seq AllocBody548_27 AllocBody548_34

def AllocBody548_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody548_38 : StackLang.HolProg 64 :=
.seq AllocBody548_36 AllocBody548_37

def AllocBody548_39 : StackLang.HolProg 64 :=
.call (some (AllocBody548_35, 0, 548, 2)) (Sum.inl 392) (some (AllocBody548_38, 548, 3))

def AllocBody548_40 : StackLang.HolProg 64 :=
.seq AllocBody548_26 AllocBody548_39

def AllocBody548_41 : StackLang.HolProg 64 :=
.seq AllocBody548_25 AllocBody548_40

def AllocBody548_42 : StackLang.HolProg 64 :=
.seq AllocBody548_24 AllocBody548_41

def AllocBody548_43 : StackLang.HolProg 64 :=
.seq AllocBody548_5 AllocBody548_42

def AllocBody548_44 : StackLang.HolProg 64 :=
.seq AllocBody548_2 AllocBody548_43

def AllocBody548_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody548_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody548_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody548_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody548_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody548_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def AllocBody548_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody548_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1830#64)

def AllocBody548_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody548_57 : StackLang.HolProg 64 :=
.seq AllocBody548_55 AllocBody548_56

def AllocBody548_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody548_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody548_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody548_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 5

def AllocBody548_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody548_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody548_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody548_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody548_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody548_68 : StackLang.HolProg 64 :=
.seq AllocBody548_66 AllocBody548_67

def AllocBody548_69 : StackLang.HolProg 64 :=
.seq AllocBody548_65 AllocBody548_68

def AllocBody548_70 : StackLang.HolProg 64 :=
.seq AllocBody548_64 AllocBody548_69

def AllocBody548_71 : StackLang.HolProg 64 :=
.seq AllocBody548_63 AllocBody548_70

def AllocBody548_72 : StackLang.HolProg 64 :=
.seq AllocBody548_62 AllocBody548_71

def AllocBody548_73 : StackLang.HolProg 64 :=
.seq AllocBody548_61 AllocBody548_72

def AllocBody548_74 : StackLang.HolProg 64 :=
.seq AllocBody548_60 AllocBody548_73

def AllocBody548_75 : StackLang.HolProg 64 :=
.seq AllocBody548_59 AllocBody548_74

def AllocBody548_76 : StackLang.HolProg 64 :=
.seq AllocBody548_58 AllocBody548_75

def AllocBody548_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody548_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody548_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody548_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody548_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody548_84 : StackLang.HolProg 64 :=
.seq AllocBody548_82 AllocBody548_83

def AllocBody548_85 : StackLang.HolProg 64 :=
.seq AllocBody548_81 AllocBody548_84

def AllocBody548_86 : StackLang.HolProg 64 :=
.seq AllocBody548_80 AllocBody548_85

def AllocBody548_87 : StackLang.HolProg 64 :=
.seq AllocBody548_79 AllocBody548_86

def AllocBody548_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody548_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody548_90 : StackLang.HolProg 64 :=
.seq AllocBody548_88 AllocBody548_89

def AllocBody548_91 : StackLang.HolProg 64 :=
.call (some (AllocBody548_87, 0, 548, 4)) (Sum.inl 192) (some (AllocBody548_90, 548, 5))

def AllocBody548_92 : StackLang.HolProg 64 :=
.seq AllocBody548_78 AllocBody548_91

def AllocBody548_93 : StackLang.HolProg 64 :=
.seq AllocBody548_77 AllocBody548_92

def AllocBody548_94 : StackLang.HolProg 64 :=
.seq AllocBody548_76 AllocBody548_93

def AllocBody548_95 : StackLang.HolProg 64 :=
.seq AllocBody548_57 AllocBody548_94

def AllocBody548_96 : StackLang.HolProg 64 :=
.seq AllocBody548_54 AllocBody548_95

def AllocBody548_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody548_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody548_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody548_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody548_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody548_102 : StackLang.HolProg 64 :=
.seq AllocBody548_100 AllocBody548_101

def AllocBody548_103 : StackLang.HolProg 64 :=
.seq AllocBody548_99 AllocBody548_102

def AllocBody548_104 : StackLang.HolProg 64 :=
.seq AllocBody548_98 AllocBody548_103

def AllocBody548_105 : StackLang.HolProg 64 :=
.seq AllocBody548_97 AllocBody548_104

def AllocBody548_106 : StackLang.HolProg 64 :=
.seq AllocBody548_96 AllocBody548_105

def AllocBody548_107 : StackLang.HolProg 64 :=
.seq AllocBody548_53 AllocBody548_106

def AllocBody548_108 : StackLang.HolProg 64 :=
.seq AllocBody548_52 AllocBody548_107

def AllocBody548_109 : StackLang.HolProg 64 :=
.seq AllocBody548_51 AllocBody548_108

def AllocBody548_110 : StackLang.HolProg 64 :=
.seq AllocBody548_50 AllocBody548_109

def AllocBody548_111 : StackLang.HolProg 64 :=
.seq AllocBody548_49 AllocBody548_110

def AllocBody548_112 : StackLang.HolProg 64 :=
.seq AllocBody548_48 AllocBody548_111

def AllocBody548_113 : StackLang.HolProg 64 :=
.seq AllocBody548_47 AllocBody548_112

def AllocBody548_114 : StackLang.HolProg 64 :=
.seq AllocBody548_46 AllocBody548_113

def AllocBody548_115 : StackLang.HolProg 64 :=
.seq AllocBody548_45 AllocBody548_114

def AllocBody548_116 : StackLang.HolProg 64 :=
.seq AllocBody548_44 AllocBody548_115

def AllocBody548_117 : StackLang.HolProg 64 :=
.seq AllocBody548_1 AllocBody548_116

def AllocBody548_118 : StackLang.HolProg 64 :=
.seq AllocBody548_0 AllocBody548_117

def Alloc548 : Nat × StackLang.HolProg 64 := (548, AllocBody548_118)
theorem Alloc548_eq : StackAlloc.progComp (548, raw548) = Alloc548 := by
  kernel_rfl
#print axioms Alloc548_eq
end InitECandidate.Proofs.BackendStages
