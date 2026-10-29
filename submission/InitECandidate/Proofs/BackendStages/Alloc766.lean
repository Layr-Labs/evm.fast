import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw766
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody766_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody766_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def AllocBody766_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody766_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def AllocBody766_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody766_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def AllocBody766_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody766_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def AllocBody766_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody766_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def AllocBody766_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody766_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def AllocBody766_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody766_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def AllocBody766_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8505329371266088957#64)

def AllocBody766_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody766_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 17002214543764226050#64)

def AllocBody766_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def AllocBody766_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6865905132761471162#64)

def AllocBody766_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def AllocBody766_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8632934651105793861#64)

def AllocBody766_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def AllocBody766_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6631298214892334189#64)

def AllocBody766_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def AllocBody766_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1582556514881692819#64)

def AllocBody766_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def AllocBody766_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def AllocBody766_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody766_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def AllocBody766_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def AllocBody766_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def AllocBody766_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def AllocBody766_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody766_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody766_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody766_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody766_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody766_63 : StackLang.HolProg 64 :=
.seq AllocBody766_61 AllocBody766_62

def AllocBody766_64 : StackLang.HolProg 64 :=
.seq AllocBody766_60 AllocBody766_63

def AllocBody766_65 : StackLang.HolProg 64 :=
.seq AllocBody766_59 AllocBody766_64

def AllocBody766_66 : StackLang.HolProg 64 :=
.seq AllocBody766_58 AllocBody766_65

def AllocBody766_67 : StackLang.HolProg 64 :=
.seq AllocBody766_57 AllocBody766_66

def AllocBody766_68 : StackLang.HolProg 64 :=
.seq AllocBody766_56 AllocBody766_67

def AllocBody766_69 : StackLang.HolProg 64 :=
.seq AllocBody766_55 AllocBody766_68

def AllocBody766_70 : StackLang.HolProg 64 :=
.seq AllocBody766_54 AllocBody766_69

def AllocBody766_71 : StackLang.HolProg 64 :=
.seq AllocBody766_53 AllocBody766_70

def AllocBody766_72 : StackLang.HolProg 64 :=
.seq AllocBody766_52 AllocBody766_71

def AllocBody766_73 : StackLang.HolProg 64 :=
.seq AllocBody766_51 AllocBody766_72

def AllocBody766_74 : StackLang.HolProg 64 :=
.seq AllocBody766_50 AllocBody766_73

def AllocBody766_75 : StackLang.HolProg 64 :=
.seq AllocBody766_49 AllocBody766_74

def AllocBody766_76 : StackLang.HolProg 64 :=
.seq AllocBody766_48 AllocBody766_75

def AllocBody766_77 : StackLang.HolProg 64 :=
.seq AllocBody766_47 AllocBody766_76

def AllocBody766_78 : StackLang.HolProg 64 :=
.seq AllocBody766_46 AllocBody766_77

def AllocBody766_79 : StackLang.HolProg 64 :=
.seq AllocBody766_45 AllocBody766_78

def AllocBody766_80 : StackLang.HolProg 64 :=
.seq AllocBody766_44 AllocBody766_79

def AllocBody766_81 : StackLang.HolProg 64 :=
.seq AllocBody766_43 AllocBody766_80

def AllocBody766_82 : StackLang.HolProg 64 :=
.seq AllocBody766_42 AllocBody766_81

def AllocBody766_83 : StackLang.HolProg 64 :=
.seq AllocBody766_41 AllocBody766_82

def AllocBody766_84 : StackLang.HolProg 64 :=
.seq AllocBody766_40 AllocBody766_83

def AllocBody766_85 : StackLang.HolProg 64 :=
.seq AllocBody766_39 AllocBody766_84

def AllocBody766_86 : StackLang.HolProg 64 :=
.seq AllocBody766_38 AllocBody766_85

def AllocBody766_87 : StackLang.HolProg 64 :=
.seq AllocBody766_37 AllocBody766_86

def AllocBody766_88 : StackLang.HolProg 64 :=
.seq AllocBody766_36 AllocBody766_87

def AllocBody766_89 : StackLang.HolProg 64 :=
.seq AllocBody766_35 AllocBody766_88

def AllocBody766_90 : StackLang.HolProg 64 :=
.seq AllocBody766_34 AllocBody766_89

