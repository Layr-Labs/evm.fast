import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function611
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody611_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody611_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody611_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 168#64))

def rawBody611_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 264#64))

def rawBody611_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody611_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody611_7 : StackLang.HolProg 64 :=
.seq rawBody611_5 rawBody611_6

def rawBody611_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2348#64)

def rawBody611_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody611_11 : StackLang.HolProg 64 :=
.seq rawBody611_9 rawBody611_10

def rawBody611_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody611_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody611_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody611_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 3

def rawBody611_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody611_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody611_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody611_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody611_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody611_22 : StackLang.HolProg 64 :=
.seq rawBody611_20 rawBody611_21

def rawBody611_23 : StackLang.HolProg 64 :=
.seq rawBody611_19 rawBody611_22

def rawBody611_24 : StackLang.HolProg 64 :=
.seq rawBody611_18 rawBody611_23

def rawBody611_25 : StackLang.HolProg 64 :=
.seq rawBody611_17 rawBody611_24

def rawBody611_26 : StackLang.HolProg 64 :=
.seq rawBody611_16 rawBody611_25

def rawBody611_27 : StackLang.HolProg 64 :=
.seq rawBody611_15 rawBody611_26

def rawBody611_28 : StackLang.HolProg 64 :=
.seq rawBody611_14 rawBody611_27

def rawBody611_29 : StackLang.HolProg 64 :=
.seq rawBody611_13 rawBody611_28

def rawBody611_30 : StackLang.HolProg 64 :=
.seq rawBody611_12 rawBody611_29

def rawBody611_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody611_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody611_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody611_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody611_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody611_38 : StackLang.HolProg 64 :=
.seq rawBody611_36 rawBody611_37

def rawBody611_39 : StackLang.HolProg 64 :=
.seq rawBody611_35 rawBody611_38

def rawBody611_40 : StackLang.HolProg 64 :=
.seq rawBody611_34 rawBody611_39

def rawBody611_41 : StackLang.HolProg 64 :=
.seq rawBody611_33 rawBody611_40

def rawBody611_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody611_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody611_44 : StackLang.HolProg 64 :=
.seq rawBody611_42 rawBody611_43

def rawBody611_45 : StackLang.HolProg 64 :=
.call (some (rawBody611_41, 0, 611, 2)) (Sum.inl 194) (some (rawBody611_44, 611, 3))

def rawBody611_46 : StackLang.HolProg 64 :=
.seq rawBody611_32 rawBody611_45

def rawBody611_47 : StackLang.HolProg 64 :=
.seq rawBody611_31 rawBody611_46

def rawBody611_48 : StackLang.HolProg 64 :=
.seq rawBody611_30 rawBody611_47

def rawBody611_49 : StackLang.HolProg 64 :=
.seq rawBody611_11 rawBody611_48

def rawBody611_50 : StackLang.HolProg 64 :=
.seq rawBody611_8 rawBody611_49

def rawBody611_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody611_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 176#64))

def rawBody611_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 272#64))

def rawBody611_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2349#64)

def rawBody611_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody611_60 : StackLang.HolProg 64 :=
.seq rawBody611_58 rawBody611_59

def rawBody611_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody611_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody611_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody611_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 611 5

def rawBody611_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody611_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody611_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody611_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody611_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody611_71 : StackLang.HolProg 64 :=
.seq rawBody611_69 rawBody611_70

def rawBody611_72 : StackLang.HolProg 64 :=
.seq rawBody611_68 rawBody611_71

def rawBody611_73 : StackLang.HolProg 64 :=
.seq rawBody611_67 rawBody611_72

def rawBody611_74 : StackLang.HolProg 64 :=
.seq rawBody611_66 rawBody611_73

def rawBody611_75 : StackLang.HolProg 64 :=
.seq rawBody611_65 rawBody611_74

def rawBody611_76 : StackLang.HolProg 64 :=
.seq rawBody611_64 rawBody611_75

