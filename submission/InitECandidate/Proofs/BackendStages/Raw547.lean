import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function547
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody547_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody547_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody547_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1827#64)

def rawBody547_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody547_5 : StackLang.HolProg 64 :=
.seq rawBody547_3 rawBody547_4

def rawBody547_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody547_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody547_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody547_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 3

def rawBody547_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody547_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody547_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody547_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody547_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody547_16 : StackLang.HolProg 64 :=
.seq rawBody547_14 rawBody547_15

def rawBody547_17 : StackLang.HolProg 64 :=
.seq rawBody547_13 rawBody547_16

def rawBody547_18 : StackLang.HolProg 64 :=
.seq rawBody547_12 rawBody547_17

def rawBody547_19 : StackLang.HolProg 64 :=
.seq rawBody547_11 rawBody547_18

def rawBody547_20 : StackLang.HolProg 64 :=
.seq rawBody547_10 rawBody547_19

def rawBody547_21 : StackLang.HolProg 64 :=
.seq rawBody547_9 rawBody547_20

def rawBody547_22 : StackLang.HolProg 64 :=
.seq rawBody547_8 rawBody547_21

def rawBody547_23 : StackLang.HolProg 64 :=
.seq rawBody547_7 rawBody547_22

def rawBody547_24 : StackLang.HolProg 64 :=
.seq rawBody547_6 rawBody547_23

def rawBody547_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody547_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody547_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody547_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody547_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody547_32 : StackLang.HolProg 64 :=
.seq rawBody547_30 rawBody547_31

def rawBody547_33 : StackLang.HolProg 64 :=
.seq rawBody547_29 rawBody547_32

def rawBody547_34 : StackLang.HolProg 64 :=
.seq rawBody547_28 rawBody547_33

def rawBody547_35 : StackLang.HolProg 64 :=
.seq rawBody547_27 rawBody547_34

def rawBody547_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody547_38 : StackLang.HolProg 64 :=
.seq rawBody547_36 rawBody547_37

def rawBody547_39 : StackLang.HolProg 64 :=
.call (some (rawBody547_35, 0, 547, 2)) (Sum.inl 392) (some (rawBody547_38, 547, 3))

def rawBody547_40 : StackLang.HolProg 64 :=
.seq rawBody547_26 rawBody547_39

def rawBody547_41 : StackLang.HolProg 64 :=
.seq rawBody547_25 rawBody547_40

def rawBody547_42 : StackLang.HolProg 64 :=
.seq rawBody547_24 rawBody547_41

def rawBody547_43 : StackLang.HolProg 64 :=
.seq rawBody547_5 rawBody547_42

def rawBody547_44 : StackLang.HolProg 64 :=
.seq rawBody547_2 rawBody547_43

def rawBody547_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody547_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody547_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody547_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody547_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody547_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def rawBody547_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1828#64)

def rawBody547_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody547_55 : StackLang.HolProg 64 :=
.seq rawBody547_53 rawBody547_54

def rawBody547_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody547_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody547_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody547_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 547 5

def rawBody547_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody547_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody547_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody547_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody547_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody547_66 : StackLang.HolProg 64 :=
.seq rawBody547_64 rawBody547_65

def rawBody547_67 : StackLang.HolProg 64 :=
.seq rawBody547_63 rawBody547_66

def rawBody547_68 : StackLang.HolProg 64 :=
.seq rawBody547_62 rawBody547_67

def rawBody547_69 : StackLang.HolProg 64 :=
.seq rawBody547_61 rawBody547_68

def rawBody547_70 : StackLang.HolProg 64 :=
.seq rawBody547_60 rawBody547_69

def rawBody547_71 : StackLang.HolProg 64 :=
.seq rawBody547_59 rawBody547_70

def rawBody547_72 : StackLang.HolProg 64 :=
.seq rawBody547_58 rawBody547_71

def rawBody547_73 : StackLang.HolProg 64 :=
.seq rawBody547_57 rawBody547_72

def rawBody547_74 : StackLang.HolProg 64 :=
.seq rawBody547_56 rawBody547_73

def rawBody547_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody547_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody547_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody547_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody547_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody547_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody547_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody547_83 : StackLang.HolProg 64 :=
.seq rawBody547_81 rawBody547_82

def rawBody547_84 : StackLang.HolProg 64 :=
.seq rawBody547_80 rawBody547_83

def rawBody547_85 : StackLang.HolProg 64 :=
.seq rawBody547_79 rawBody547_84

def rawBody547_86 : StackLang.HolProg 64 :=
.seq rawBody547_78 rawBody547_85

def rawBody547_87 : StackLang.HolProg 64 :=
.seq rawBody547_77 rawBody547_86

def rawBody547_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody547_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody547_90 : StackLang.HolProg 64 :=
.seq rawBody547_88 rawBody547_89

def rawBody547_91 : StackLang.HolProg 64 :=
.call (some (rawBody547_87, 0, 547, 4)) (Sum.inl 187) (some (rawBody547_90, 547, 5))

def rawBody547_92 : StackLang.HolProg 64 :=
.seq rawBody547_76 rawBody547_91

def rawBody547_93 : StackLang.HolProg 64 :=
.seq rawBody547_75 rawBody547_92

def rawBody547_94 : StackLang.HolProg 64 :=
.seq rawBody547_74 rawBody547_93

def rawBody547_95 : StackLang.HolProg 64 :=
.seq rawBody547_55 rawBody547_94

def rawBody547_96 : StackLang.HolProg 64 :=
.seq rawBody547_52 rawBody547_95

def rawBody547_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody547_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody547_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody547_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody547_101 : StackLang.HolProg 64 :=
.seq rawBody547_99 rawBody547_100

def rawBody547_102 : StackLang.HolProg 64 :=
.seq rawBody547_98 rawBody547_101

def rawBody547_103 : StackLang.HolProg 64 :=
.seq rawBody547_97 rawBody547_102

def rawBody547_104 : StackLang.HolProg 64 :=
.seq rawBody547_96 rawBody547_103

def rawBody547_105 : StackLang.HolProg 64 :=
.seq rawBody547_51 rawBody547_104

def rawBody547_106 : StackLang.HolProg 64 :=
.seq rawBody547_50 rawBody547_105

def rawBody547_107 : StackLang.HolProg 64 :=
.seq rawBody547_49 rawBody547_106

def rawBody547_108 : StackLang.HolProg 64 :=
.seq rawBody547_48 rawBody547_107

def rawBody547_109 : StackLang.HolProg 64 :=
.seq rawBody547_47 rawBody547_108

def rawBody547_110 : StackLang.HolProg 64 :=
.seq rawBody547_46 rawBody547_109

def rawBody547_111 : StackLang.HolProg 64 :=
.seq rawBody547_45 rawBody547_110

def rawBody547_112 : StackLang.HolProg 64 :=
.seq rawBody547_44 rawBody547_111

def rawBody547_113 : StackLang.HolProg 64 :=
.seq rawBody547_1 rawBody547_112

def rawBody547_114 : StackLang.HolProg 64 :=
.seq rawBody547_0 rawBody547_113

def raw547 : StackLang.HolProg 64 := rawBody547_114
theorem raw547_eq : StackRawCall.compTop RawInfo.rawInfo (function547 (.list [])).1 = raw547 := by
  kernel_rfl
#print axioms raw547_eq
end InitECandidate.Proofs.BackendStages
