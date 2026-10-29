import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function145
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody145_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody145_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody145_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody145_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody145_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody145_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody145_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody145_8 : StackLang.HolProg 64 :=
.seq rawBody145_6 rawBody145_7

def rawBody145_9 : StackLang.HolProg 64 :=
.seq rawBody145_5 rawBody145_8

def rawBody145_10 : StackLang.HolProg 64 :=
.seq rawBody145_4 rawBody145_9

def rawBody145_11 : StackLang.HolProg 64 :=
.seq rawBody145_3 rawBody145_10

def rawBody145_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody145_11 rawBody145_12

def rawBody145_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody145_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody145_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 31#64)

def rawBody145_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody145_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def rawBody145_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody145_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody145_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody145_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody145_24 : StackLang.HolProg 64 :=
.seq rawBody145_22 rawBody145_23

def rawBody145_25 : StackLang.HolProg 64 :=
.seq rawBody145_21 rawBody145_24

def rawBody145_26 : StackLang.HolProg 64 :=
.seq rawBody145_20 rawBody145_25

def rawBody145_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody145_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody145_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody145_30 : StackLang.HolProg 64 :=
.seq rawBody145_28 rawBody145_29

def rawBody145_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 111#64)

def rawBody145_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody145_34 : StackLang.HolProg 64 :=
.seq rawBody145_32 rawBody145_33

def rawBody145_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody145_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody145_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody145_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 145 3

def rawBody145_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody145_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody145_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody145_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody145_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody145_45 : StackLang.HolProg 64 :=
.seq rawBody145_43 rawBody145_44

def rawBody145_46 : StackLang.HolProg 64 :=
.seq rawBody145_42 rawBody145_45

def rawBody145_47 : StackLang.HolProg 64 :=
.seq rawBody145_41 rawBody145_46

def rawBody145_48 : StackLang.HolProg 64 :=
.seq rawBody145_40 rawBody145_47

def rawBody145_49 : StackLang.HolProg 64 :=
.seq rawBody145_39 rawBody145_48

def rawBody145_50 : StackLang.HolProg 64 :=
.seq rawBody145_38 rawBody145_49

def rawBody145_51 : StackLang.HolProg 64 :=
.seq rawBody145_37 rawBody145_50

def rawBody145_52 : StackLang.HolProg 64 :=
.seq rawBody145_36 rawBody145_51

def rawBody145_53 : StackLang.HolProg 64 :=
.seq rawBody145_35 rawBody145_52

def rawBody145_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody145_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody145_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody145_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody145_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody145_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody145_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody145_63 : StackLang.HolProg 64 :=
.seq rawBody145_61 rawBody145_62

def rawBody145_64 : StackLang.HolProg 64 :=
.seq rawBody145_60 rawBody145_63

def rawBody145_65 : StackLang.HolProg 64 :=
.seq rawBody145_59 rawBody145_64

def rawBody145_66 : StackLang.HolProg 64 :=
.seq rawBody145_58 rawBody145_65

def rawBody145_67 : StackLang.HolProg 64 :=
.seq rawBody145_57 rawBody145_66

def rawBody145_68 : StackLang.HolProg 64 :=
.seq rawBody145_56 rawBody145_67

def rawBody145_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody145_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody145_71 : StackLang.HolProg 64 :=
.seq rawBody145_69 rawBody145_70

def rawBody145_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody145_73 : StackLang.HolProg 64 :=
.seq rawBody145_71 rawBody145_72

def rawBody145_74 : StackLang.HolProg 64 :=
.call (some (rawBody145_68, 0, 145, 2)) (Sum.inl 103) (some (rawBody145_73, 145, 3))

def rawBody145_75 : StackLang.HolProg 64 :=
.seq rawBody145_55 rawBody145_74

def rawBody145_76 : StackLang.HolProg 64 :=
.seq rawBody145_54 rawBody145_75

def rawBody145_77 : StackLang.HolProg 64 :=
.seq rawBody145_53 rawBody145_76

def rawBody145_78 : StackLang.HolProg 64 :=
.seq rawBody145_34 rawBody145_77

def rawBody145_79 : StackLang.HolProg 64 :=
.seq rawBody145_31 rawBody145_78

def rawBody145_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody145_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody145_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody145_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 255#64)))

def rawBody145_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody145_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody145_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody145_89 : StackLang.HolProg 64 :=
.seq rawBody145_87 rawBody145_88

def rawBody145_90 : StackLang.HolProg 64 :=
.seq rawBody145_86 rawBody145_89

def rawBody145_91 : StackLang.HolProg 64 :=
.seq rawBody145_85 rawBody145_90

def rawBody145_92 : StackLang.HolProg 64 :=
.seq rawBody145_84 rawBody145_91

def rawBody145_93 : StackLang.HolProg 64 :=
.seq rawBody145_83 rawBody145_92

def rawBody145_94 : StackLang.HolProg 64 :=
.seq rawBody145_82 rawBody145_93

def rawBody145_95 : StackLang.HolProg 64 :=
.seq rawBody145_81 rawBody145_94

def rawBody145_96 : StackLang.HolProg 64 :=
.seq rawBody145_80 rawBody145_95

def rawBody145_97 : StackLang.HolProg 64 :=
.seq rawBody145_79 rawBody145_96

def rawBody145_98 : StackLang.HolProg 64 :=
.seq rawBody145_30 rawBody145_97

def rawBody145_99 : StackLang.HolProg 64 :=
.seq rawBody145_27 rawBody145_98

def rawBody145_100 : StackLang.HolProg 64 :=
.seq rawBody145_26 rawBody145_99

def rawBody145_101 : StackLang.HolProg 64 :=
.seq rawBody145_19 rawBody145_100

def rawBody145_102 : StackLang.HolProg 64 :=
.seq rawBody145_18 rawBody145_101

def rawBody145_103 : StackLang.HolProg 64 :=
.seq rawBody145_17 rawBody145_102

def rawBody145_104 : StackLang.HolProg 64 :=
.seq rawBody145_16 rawBody145_103

def rawBody145_105 : StackLang.HolProg 64 :=
.seq rawBody145_15 rawBody145_104

def rawBody145_106 : StackLang.HolProg 64 :=
.seq rawBody145_14 rawBody145_105

def rawBody145_107 : StackLang.HolProg 64 :=
.seq rawBody145_13 rawBody145_106

def rawBody145_108 : StackLang.HolProg 64 :=
.seq rawBody145_2 rawBody145_107

def rawBody145_109 : StackLang.HolProg 64 :=
.seq rawBody145_1 rawBody145_108

def rawBody145_110 : StackLang.HolProg 64 :=
.seq rawBody145_0 rawBody145_109

def raw145 : StackLang.HolProg 64 := rawBody145_110
theorem raw145_eq : StackRawCall.compTop RawInfo.rawInfo (function145 (.list [])).1 = raw145 := by
  kernel_rfl
#print axioms raw145_eq
end InitECandidate.Proofs.BackendStages
