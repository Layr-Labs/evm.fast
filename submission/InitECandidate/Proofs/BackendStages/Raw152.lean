import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function152
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody152_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 5

def rawBody152_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody152_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 4

def rawBody152_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody152_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody152_7 : StackLang.HolProg 64 :=
.seq rawBody152_5 rawBody152_6

def rawBody152_8 : StackLang.HolProg 64 :=
.seq rawBody152_4 rawBody152_7

def rawBody152_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 8#64)

def rawBody152_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody152_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody152_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody152_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody152_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody152_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 3

def rawBody152_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 2

def rawBody152_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody152_24 : StackLang.HolProg 64 :=
.seq rawBody152_22 rawBody152_23

def rawBody152_25 : StackLang.HolProg 64 :=
.seq rawBody152_21 rawBody152_24

def rawBody152_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 128#64)

def rawBody152_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody152_29 : StackLang.HolProg 64 :=
.seq rawBody152_27 rawBody152_28

def rawBody152_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody152_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody152_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody152_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 152 3

def rawBody152_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody152_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody152_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody152_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody152_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody152_40 : StackLang.HolProg 64 :=
.seq rawBody152_38 rawBody152_39

def rawBody152_41 : StackLang.HolProg 64 :=
.seq rawBody152_37 rawBody152_40

def rawBody152_42 : StackLang.HolProg 64 :=
.seq rawBody152_36 rawBody152_41

def rawBody152_43 : StackLang.HolProg 64 :=
.seq rawBody152_35 rawBody152_42

def rawBody152_44 : StackLang.HolProg 64 :=
.seq rawBody152_34 rawBody152_43

def rawBody152_45 : StackLang.HolProg 64 :=
.seq rawBody152_33 rawBody152_44

def rawBody152_46 : StackLang.HolProg 64 :=
.seq rawBody152_32 rawBody152_45

def rawBody152_47 : StackLang.HolProg 64 :=
.seq rawBody152_31 rawBody152_46

def rawBody152_48 : StackLang.HolProg 64 :=
.seq rawBody152_30 rawBody152_47

def rawBody152_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody152_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody152_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody152_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody152_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody152_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody152_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody152_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody152_59 : StackLang.HolProg 64 :=
.seq rawBody152_57 rawBody152_58

def rawBody152_60 : StackLang.HolProg 64 :=
.seq rawBody152_56 rawBody152_59

def rawBody152_61 : StackLang.HolProg 64 :=
.seq rawBody152_55 rawBody152_60

def rawBody152_62 : StackLang.HolProg 64 :=
.seq rawBody152_54 rawBody152_61

def rawBody152_63 : StackLang.HolProg 64 :=
.seq rawBody152_53 rawBody152_62

def rawBody152_64 : StackLang.HolProg 64 :=
.seq rawBody152_52 rawBody152_63

def rawBody152_65 : StackLang.HolProg 64 :=
.seq rawBody152_51 rawBody152_64

def rawBody152_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 5 4

def rawBody152_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 3

def rawBody152_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody152_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody152_70 : StackLang.HolProg 64 :=
.seq rawBody152_68 rawBody152_69

def rawBody152_71 : StackLang.HolProg 64 :=
.seq rawBody152_67 rawBody152_70

def rawBody152_72 : StackLang.HolProg 64 :=
.seq rawBody152_66 rawBody152_71

def rawBody152_73 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody152_74 : StackLang.HolProg 64 :=
.seq rawBody152_72 rawBody152_73

def rawBody152_75 : StackLang.HolProg 64 :=
.call (some (rawBody152_65, 0, 152, 2)) (Sum.inl 88) (some (rawBody152_74, 152, 3))

def rawBody152_76 : StackLang.HolProg 64 :=
.seq rawBody152_50 rawBody152_75

def rawBody152_77 : StackLang.HolProg 64 :=
.seq rawBody152_49 rawBody152_76

def rawBody152_78 : StackLang.HolProg 64 :=
.seq rawBody152_48 rawBody152_77

def rawBody152_79 : StackLang.HolProg 64 :=
.seq rawBody152_29 rawBody152_78

def rawBody152_80 : StackLang.HolProg 64 :=
.seq rawBody152_26 rawBody152_79

