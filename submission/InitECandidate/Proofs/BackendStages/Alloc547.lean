import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw547
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody547_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def AllocBody547_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def AllocBody547_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1827#64)

def AllocBody547_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody547_5 : StackLang.HolProg 64 :=
.seq AllocBody547_3 AllocBody547_4

def AllocBody547_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody547_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody547_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody547_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 3

def AllocBody547_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody547_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody547_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody547_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody547_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody547_16 : StackLang.HolProg 64 :=
.seq AllocBody547_14 AllocBody547_15

def AllocBody547_17 : StackLang.HolProg 64 :=
.seq AllocBody547_13 AllocBody547_16

def AllocBody547_18 : StackLang.HolProg 64 :=
.seq AllocBody547_12 AllocBody547_17

def AllocBody547_19 : StackLang.HolProg 64 :=
.seq AllocBody547_11 AllocBody547_18

def AllocBody547_20 : StackLang.HolProg 64 :=
.seq AllocBody547_10 AllocBody547_19

def AllocBody547_21 : StackLang.HolProg 64 :=
.seq AllocBody547_9 AllocBody547_20

def AllocBody547_22 : StackLang.HolProg 64 :=
.seq AllocBody547_8 AllocBody547_21

def AllocBody547_23 : StackLang.HolProg 64 :=
.seq AllocBody547_7 AllocBody547_22

def AllocBody547_24 : StackLang.HolProg 64 :=
.seq AllocBody547_6 AllocBody547_23

def AllocBody547_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody547_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody547_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody547_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody547_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody547_32 : StackLang.HolProg 64 :=
.seq AllocBody547_30 AllocBody547_31

def AllocBody547_33 : StackLang.HolProg 64 :=
.seq AllocBody547_29 AllocBody547_32

def AllocBody547_34 : StackLang.HolProg 64 :=
.seq AllocBody547_28 AllocBody547_33

def AllocBody547_35 : StackLang.HolProg 64 :=
.seq AllocBody547_27 AllocBody547_34

def AllocBody547_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody547_38 : StackLang.HolProg 64 :=
.seq AllocBody547_36 AllocBody547_37

def AllocBody547_39 : StackLang.HolProg 64 :=
.call (some (AllocBody547_35, 0, 547, 2)) (Sum.inl 392) (some (AllocBody547_38, 547, 3))

def AllocBody547_40 : StackLang.HolProg 64 :=
.seq AllocBody547_26 AllocBody547_39

def AllocBody547_41 : StackLang.HolProg 64 :=
.seq AllocBody547_25 AllocBody547_40

def AllocBody547_42 : StackLang.HolProg 64 :=
.seq AllocBody547_24 AllocBody547_41

def AllocBody547_43 : StackLang.HolProg 64 :=
.seq AllocBody547_5 AllocBody547_42

def AllocBody547_44 : StackLang.HolProg 64 :=
.seq AllocBody547_2 AllocBody547_43

def AllocBody547_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody547_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def AllocBody547_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody547_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def AllocBody547_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def AllocBody547_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def AllocBody547_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1828#64)

def AllocBody547_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody547_55 : StackLang.HolProg 64 :=
.seq AllocBody547_53 AllocBody547_54

def AllocBody547_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def AllocBody547_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def AllocBody547_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def AllocBody547_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 5

def AllocBody547_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def AllocBody547_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def AllocBody547_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def AllocBody547_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def AllocBody547_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody547_66 : StackLang.HolProg 64 :=
.seq AllocBody547_64 AllocBody547_65

def AllocBody547_67 : StackLang.HolProg 64 :=
.seq AllocBody547_63 AllocBody547_66

def AllocBody547_68 : StackLang.HolProg 64 :=
.seq AllocBody547_62 AllocBody547_67

def AllocBody547_69 : StackLang.HolProg 64 :=
.seq AllocBody547_61 AllocBody547_68

def AllocBody547_70 : StackLang.HolProg 64 :=
.seq AllocBody547_60 AllocBody547_69

def AllocBody547_71 : StackLang.HolProg 64 :=
.seq AllocBody547_59 AllocBody547_70

