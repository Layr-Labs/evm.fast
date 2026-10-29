import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc766
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody766_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8505329371266088957#64)

def RemovedBody766_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody766_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 17002214543764226050#64)

def RemovedBody766_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody766_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6865905132761471162#64)

def RemovedBody766_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody766_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 8632934651105793861#64)

def RemovedBody766_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody766_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 6631298214892334189#64)

def RemovedBody766_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody766_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1582556514881692819#64)

def RemovedBody766_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody766_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def RemovedBody766_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8505329371266088957#64)

def RemovedBody766_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody766_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 17002214543764226050#64)

def RemovedBody766_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody766_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6865905132761471162#64)

def RemovedBody766_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 16#64))

def RemovedBody766_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 8632934651105793861#64)

def RemovedBody766_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 24#64))

def RemovedBody766_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 6631298214892334189#64)

def RemovedBody766_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 32#64))

def RemovedBody766_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1582556514881692819#64)

def RemovedBody766_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 40#64))

def RemovedBody766_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 96#64)))

def RemovedBody766_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody766_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 8#64))

def RemovedBody766_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def RemovedBody766_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 24#64))

def RemovedBody766_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 32#64))

def RemovedBody766_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody766_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody766_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody766_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody766_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody766_63 : StackLang.HolProg 64 :=
.seq RemovedBody766_61 RemovedBody766_62

def RemovedBody766_64 : StackLang.HolProg 64 :=
.seq RemovedBody766_60 RemovedBody766_63

def RemovedBody766_65 : StackLang.HolProg 64 :=
.seq RemovedBody766_59 RemovedBody766_64

def RemovedBody766_66 : StackLang.HolProg 64 :=
.seq RemovedBody766_58 RemovedBody766_65

def RemovedBody766_67 : StackLang.HolProg 64 :=
.seq RemovedBody766_57 RemovedBody766_66

def RemovedBody766_68 : StackLang.HolProg 64 :=
.seq RemovedBody766_56 RemovedBody766_67

def RemovedBody766_69 : StackLang.HolProg 64 :=
.seq RemovedBody766_55 RemovedBody766_68

def RemovedBody766_70 : StackLang.HolProg 64 :=
.seq RemovedBody766_54 RemovedBody766_69

def RemovedBody766_71 : StackLang.HolProg 64 :=
.seq RemovedBody766_53 RemovedBody766_70

def RemovedBody766_72 : StackLang.HolProg 64 :=
.seq RemovedBody766_52 RemovedBody766_71

def RemovedBody766_73 : StackLang.HolProg 64 :=
.seq RemovedBody766_51 RemovedBody766_72

def RemovedBody766_74 : StackLang.HolProg 64 :=
.seq RemovedBody766_50 RemovedBody766_73

def RemovedBody766_75 : StackLang.HolProg 64 :=
.seq RemovedBody766_49 RemovedBody766_74

def RemovedBody766_76 : StackLang.HolProg 64 :=
.seq RemovedBody766_48 RemovedBody766_75

def RemovedBody766_77 : StackLang.HolProg 64 :=
.seq RemovedBody766_47 RemovedBody766_76

def RemovedBody766_78 : StackLang.HolProg 64 :=
.seq RemovedBody766_46 RemovedBody766_77

def RemovedBody766_79 : StackLang.HolProg 64 :=
.seq RemovedBody766_45 RemovedBody766_78

def RemovedBody766_80 : StackLang.HolProg 64 :=
.seq RemovedBody766_44 RemovedBody766_79

def RemovedBody766_81 : StackLang.HolProg 64 :=
.seq RemovedBody766_43 RemovedBody766_80

def RemovedBody766_82 : StackLang.HolProg 64 :=
.seq RemovedBody766_42 RemovedBody766_81

def RemovedBody766_83 : StackLang.HolProg 64 :=
.seq RemovedBody766_41 RemovedBody766_82

def RemovedBody766_84 : StackLang.HolProg 64 :=
.seq RemovedBody766_40 RemovedBody766_83

def RemovedBody766_85 : StackLang.HolProg 64 :=
.seq RemovedBody766_39 RemovedBody766_84

def RemovedBody766_86 : StackLang.HolProg 64 :=
.seq RemovedBody766_38 RemovedBody766_85

def RemovedBody766_87 : StackLang.HolProg 64 :=
.seq RemovedBody766_37 RemovedBody766_86

def RemovedBody766_88 : StackLang.HolProg 64 :=
.seq RemovedBody766_36 RemovedBody766_87

def RemovedBody766_89 : StackLang.HolProg 64 :=
.seq RemovedBody766_35 RemovedBody766_88