def rawBody152_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody152_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 5 4

def rawBody152_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody152_86 : StackLang.HolProg 64 :=
.seq rawBody152_84 rawBody152_85

def rawBody152_87 : StackLang.HolProg 64 :=
.seq rawBody152_83 rawBody152_86

def rawBody152_88 : StackLang.HolProg 64 :=
.seq rawBody152_82 rawBody152_87

def rawBody152_89 : StackLang.HolProg 64 :=
.seq rawBody152_81 rawBody152_88

def rawBody152_90 : StackLang.HolProg 64 :=
.seq rawBody152_80 rawBody152_89

def rawBody152_91 : StackLang.HolProg 64 :=
.seq rawBody152_25 rawBody152_90

def rawBody152_92 : StackLang.HolProg 64 :=
.seq rawBody152_20 rawBody152_91

def rawBody152_93 : StackLang.HolProg 64 :=
.seq rawBody152_19 rawBody152_92

def rawBody152_94 : StackLang.HolProg 64 :=
.seq rawBody152_18 rawBody152_93

def rawBody152_95 : StackLang.HolProg 64 :=
.seq rawBody152_17 rawBody152_94

def rawBody152_96 : StackLang.HolProg 64 :=
.seq rawBody152_16 rawBody152_95

def rawBody152_97 : StackLang.HolProg 64 :=
.seq rawBody152_15 rawBody152_96

def rawBody152_98 : StackLang.HolProg 64 :=
.seq rawBody152_14 rawBody152_97

def rawBody152_99 : StackLang.HolProg 64 :=
.seq rawBody152_13 rawBody152_98

def rawBody152_100 : StackLang.HolProg 64 :=
.seq rawBody152_12 rawBody152_99

def rawBody152_101 : StackLang.HolProg 64 :=
.seq rawBody152_11 rawBody152_100

def rawBody152_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody152_104 : StackLang.HolProg 64 :=
.seq rawBody152_102 rawBody152_103

def rawBody152_105 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.less) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody152_101 rawBody152_104

def rawBody152_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_107 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 4

def rawBody152_108 : StackLang.HolProg 64 :=
.seq rawBody152_106 rawBody152_107

def rawBody152_109 : StackLang.HolProg 64 :=
.seq rawBody152_105 rawBody152_108

def rawBody152_110 : StackLang.HolProg 64 :=
.seq rawBody152_10 rawBody152_109

def rawBody152_111 : StackLang.HolProg 64 :=
.seq rawBody152_9 rawBody152_110

def rawBody152_112 : StackLang.HolProg 64 :=
.loop rawBody152_111

def rawBody152_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody152_114 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody152_115 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody152_116 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 4

def rawBody152_117 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 5

def rawBody152_118 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 22

def rawBody152_119 : StackLang.HolProg 64 :=
.seq rawBody152_117 rawBody152_118

def rawBody152_120 : StackLang.HolProg 64 :=
.seq rawBody152_116 rawBody152_119

def rawBody152_121 : StackLang.HolProg 64 :=
.seq rawBody152_115 rawBody152_120

def rawBody152_122 : StackLang.HolProg 64 :=
.seq rawBody152_114 rawBody152_121

def rawBody152_123 : StackLang.HolProg 64 :=
.seq rawBody152_113 rawBody152_122

def rawBody152_124 : StackLang.HolProg 64 :=
.seq rawBody152_112 rawBody152_123

def rawBody152_125 : StackLang.HolProg 64 :=
.seq rawBody152_8 rawBody152_124

def rawBody152_126 : StackLang.HolProg 64 :=
.seq rawBody152_3 rawBody152_125

def rawBody152_127 : StackLang.HolProg 64 :=
.seq rawBody152_2 rawBody152_126

def rawBody152_128 : StackLang.HolProg 64 :=
.seq rawBody152_1 rawBody152_127

def rawBody152_129 : StackLang.HolProg 64 :=
.seq rawBody152_0 rawBody152_128

def raw152 : StackLang.HolProg 64 := rawBody152_129
theorem raw152_eq : StackRawCall.compTop RawInfo.rawInfo (function152 (.list [])).1 = raw152 := by
  kernel_rfl
#print axioms raw152_eq
end InitECandidate.Proofs.BackendStages