def AllocBody547_72 : StackLang.HolProg 64 :=
.seq AllocBody547_58 AllocBody547_71

def AllocBody547_73 : StackLang.HolProg 64 :=
.seq AllocBody547_57 AllocBody547_72

def AllocBody547_74 : StackLang.HolProg 64 :=
.seq AllocBody547_56 AllocBody547_73

def AllocBody547_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody547_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody547_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def AllocBody547_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def AllocBody547_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def AllocBody547_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody547_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody547_83 : StackLang.HolProg 64 :=
.seq AllocBody547_81 AllocBody547_82

def AllocBody547_84 : StackLang.HolProg 64 :=
.seq AllocBody547_80 AllocBody547_83

def AllocBody547_85 : StackLang.HolProg 64 :=
.seq AllocBody547_79 AllocBody547_84

def AllocBody547_86 : StackLang.HolProg 64 :=
.seq AllocBody547_78 AllocBody547_85

def AllocBody547_87 : StackLang.HolProg 64 :=
.seq AllocBody547_77 AllocBody547_86

def AllocBody547_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def AllocBody547_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def AllocBody547_90 : StackLang.HolProg 64 :=
.seq AllocBody547_88 AllocBody547_89

def AllocBody547_91 : StackLang.HolProg 64 :=
.call (some (AllocBody547_87, 0, 547, 4)) (Sum.inl 187) (some (AllocBody547_90, 547, 5))

def AllocBody547_92 : StackLang.HolProg 64 :=
.seq AllocBody547_76 AllocBody547_91

def AllocBody547_93 : StackLang.HolProg 64 :=
.seq AllocBody547_75 AllocBody547_92

def AllocBody547_94 : StackLang.HolProg 64 :=
.seq AllocBody547_74 AllocBody547_93

def AllocBody547_95 : StackLang.HolProg 64 :=
.seq AllocBody547_55 AllocBody547_94

def AllocBody547_96 : StackLang.HolProg 64 :=
.seq AllocBody547_52 AllocBody547_95

def AllocBody547_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody547_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody547_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def AllocBody547_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody547_101 : StackLang.HolProg 64 :=
.seq AllocBody547_99 AllocBody547_100

def AllocBody547_102 : StackLang.HolProg 64 :=
.seq AllocBody547_98 AllocBody547_101

def AllocBody547_103 : StackLang.HolProg 64 :=
.seq AllocBody547_97 AllocBody547_102

def AllocBody547_104 : StackLang.HolProg 64 :=
.seq AllocBody547_96 AllocBody547_103

def AllocBody547_105 : StackLang.HolProg 64 :=
.seq AllocBody547_51 AllocBody547_104

def AllocBody547_106 : StackLang.HolProg 64 :=
.seq AllocBody547_50 AllocBody547_105

def AllocBody547_107 : StackLang.HolProg 64 :=
.seq AllocBody547_49 AllocBody547_106

def AllocBody547_108 : StackLang.HolProg 64 :=
.seq AllocBody547_48 AllocBody547_107

def AllocBody547_109 : StackLang.HolProg 64 :=
.seq AllocBody547_47 AllocBody547_108

def AllocBody547_110 : StackLang.HolProg 64 :=
.seq AllocBody547_46 AllocBody547_109

def AllocBody547_111 : StackLang.HolProg 64 :=
.seq AllocBody547_45 AllocBody547_110

def AllocBody547_112 : StackLang.HolProg 64 :=
.seq AllocBody547_44 AllocBody547_111

def AllocBody547_113 : StackLang.HolProg 64 :=
.seq AllocBody547_1 AllocBody547_112

def AllocBody547_114 : StackLang.HolProg 64 :=
.seq AllocBody547_0 AllocBody547_113

def Alloc547 : Nat × StackLang.HolProg 64 := (547, AllocBody547_114)
theorem Alloc547_eq : StackAlloc.progComp (547, raw547) = Alloc547 := by
  kernel_rfl
#print axioms Alloc547_eq
end InitECandidate.Proofs.BackendStages