def rawBody611_77 : StackLang.HolProg 64 :=
.seq rawBody611_63 rawBody611_76

def rawBody611_78 : StackLang.HolProg 64 :=
.seq rawBody611_62 rawBody611_77

def rawBody611_79 : StackLang.HolProg 64 :=
.seq rawBody611_61 rawBody611_78

def rawBody611_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody611_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody611_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody611_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody611_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody611_87 : StackLang.HolProg 64 :=
.seq rawBody611_85 rawBody611_86

def rawBody611_88 : StackLang.HolProg 64 :=
.seq rawBody611_84 rawBody611_87

def rawBody611_89 : StackLang.HolProg 64 :=
.seq rawBody611_83 rawBody611_88

def rawBody611_90 : StackLang.HolProg 64 :=
.seq rawBody611_82 rawBody611_89

def rawBody611_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody611_92 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody611_93 : StackLang.HolProg 64 :=
.seq rawBody611_91 rawBody611_92

def rawBody611_94 : StackLang.HolProg 64 :=
.call (some (rawBody611_90, 0, 611, 4)) (Sum.inl 194) (some (rawBody611_93, 611, 5))

def rawBody611_95 : StackLang.HolProg 64 :=
.seq rawBody611_81 rawBody611_94

def rawBody611_96 : StackLang.HolProg 64 :=
.seq rawBody611_80 rawBody611_95

def rawBody611_97 : StackLang.HolProg 64 :=
.seq rawBody611_79 rawBody611_96

def rawBody611_98 : StackLang.HolProg 64 :=
.seq rawBody611_60 rawBody611_97

def rawBody611_99 : StackLang.HolProg 64 :=
.seq rawBody611_57 rawBody611_98

def rawBody611_100 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody611_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody611_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody611_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody611_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody611_105 : StackLang.HolProg 64 :=
.seq rawBody611_103 rawBody611_104

def rawBody611_106 : StackLang.HolProg 64 :=
.seq rawBody611_102 rawBody611_105

def rawBody611_107 : StackLang.HolProg 64 :=
.seq rawBody611_101 rawBody611_106

def rawBody611_108 : StackLang.HolProg 64 :=
.seq rawBody611_100 rawBody611_107

def rawBody611_109 : StackLang.HolProg 64 :=
.seq rawBody611_99 rawBody611_108

def rawBody611_110 : StackLang.HolProg 64 :=
.seq rawBody611_56 rawBody611_109

def rawBody611_111 : StackLang.HolProg 64 :=
.seq rawBody611_55 rawBody611_110

def rawBody611_112 : StackLang.HolProg 64 :=
.seq rawBody611_54 rawBody611_111

def rawBody611_113 : StackLang.HolProg 64 :=
.seq rawBody611_53 rawBody611_112

def rawBody611_114 : StackLang.HolProg 64 :=
.seq rawBody611_52 rawBody611_113

def rawBody611_115 : StackLang.HolProg 64 :=
.seq rawBody611_51 rawBody611_114

def rawBody611_116 : StackLang.HolProg 64 :=
.seq rawBody611_50 rawBody611_115

def rawBody611_117 : StackLang.HolProg 64 :=
.seq rawBody611_7 rawBody611_116

def rawBody611_118 : StackLang.HolProg 64 :=
.seq rawBody611_4 rawBody611_117

def rawBody611_119 : StackLang.HolProg 64 :=
.seq rawBody611_3 rawBody611_118

def rawBody611_120 : StackLang.HolProg 64 :=
.seq rawBody611_2 rawBody611_119

def rawBody611_121 : StackLang.HolProg 64 :=
.seq rawBody611_1 rawBody611_120

def rawBody611_122 : StackLang.HolProg 64 :=
.seq rawBody611_0 rawBody611_121

def raw611 : StackLang.HolProg 64 := rawBody611_122
theorem raw611_eq : StackRawCall.compTop RawInfo.rawInfo (function611 (.list [])).1 = raw611 := by
  kernel_rfl
#print axioms raw611_eq
end InitECandidate.Proofs.BackendStages
