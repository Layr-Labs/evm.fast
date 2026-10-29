import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function548
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody548_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody548_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody548_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1829#64)

def rawBody548_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody548_5 : StackLang.HolProg 64 :=
.seq rawBody548_3 rawBody548_4

def rawBody548_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody548_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody548_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody548_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 3

def rawBody548_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody548_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody548_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody548_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody548_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody548_16 : StackLang.HolProg 64 :=
.seq rawBody548_14 rawBody548_15

def rawBody548_17 : StackLang.HolProg 64 :=
.seq rawBody548_13 rawBody548_16

def rawBody548_18 : StackLang.HolProg 64 :=
.seq rawBody548_12 rawBody548_17

def rawBody548_19 : StackLang.HolProg 64 :=
.seq rawBody548_11 rawBody548_18

def rawBody548_20 : StackLang.HolProg 64 :=
.seq rawBody548_10 rawBody548_19

def rawBody548_21 : StackLang.HolProg 64 :=
.seq rawBody548_9 rawBody548_20

def rawBody548_22 : StackLang.HolProg 64 :=
.seq rawBody548_8 rawBody548_21

def rawBody548_23 : StackLang.HolProg 64 :=
.seq rawBody548_7 rawBody548_22

def rawBody548_24 : StackLang.HolProg 64 :=
.seq rawBody548_6 rawBody548_23

def rawBody548_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody548_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody548_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody548_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody548_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody548_32 : StackLang.HolProg 64 :=
.seq rawBody548_30 rawBody548_31

def rawBody548_33 : StackLang.HolProg 64 :=
.seq rawBody548_29 rawBody548_32

def rawBody548_34 : StackLang.HolProg 64 :=
.seq rawBody548_28 rawBody548_33

def rawBody548_35 : StackLang.HolProg 64 :=
.seq rawBody548_27 rawBody548_34

def rawBody548_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody548_38 : StackLang.HolProg 64 :=
.seq rawBody548_36 rawBody548_37

def rawBody548_39 : StackLang.HolProg 64 :=
.call (some (rawBody548_35, 0, 548, 2)) (Sum.inl 392) (some (rawBody548_38, 548, 3))

def rawBody548_40 : StackLang.HolProg 64 :=
.seq rawBody548_26 rawBody548_39

def rawBody548_41 : StackLang.HolProg 64 :=
.seq rawBody548_25 rawBody548_40

def rawBody548_42 : StackLang.HolProg 64 :=
.seq rawBody548_24 rawBody548_41

def rawBody548_43 : StackLang.HolProg 64 :=
.seq rawBody548_5 rawBody548_42

def rawBody548_44 : StackLang.HolProg 64 :=
.seq rawBody548_2 rawBody548_43

def rawBody548_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody548_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody548_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody548_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 0 0

def rawBody548_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 18446744073709551360#64))

def rawBody548_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def rawBody548_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody548_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1830#64)

def rawBody548_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody548_57 : StackLang.HolProg 64 :=
.seq rawBody548_55 rawBody548_56

def rawBody548_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody548_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody548_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody548_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 548 5

def rawBody548_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody548_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody548_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody548_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody548_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody548_68 : StackLang.HolProg 64 :=
.seq rawBody548_66 rawBody548_67

def rawBody548_69 : StackLang.HolProg 64 :=
.seq rawBody548_65 rawBody548_68

def rawBody548_70 : StackLang.HolProg 64 :=
.seq rawBody548_64 rawBody548_69

def rawBody548_71 : StackLang.HolProg 64 :=
.seq rawBody548_63 rawBody548_70

def rawBody548_72 : StackLang.HolProg 64 :=
.seq rawBody548_62 rawBody548_71

def rawBody548_73 : StackLang.HolProg 64 :=
.seq rawBody548_61 rawBody548_72

def rawBody548_74 : StackLang.HolProg 64 :=
.seq rawBody548_60 rawBody548_73

def rawBody548_75 : StackLang.HolProg 64 :=
.seq rawBody548_59 rawBody548_74

def rawBody548_76 : StackLang.HolProg 64 :=
.seq rawBody548_58 rawBody548_75

def rawBody548_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody548_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody548_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody548_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody548_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody548_84 : StackLang.HolProg 64 :=
.seq rawBody548_82 rawBody548_83

def rawBody548_85 : StackLang.HolProg 64 :=
.seq rawBody548_81 rawBody548_84

def rawBody548_86 : StackLang.HolProg 64 :=
.seq rawBody548_80 rawBody548_85

def rawBody548_87 : StackLang.HolProg 64 :=
.seq rawBody548_79 rawBody548_86

def rawBody548_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody548_89 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody548_90 : StackLang.HolProg 64 :=
.seq rawBody548_88 rawBody548_89

def rawBody548_91 : StackLang.HolProg 64 :=
.call (some (rawBody548_87, 0, 548, 4)) (Sum.inl 192) (some (rawBody548_90, 548, 5))

def rawBody548_92 : StackLang.HolProg 64 :=
.seq rawBody548_78 rawBody548_91

def rawBody548_93 : StackLang.HolProg 64 :=
.seq rawBody548_77 rawBody548_92

def rawBody548_94 : StackLang.HolProg 64 :=
.seq rawBody548_76 rawBody548_93

def rawBody548_95 : StackLang.HolProg 64 :=
.seq rawBody548_57 rawBody548_94

def rawBody548_96 : StackLang.HolProg 64 :=
.seq rawBody548_54 rawBody548_95

def rawBody548_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody548_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody548_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody548_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody548_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody548_102 : StackLang.HolProg 64 :=
.seq rawBody548_100 rawBody548_101

def rawBody548_103 : StackLang.HolProg 64 :=
.seq rawBody548_99 rawBody548_102

def rawBody548_104 : StackLang.HolProg 64 :=
.seq rawBody548_98 rawBody548_103

def rawBody548_105 : StackLang.HolProg 64 :=
.seq rawBody548_97 rawBody548_104

def rawBody548_106 : StackLang.HolProg 64 :=
.seq rawBody548_96 rawBody548_105

def rawBody548_107 : StackLang.HolProg 64 :=
.seq rawBody548_53 rawBody548_106

def rawBody548_108 : StackLang.HolProg 64 :=
.seq rawBody548_52 rawBody548_107

def rawBody548_109 : StackLang.HolProg 64 :=
.seq rawBody548_51 rawBody548_108

def rawBody548_110 : StackLang.HolProg 64 :=
.seq rawBody548_50 rawBody548_109

def rawBody548_111 : StackLang.HolProg 64 :=
.seq rawBody548_49 rawBody548_110

def rawBody548_112 : StackLang.HolProg 64 :=
.seq rawBody548_48 rawBody548_111

def rawBody548_113 : StackLang.HolProg 64 :=
.seq rawBody548_47 rawBody548_112

def rawBody548_114 : StackLang.HolProg 64 :=
.seq rawBody548_46 rawBody548_113

def rawBody548_115 : StackLang.HolProg 64 :=
.seq rawBody548_45 rawBody548_114

def rawBody548_116 : StackLang.HolProg 64 :=
.seq rawBody548_44 rawBody548_115

def rawBody548_117 : StackLang.HolProg 64 :=
.seq rawBody548_1 rawBody548_116

def rawBody548_118 : StackLang.HolProg 64 :=
.seq rawBody548_0 rawBody548_117

def raw548 : StackLang.HolProg 64 := rawBody548_118
theorem raw548_eq : StackRawCall.compTop RawInfo.rawInfo (function548 (.list [])).1 = raw548 := by
  kernel_rfl
#print axioms raw548_eq
end InitECandidate.Proofs.BackendStages
