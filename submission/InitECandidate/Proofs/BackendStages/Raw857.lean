import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function857
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody857_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody857_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 8 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody857_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody857_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody857_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody857_5 : StackLang.HolProg 64 :=
.seq rawBody857_3 rawBody857_4

def rawBody857_6 : StackLang.HolProg 64 :=
.seq rawBody857_2 rawBody857_5

def rawBody857_7 : StackLang.HolProg 64 :=
.seq rawBody857_1 rawBody857_6

def rawBody857_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody857_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody857_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody857_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody857_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4360#64)

def rawBody857_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody857_15 : StackLang.HolProg 64 :=
.seq rawBody857_13 rawBody857_14

def rawBody857_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody857_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody857_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody857_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 857 3

def rawBody857_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody857_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody857_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody857_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody857_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody857_26 : StackLang.HolProg 64 :=
.seq rawBody857_24 rawBody857_25

def rawBody857_27 : StackLang.HolProg 64 :=
.seq rawBody857_23 rawBody857_26

def rawBody857_28 : StackLang.HolProg 64 :=
.seq rawBody857_22 rawBody857_27

def rawBody857_29 : StackLang.HolProg 64 :=
.seq rawBody857_21 rawBody857_28

def rawBody857_30 : StackLang.HolProg 64 :=
.seq rawBody857_20 rawBody857_29

def rawBody857_31 : StackLang.HolProg 64 :=
.seq rawBody857_19 rawBody857_30

def rawBody857_32 : StackLang.HolProg 64 :=
.seq rawBody857_18 rawBody857_31

def rawBody857_33 : StackLang.HolProg 64 :=
.seq rawBody857_17 rawBody857_32

def rawBody857_34 : StackLang.HolProg 64 :=
.seq rawBody857_16 rawBody857_33

def rawBody857_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody857_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody857_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody857_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody857_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody857_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody857_43 : StackLang.HolProg 64 :=
.seq rawBody857_41 rawBody857_42

def rawBody857_44 : StackLang.HolProg 64 :=
.seq rawBody857_40 rawBody857_43

def rawBody857_45 : StackLang.HolProg 64 :=
.seq rawBody857_39 rawBody857_44

def rawBody857_46 : StackLang.HolProg 64 :=
.seq rawBody857_38 rawBody857_45

def rawBody857_47 : StackLang.HolProg 64 :=
.seq rawBody857_37 rawBody857_46

def rawBody857_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 9 1

def rawBody857_49 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody857_50 : StackLang.HolProg 64 :=
.seq rawBody857_48 rawBody857_49

def rawBody857_51 : StackLang.HolProg 64 :=
.call (some (rawBody857_47, 0, 857, 2)) (Sum.inl 121) (some (rawBody857_50, 857, 3))

def rawBody857_52 : StackLang.HolProg 64 :=
.seq rawBody857_36 rawBody857_51

def rawBody857_53 : StackLang.HolProg 64 :=
.seq rawBody857_35 rawBody857_52

def rawBody857_54 : StackLang.HolProg 64 :=
.seq rawBody857_34 rawBody857_53

def rawBody857_55 : StackLang.HolProg 64 :=
.seq rawBody857_15 rawBody857_54

def rawBody857_56 : StackLang.HolProg 64 :=
.seq rawBody857_12 rawBody857_55

def rawBody857_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody857_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody857_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody857_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody857_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody857_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody857_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody857_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody857_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_69 : StackLang.HolProg 64 :=
.seq rawBody857_67 rawBody857_68

def rawBody857_70 : StackLang.HolProg 64 :=
.seq rawBody857_66 rawBody857_69

def rawBody857_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody857_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody857_73 : StackLang.HolProg 64 :=
.seq rawBody857_71 rawBody857_72

def rawBody857_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) rawBody857_70 rawBody857_73

def rawBody857_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody857_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody857_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody857_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody857_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody857_80 : StackLang.HolProg 64 :=
.seq rawBody857_78 rawBody857_79

def rawBody857_81 : StackLang.HolProg 64 :=
.seq rawBody857_77 rawBody857_80

def rawBody857_82 : StackLang.HolProg 64 :=
.seq rawBody857_76 rawBody857_81

def rawBody857_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody857_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 9

def rawBody857_85 : StackLang.HolProg 64 :=
.seq rawBody857_83 rawBody857_84

def rawBody857_86 : StackLang.HolProg 64 :=
.seq rawBody857_82 rawBody857_85

def rawBody857_87 : StackLang.HolProg 64 :=
.seq rawBody857_75 rawBody857_86

def rawBody857_88 : StackLang.HolProg 64 :=
.seq rawBody857_74 rawBody857_87

def rawBody857_89 : StackLang.HolProg 64 :=
.seq rawBody857_65 rawBody857_88

def rawBody857_90 : StackLang.HolProg 64 :=
.seq rawBody857_64 rawBody857_89

def rawBody857_91 : StackLang.HolProg 64 :=
.seq rawBody857_63 rawBody857_90

def rawBody857_92 : StackLang.HolProg 64 :=
.seq rawBody857_62 rawBody857_91

def rawBody857_93 : StackLang.HolProg 64 :=
.seq rawBody857_61 rawBody857_92

def rawBody857_94 : StackLang.HolProg 64 :=
.seq rawBody857_60 rawBody857_93

def rawBody857_95 : StackLang.HolProg 64 :=
.seq rawBody857_59 rawBody857_94

def rawBody857_96 : StackLang.HolProg 64 :=
.seq rawBody857_58 rawBody857_95

def rawBody857_97 : StackLang.HolProg 64 :=
.seq rawBody857_57 rawBody857_96

def rawBody857_98 : StackLang.HolProg 64 :=
.seq rawBody857_56 rawBody857_97

def rawBody857_99 : StackLang.HolProg 64 :=
.seq rawBody857_11 rawBody857_98

def rawBody857_100 : StackLang.HolProg 64 :=
.seq rawBody857_10 rawBody857_99

def rawBody857_101 : StackLang.HolProg 64 :=
.seq rawBody857_9 rawBody857_100

def rawBody857_102 : StackLang.HolProg 64 :=
.seq rawBody857_8 rawBody857_101

def rawBody857_103 : StackLang.HolProg 64 :=
.seq rawBody857_7 rawBody857_102

def rawBody857_104 : StackLang.HolProg 64 :=
.seq rawBody857_0 rawBody857_103

def raw857 : StackLang.HolProg 64 := rawBody857_104
theorem raw857_eq : StackRawCall.compTop RawInfo.rawInfo (function857 (.list [])).1 = raw857 := by
  kernel_rfl
#print axioms raw857_eq
end InitECandidate.Proofs.BackendStages
