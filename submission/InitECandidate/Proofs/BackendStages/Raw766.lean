import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function766
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody766_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody766_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def rawBody766_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody766_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def rawBody766_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody766_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def rawBody766_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody766_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def rawBody766_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody766_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def rawBody766_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody766_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def rawBody766_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody766_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody766_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8505329371266088957#64)

def rawBody766_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody766_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 17002214543764226050#64)

def rawBody766_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody766_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6865905132761471162#64)

def rawBody766_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def rawBody766_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8632934651105793861#64)

def rawBody766_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def rawBody766_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6631298214892334189#64)

def rawBody766_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def rawBody766_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1582556514881692819#64)

def rawBody766_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def rawBody766_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def rawBody766_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody766_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def rawBody766_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody766_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def rawBody766_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def rawBody766_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody766_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def rawBody766_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody766_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody766_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody766_63 : StackLang.HolProg 64 :=
.seq rawBody766_61 rawBody766_62

def rawBody766_64 : StackLang.HolProg 64 :=
.seq rawBody766_60 rawBody766_63

def rawBody766_65 : StackLang.HolProg 64 :=
.seq rawBody766_59 rawBody766_64

def rawBody766_66 : StackLang.HolProg 64 :=
.seq rawBody766_58 rawBody766_65

def rawBody766_67 : StackLang.HolProg 64 :=
.seq rawBody766_57 rawBody766_66

def rawBody766_68 : StackLang.HolProg 64 :=
.seq rawBody766_56 rawBody766_67

def rawBody766_69 : StackLang.HolProg 64 :=
.seq rawBody766_55 rawBody766_68

def rawBody766_70 : StackLang.HolProg 64 :=
.seq rawBody766_54 rawBody766_69

def rawBody766_71 : StackLang.HolProg 64 :=
.seq rawBody766_53 rawBody766_70

def rawBody766_72 : StackLang.HolProg 64 :=
.seq rawBody766_52 rawBody766_71

def rawBody766_73 : StackLang.HolProg 64 :=
.seq rawBody766_51 rawBody766_72

def rawBody766_74 : StackLang.HolProg 64 :=
.seq rawBody766_50 rawBody766_73

def rawBody766_75 : StackLang.HolProg 64 :=
.seq rawBody766_49 rawBody766_74

def rawBody766_76 : StackLang.HolProg 64 :=
.seq rawBody766_48 rawBody766_75

def rawBody766_77 : StackLang.HolProg 64 :=
.seq rawBody766_47 rawBody766_76

def rawBody766_78 : StackLang.HolProg 64 :=
.seq rawBody766_46 rawBody766_77

def rawBody766_79 : StackLang.HolProg 64 :=
.seq rawBody766_45 rawBody766_78

def rawBody766_80 : StackLang.HolProg 64 :=
.seq rawBody766_44 rawBody766_79

def rawBody766_81 : StackLang.HolProg 64 :=
.seq rawBody766_43 rawBody766_80

def rawBody766_82 : StackLang.HolProg 64 :=
.seq rawBody766_42 rawBody766_81

def rawBody766_83 : StackLang.HolProg 64 :=
.seq rawBody766_41 rawBody766_82

def rawBody766_84 : StackLang.HolProg 64 :=
.seq rawBody766_40 rawBody766_83

def rawBody766_85 : StackLang.HolProg 64 :=
.seq rawBody766_39 rawBody766_84

def rawBody766_86 : StackLang.HolProg 64 :=
.seq rawBody766_38 rawBody766_85

def rawBody766_87 : StackLang.HolProg 64 :=
.seq rawBody766_37 rawBody766_86

def rawBody766_88 : StackLang.HolProg 64 :=
.seq rawBody766_36 rawBody766_87

def rawBody766_89 : StackLang.HolProg 64 :=
.seq rawBody766_35 rawBody766_88

def rawBody766_90 : StackLang.HolProg 64 :=
.seq rawBody766_34 rawBody766_89