def RemovedBody766_90 : StackLang.HolProg 64 :=
.seq RemovedBody766_34 RemovedBody766_89

def RemovedBody766_91 : StackLang.HolProg 64 :=
.seq RemovedBody766_33 RemovedBody766_90

def RemovedBody766_92 : StackLang.HolProg 64 :=
.seq RemovedBody766_32 RemovedBody766_91

def RemovedBody766_93 : StackLang.HolProg 64 :=
.seq RemovedBody766_31 RemovedBody766_92

def RemovedBody766_94 : StackLang.HolProg 64 :=
.seq RemovedBody766_30 RemovedBody766_93

def RemovedBody766_95 : StackLang.HolProg 64 :=
.seq RemovedBody766_29 RemovedBody766_94

def RemovedBody766_96 : StackLang.HolProg 64 :=
.seq RemovedBody766_28 RemovedBody766_95

def RemovedBody766_97 : StackLang.HolProg 64 :=
.seq RemovedBody766_27 RemovedBody766_96

def RemovedBody766_98 : StackLang.HolProg 64 :=
.seq RemovedBody766_26 RemovedBody766_97

def RemovedBody766_99 : StackLang.HolProg 64 :=
.seq RemovedBody766_25 RemovedBody766_98

def RemovedBody766_100 : StackLang.HolProg 64 :=
.seq RemovedBody766_24 RemovedBody766_99

def RemovedBody766_101 : StackLang.HolProg 64 :=
.seq RemovedBody766_23 RemovedBody766_100

def RemovedBody766_102 : StackLang.HolProg 64 :=
.seq RemovedBody766_22 RemovedBody766_101

def RemovedBody766_103 : StackLang.HolProg 64 :=
.seq RemovedBody766_21 RemovedBody766_102

def RemovedBody766_104 : StackLang.HolProg 64 :=
.seq RemovedBody766_20 RemovedBody766_103

def RemovedBody766_105 : StackLang.HolProg 64 :=
.seq RemovedBody766_19 RemovedBody766_104

def RemovedBody766_106 : StackLang.HolProg 64 :=
.seq RemovedBody766_18 RemovedBody766_105

def RemovedBody766_107 : StackLang.HolProg 64 :=
.seq RemovedBody766_17 RemovedBody766_106

def RemovedBody766_108 : StackLang.HolProg 64 :=
.seq RemovedBody766_16 RemovedBody766_107

def RemovedBody766_109 : StackLang.HolProg 64 :=
.seq RemovedBody766_15 RemovedBody766_108

def RemovedBody766_110 : StackLang.HolProg 64 :=
.seq RemovedBody766_14 RemovedBody766_109

def RemovedBody766_111 : StackLang.HolProg 64 :=
.seq RemovedBody766_13 RemovedBody766_110

def RemovedBody766_112 : StackLang.HolProg 64 :=
.seq RemovedBody766_12 RemovedBody766_111

def RemovedBody766_113 : StackLang.HolProg 64 :=
.seq RemovedBody766_11 RemovedBody766_112

def RemovedBody766_114 : StackLang.HolProg 64 :=
.seq RemovedBody766_10 RemovedBody766_113

def RemovedBody766_115 : StackLang.HolProg 64 :=
.seq RemovedBody766_9 RemovedBody766_114

def RemovedBody766_116 : StackLang.HolProg 64 :=
.seq RemovedBody766_8 RemovedBody766_115

def RemovedBody766_117 : StackLang.HolProg 64 :=
.seq RemovedBody766_7 RemovedBody766_116

def RemovedBody766_118 : StackLang.HolProg 64 :=
.seq RemovedBody766_6 RemovedBody766_117

def RemovedBody766_119 : StackLang.HolProg 64 :=
.seq RemovedBody766_5 RemovedBody766_118

def RemovedBody766_120 : StackLang.HolProg 64 :=
.seq RemovedBody766_4 RemovedBody766_119

def RemovedBody766_121 : StackLang.HolProg 64 :=
.seq RemovedBody766_3 RemovedBody766_120

def RemovedBody766_122 : StackLang.HolProg 64 :=
.seq RemovedBody766_2 RemovedBody766_121

def RemovedBody766_123 : StackLang.HolProg 64 :=
.seq RemovedBody766_1 RemovedBody766_122

def RemovedBody766_124 : StackLang.HolProg 64 :=
.seq RemovedBody766_0 RemovedBody766_123

def Removed766 : Nat × StackLang.HolProg 64 := (766, RemovedBody766_124)
theorem Removed766_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc766 = Removed766 := by
  kernel_rfl
#print axioms Removed766_eq
end InitECandidate.Proofs.BackendStages