def AllocBody766_91 : StackLang.HolProg 64 :=
.seq AllocBody766_33 AllocBody766_90

def AllocBody766_92 : StackLang.HolProg 64 :=
.seq AllocBody766_32 AllocBody766_91

def AllocBody766_93 : StackLang.HolProg 64 :=
.seq AllocBody766_31 AllocBody766_92

def AllocBody766_94 : StackLang.HolProg 64 :=
.seq AllocBody766_30 AllocBody766_93

def AllocBody766_95 : StackLang.HolProg 64 :=
.seq AllocBody766_29 AllocBody766_94

def AllocBody766_96 : StackLang.HolProg 64 :=
.seq AllocBody766_28 AllocBody766_95

def AllocBody766_97 : StackLang.HolProg 64 :=
.seq AllocBody766_27 AllocBody766_96

def AllocBody766_98 : StackLang.HolProg 64 :=
.seq AllocBody766_26 AllocBody766_97

def AllocBody766_99 : StackLang.HolProg 64 :=
.seq AllocBody766_25 AllocBody766_98

def AllocBody766_100 : StackLang.HolProg 64 :=
.seq AllocBody766_24 AllocBody766_99

def AllocBody766_101 : StackLang.HolProg 64 :=
.seq AllocBody766_23 AllocBody766_100

def AllocBody766_102 : StackLang.HolProg 64 :=
.seq AllocBody766_22 AllocBody766_101

def AllocBody766_103 : StackLang.HolProg 64 :=
.seq AllocBody766_21 AllocBody766_102

def AllocBody766_104 : StackLang.HolProg 64 :=
.seq AllocBody766_20 AllocBody766_103

def AllocBody766_105 : StackLang.HolProg 64 :=
.seq AllocBody766_19 AllocBody766_104

def AllocBody766_106 : StackLang.HolProg 64 :=
.seq AllocBody766_18 AllocBody766_105

def AllocBody766_107 : StackLang.HolProg 64 :=
.seq AllocBody766_17 AllocBody766_106

def AllocBody766_108 : StackLang.HolProg 64 :=
.seq AllocBody766_16 AllocBody766_107

def AllocBody766_109 : StackLang.HolProg 64 :=
.seq AllocBody766_15 AllocBody766_108

def AllocBody766_110 : StackLang.HolProg 64 :=
.seq AllocBody766_14 AllocBody766_109

def AllocBody766_111 : StackLang.HolProg 64 :=
.seq AllocBody766_13 AllocBody766_110

def AllocBody766_112 : StackLang.HolProg 64 :=
.seq AllocBody766_12 AllocBody766_111

def AllocBody766_113 : StackLang.HolProg 64 :=
.seq AllocBody766_11 AllocBody766_112

def AllocBody766_114 : StackLang.HolProg 64 :=
.seq AllocBody766_10 AllocBody766_113

def AllocBody766_115 : StackLang.HolProg 64 :=
.seq AllocBody766_9 AllocBody766_114

def AllocBody766_116 : StackLang.HolProg 64 :=
.seq AllocBody766_8 AllocBody766_115

def AllocBody766_117 : StackLang.HolProg 64 :=
.seq AllocBody766_7 AllocBody766_116

def AllocBody766_118 : StackLang.HolProg 64 :=
.seq AllocBody766_6 AllocBody766_117

def AllocBody766_119 : StackLang.HolProg 64 :=
.seq AllocBody766_5 AllocBody766_118

def AllocBody766_120 : StackLang.HolProg 64 :=
.seq AllocBody766_4 AllocBody766_119

def AllocBody766_121 : StackLang.HolProg 64 :=
.seq AllocBody766_3 AllocBody766_120

def AllocBody766_122 : StackLang.HolProg 64 :=
.seq AllocBody766_2 AllocBody766_121

def AllocBody766_123 : StackLang.HolProg 64 :=
.seq AllocBody766_1 AllocBody766_122

def AllocBody766_124 : StackLang.HolProg 64 :=
.seq AllocBody766_0 AllocBody766_123

def Alloc766 : Nat × StackLang.HolProg 64 := (766, AllocBody766_124)
theorem Alloc766_eq : StackAlloc.progComp (766, raw766) = Alloc766 := by
  kernel_rfl
#print axioms Alloc766_eq
end InitECandidate.Proofs.BackendStages