def rawBody766_91 : StackLang.HolProg 64 :=
.seq rawBody766_33 rawBody766_90

def rawBody766_92 : StackLang.HolProg 64 :=
.seq rawBody766_32 rawBody766_91

def rawBody766_93 : StackLang.HolProg 64 :=
.seq rawBody766_31 rawBody766_92

def rawBody766_94 : StackLang.HolProg 64 :=
.seq rawBody766_30 rawBody766_93

def rawBody766_95 : StackLang.HolProg 64 :=
.seq rawBody766_29 rawBody766_94

def rawBody766_96 : StackLang.HolProg 64 :=
.seq rawBody766_28 rawBody766_95

def rawBody766_97 : StackLang.HolProg 64 :=
.seq rawBody766_27 rawBody766_96

def rawBody766_98 : StackLang.HolProg 64 :=
.seq rawBody766_26 rawBody766_97

def rawBody766_99 : StackLang.HolProg 64 :=
.seq rawBody766_25 rawBody766_98

def rawBody766_100 : StackLang.HolProg 64 :=
.seq rawBody766_24 rawBody766_99

def rawBody766_101 : StackLang.HolProg 64 :=
.seq rawBody766_23 rawBody766_100

def rawBody766_102 : StackLang.HolProg 64 :=
.seq rawBody766_22 rawBody766_101

def rawBody766_103 : StackLang.HolProg 64 :=
.seq rawBody766_21 rawBody766_102

def rawBody766_104 : StackLang.HolProg 64 :=
.seq rawBody766_20 rawBody766_103

def rawBody766_105 : StackLang.HolProg 64 :=
.seq rawBody766_19 rawBody766_104

def rawBody766_106 : StackLang.HolProg 64 :=
.seq rawBody766_18 rawBody766_105

def rawBody766_107 : StackLang.HolProg 64 :=
.seq rawBody766_17 rawBody766_106

def rawBody766_108 : StackLang.HolProg 64 :=
.seq rawBody766_16 rawBody766_107

def rawBody766_109 : StackLang.HolProg 64 :=
.seq rawBody766_15 rawBody766_108

def rawBody766_110 : StackLang.HolProg 64 :=
.seq rawBody766_14 rawBody766_109

def rawBody766_111 : StackLang.HolProg 64 :=
.seq rawBody766_13 rawBody766_110

def rawBody766_112 : StackLang.HolProg 64 :=
.seq rawBody766_12 rawBody766_111

def rawBody766_113 : StackLang.HolProg 64 :=
.seq rawBody766_11 rawBody766_112

def rawBody766_114 : StackLang.HolProg 64 :=
.seq rawBody766_10 rawBody766_113

def rawBody766_115 : StackLang.HolProg 64 :=
.seq rawBody766_9 rawBody766_114

def rawBody766_116 : StackLang.HolProg 64 :=
.seq rawBody766_8 rawBody766_115

def rawBody766_117 : StackLang.HolProg 64 :=
.seq rawBody766_7 rawBody766_116

def rawBody766_118 : StackLang.HolProg 64 :=
.seq rawBody766_6 rawBody766_117

def rawBody766_119 : StackLang.HolProg 64 :=
.seq rawBody766_5 rawBody766_118

def rawBody766_120 : StackLang.HolProg 64 :=
.seq rawBody766_4 rawBody766_119

def rawBody766_121 : StackLang.HolProg 64 :=
.seq rawBody766_3 rawBody766_120

def rawBody766_122 : StackLang.HolProg 64 :=
.seq rawBody766_2 rawBody766_121

def rawBody766_123 : StackLang.HolProg 64 :=
.seq rawBody766_1 rawBody766_122

def rawBody766_124 : StackLang.HolProg 64 :=
.seq rawBody766_0 rawBody766_123

def raw766 : StackLang.HolProg 64 := rawBody766_124
theorem raw766_eq : StackRawCall.compTop RawInfo.rawInfo (function766 (.list [])).1 = raw766 := by
  kernel_rfl
#print axioms raw766_eq
end InitECandidate.Proofs.BackendStages
