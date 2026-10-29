import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function104
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody104_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody104_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody104_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 256#64)

def rawBody104_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody104_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody104_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody104_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody104_8 : StackLang.HolProg 64 :=
.seq rawBody104_6 rawBody104_7

def rawBody104_9 : StackLang.HolProg 64 :=
.seq rawBody104_5 rawBody104_8

def rawBody104_10 : StackLang.HolProg 64 :=
.seq rawBody104_4 rawBody104_9

def rawBody104_11 : StackLang.HolProg 64 :=
.seq rawBody104_3 rawBody104_10

def rawBody104_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 5 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody104_11 rawBody104_12

def rawBody104_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody104_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody104_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody104_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 6 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody104_18 : StackLang.HolProg 64 :=
.seq rawBody104_16 rawBody104_17

def rawBody104_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 6#64)))

def rawBody104_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody104_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 6 1

def rawBody104_22 : StackLang.HolProg 64 :=
.seq rawBody104_20 rawBody104_21

def rawBody104_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 44#64)

def rawBody104_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody104_26 : StackLang.HolProg 64 :=
.seq rawBody104_24 rawBody104_25

def rawBody104_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody104_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody104_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody104_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 104 3

def rawBody104_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody104_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody104_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody104_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody104_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody104_37 : StackLang.HolProg 64 :=
.seq rawBody104_35 rawBody104_36

def rawBody104_38 : StackLang.HolProg 64 :=
.seq rawBody104_34 rawBody104_37

def rawBody104_39 : StackLang.HolProg 64 :=
.seq rawBody104_33 rawBody104_38

def rawBody104_40 : StackLang.HolProg 64 :=
.seq rawBody104_32 rawBody104_39

def rawBody104_41 : StackLang.HolProg 64 :=
.seq rawBody104_31 rawBody104_40

def rawBody104_42 : StackLang.HolProg 64 :=
.seq rawBody104_30 rawBody104_41

def rawBody104_43 : StackLang.HolProg 64 :=
.seq rawBody104_29 rawBody104_42

def rawBody104_44 : StackLang.HolProg 64 :=
.seq rawBody104_28 rawBody104_43

def rawBody104_45 : StackLang.HolProg 64 :=
.seq rawBody104_27 rawBody104_44

def rawBody104_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody104_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody104_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody104_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody104_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody104_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody104_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody104_55 : StackLang.HolProg 64 :=
.seq rawBody104_53 rawBody104_54

def rawBody104_56 : StackLang.HolProg 64 :=
.seq rawBody104_52 rawBody104_55

def rawBody104_57 : StackLang.HolProg 64 :=
.seq rawBody104_51 rawBody104_56

def rawBody104_58 : StackLang.HolProg 64 :=
.seq rawBody104_50 rawBody104_57

def rawBody104_59 : StackLang.HolProg 64 :=
.seq rawBody104_49 rawBody104_58

def rawBody104_60 : StackLang.HolProg 64 :=
.seq rawBody104_48 rawBody104_59

def rawBody104_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody104_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody104_63 : StackLang.HolProg 64 :=
.seq rawBody104_61 rawBody104_62

def rawBody104_64 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody104_65 : StackLang.HolProg 64 :=
.seq rawBody104_63 rawBody104_64

def rawBody104_66 : StackLang.HolProg 64 :=
.call (some (rawBody104_60, 0, 104, 2)) (Sum.inl 103) (some (rawBody104_65, 104, 3))

def rawBody104_67 : StackLang.HolProg 64 :=
.seq rawBody104_47 rawBody104_66

def rawBody104_68 : StackLang.HolProg 64 :=
.seq rawBody104_46 rawBody104_67

def rawBody104_69 : StackLang.HolProg 64 :=
.seq rawBody104_45 rawBody104_68

def rawBody104_70 : StackLang.HolProg 64 :=
.seq rawBody104_26 rawBody104_69

def rawBody104_71 : StackLang.HolProg 64 :=
.seq rawBody104_23 rawBody104_70

def rawBody104_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody104_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 63#64)))

def rawBody104_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody104_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody104_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody104_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody104_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody104_81 : StackLang.HolProg 64 :=
.seq rawBody104_79 rawBody104_80

def rawBody104_82 : StackLang.HolProg 64 :=
.seq rawBody104_78 rawBody104_81

def rawBody104_83 : StackLang.HolProg 64 :=
.seq rawBody104_77 rawBody104_82

def rawBody104_84 : StackLang.HolProg 64 :=
.seq rawBody104_76 rawBody104_83

def rawBody104_85 : StackLang.HolProg 64 :=
.seq rawBody104_75 rawBody104_84

def rawBody104_86 : StackLang.HolProg 64 :=
.seq rawBody104_74 rawBody104_85

def rawBody104_87 : StackLang.HolProg 64 :=
.seq rawBody104_73 rawBody104_86

def rawBody104_88 : StackLang.HolProg 64 :=
.seq rawBody104_72 rawBody104_87

def rawBody104_89 : StackLang.HolProg 64 :=
.seq rawBody104_71 rawBody104_88

def rawBody104_90 : StackLang.HolProg 64 :=
.seq rawBody104_22 rawBody104_89

def rawBody104_91 : StackLang.HolProg 64 :=
.seq rawBody104_19 rawBody104_90

def rawBody104_92 : StackLang.HolProg 64 :=
.seq rawBody104_18 rawBody104_91

def rawBody104_93 : StackLang.HolProg 64 :=
.seq rawBody104_15 rawBody104_92

def rawBody104_94 : StackLang.HolProg 64 :=
.seq rawBody104_14 rawBody104_93

def rawBody104_95 : StackLang.HolProg 64 :=
.seq rawBody104_13 rawBody104_94

def rawBody104_96 : StackLang.HolProg 64 :=
.seq rawBody104_2 rawBody104_95

def rawBody104_97 : StackLang.HolProg 64 :=
.seq rawBody104_1 rawBody104_96

def rawBody104_98 : StackLang.HolProg 64 :=
.seq rawBody104_0 rawBody104_97

def raw104 : StackLang.HolProg 64 := rawBody104_98
theorem raw104_eq : StackRawCall.compTop RawInfo.rawInfo (function104 (.list [])).1 = raw104 := by
  kernel_rfl
#print axioms raw104_eq
end InitECandidate.Proofs.BackendStages
