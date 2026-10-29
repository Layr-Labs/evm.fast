import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function175
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody175_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody175_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 55#64)

def rawBody175_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody175_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody175_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody175_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody175_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody175_9 : StackLang.HolProg 64 :=
.seq rawBody175_7 rawBody175_8

def rawBody175_10 : StackLang.HolProg 64 :=
.seq rawBody175_6 rawBody175_9

def rawBody175_11 : StackLang.HolProg 64 :=
.seq rawBody175_5 rawBody175_10

def rawBody175_12 : StackLang.HolProg 64 :=
.seq rawBody175_4 rawBody175_11

def rawBody175_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_14 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notLower) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody175_12 rawBody175_13

def rawBody175_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody175_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody175_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody175_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody175_19 : StackLang.HolProg 64 :=
.seq rawBody175_17 rawBody175_18

def rawBody175_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 196#64)

def rawBody175_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody175_23 : StackLang.HolProg 64 :=
.seq rawBody175_21 rawBody175_22

def rawBody175_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody175_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody175_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody175_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 175 3

def rawBody175_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody175_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody175_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody175_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody175_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody175_34 : StackLang.HolProg 64 :=
.seq rawBody175_32 rawBody175_33

def rawBody175_35 : StackLang.HolProg 64 :=
.seq rawBody175_31 rawBody175_34

def rawBody175_36 : StackLang.HolProg 64 :=
.seq rawBody175_30 rawBody175_35

def rawBody175_37 : StackLang.HolProg 64 :=
.seq rawBody175_29 rawBody175_36

def rawBody175_38 : StackLang.HolProg 64 :=
.seq rawBody175_28 rawBody175_37

def rawBody175_39 : StackLang.HolProg 64 :=
.seq rawBody175_27 rawBody175_38

def rawBody175_40 : StackLang.HolProg 64 :=
.seq rawBody175_26 rawBody175_39

def rawBody175_41 : StackLang.HolProg 64 :=
.seq rawBody175_25 rawBody175_40

def rawBody175_42 : StackLang.HolProg 64 :=
.seq rawBody175_24 rawBody175_41

def rawBody175_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody175_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody175_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody175_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody175_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody175_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody175_51 : StackLang.HolProg 64 :=
.seq rawBody175_49 rawBody175_50

def rawBody175_52 : StackLang.HolProg 64 :=
.seq rawBody175_48 rawBody175_51

def rawBody175_53 : StackLang.HolProg 64 :=
.seq rawBody175_47 rawBody175_52

def rawBody175_54 : StackLang.HolProg 64 :=
.seq rawBody175_46 rawBody175_53

def rawBody175_55 : StackLang.HolProg 64 :=
.seq rawBody175_45 rawBody175_54

def rawBody175_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody175_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody175_58 : StackLang.HolProg 64 :=
.seq rawBody175_56 rawBody175_57

def rawBody175_59 : StackLang.HolProg 64 :=
.call (some (rawBody175_55, 0, 175, 2)) (Sum.inl 172) (some (rawBody175_58, 175, 3))

def rawBody175_60 : StackLang.HolProg 64 :=
.seq rawBody175_44 rawBody175_59

def rawBody175_61 : StackLang.HolProg 64 :=
.seq rawBody175_43 rawBody175_60

def rawBody175_62 : StackLang.HolProg 64 :=
.seq rawBody175_42 rawBody175_61

def rawBody175_63 : StackLang.HolProg 64 :=
.seq rawBody175_23 rawBody175_62

def rawBody175_64 : StackLang.HolProg 64 :=
.seq rawBody175_20 rawBody175_63

def rawBody175_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody175_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody175_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody175_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody175_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody175_71 : StackLang.HolProg 64 :=
.seq rawBody175_69 rawBody175_70

def rawBody175_72 : StackLang.HolProg 64 :=
.seq rawBody175_68 rawBody175_71

def rawBody175_73 : StackLang.HolProg 64 :=
.seq rawBody175_67 rawBody175_72

def rawBody175_74 : StackLang.HolProg 64 :=
.seq rawBody175_66 rawBody175_73

def rawBody175_75 : StackLang.HolProg 64 :=
.seq rawBody175_65 rawBody175_74

def rawBody175_76 : StackLang.HolProg 64 :=
.seq rawBody175_64 rawBody175_75

def rawBody175_77 : StackLang.HolProg 64 :=
.seq rawBody175_19 rawBody175_76

def rawBody175_78 : StackLang.HolProg 64 :=
.seq rawBody175_16 rawBody175_77

def rawBody175_79 : StackLang.HolProg 64 :=
.seq rawBody175_15 rawBody175_78

def rawBody175_80 : StackLang.HolProg 64 :=
.seq rawBody175_14 rawBody175_79

def rawBody175_81 : StackLang.HolProg 64 :=
.seq rawBody175_3 rawBody175_80

def rawBody175_82 : StackLang.HolProg 64 :=
.seq rawBody175_2 rawBody175_81

def rawBody175_83 : StackLang.HolProg 64 :=
.seq rawBody175_1 rawBody175_82

def rawBody175_84 : StackLang.HolProg 64 :=
.seq rawBody175_0 rawBody175_83

def raw175 : StackLang.HolProg 64 := rawBody175_84
theorem raw175_eq : StackRawCall.compTop RawInfo.rawInfo (function175 (.list [])).1 = raw175 := by
  kernel_rfl
#print axioms raw175_eq
end InitECandidate.Proofs.BackendStages
