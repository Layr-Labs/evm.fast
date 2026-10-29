import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function464
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody464_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody464_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 31#64)))

def rawBody464_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody464_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody464_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody464_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody464_9 : StackLang.HolProg 64 :=
.seq rawBody464_7 rawBody464_8

def rawBody464_10 : StackLang.HolProg 64 :=
.seq rawBody464_6 rawBody464_9

def rawBody464_11 : StackLang.HolProg 64 :=
.seq rawBody464_5 rawBody464_10

def rawBody464_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody464_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) rawBody464_11 rawBody464_12

def rawBody464_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody464_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody464_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody464_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 32#64)

def rawBody464_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody464_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody464_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1488#64)

def rawBody464_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody464_24 : StackLang.HolProg 64 :=
.seq rawBody464_22 rawBody464_23

def rawBody464_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody464_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody464_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody464_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 464 3

def rawBody464_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody464_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody464_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody464_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody464_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody464_35 : StackLang.HolProg 64 :=
.seq rawBody464_33 rawBody464_34

def rawBody464_36 : StackLang.HolProg 64 :=
.seq rawBody464_32 rawBody464_35

def rawBody464_37 : StackLang.HolProg 64 :=
.seq rawBody464_31 rawBody464_36

def rawBody464_38 : StackLang.HolProg 64 :=
.seq rawBody464_30 rawBody464_37

def rawBody464_39 : StackLang.HolProg 64 :=
.seq rawBody464_29 rawBody464_38

def rawBody464_40 : StackLang.HolProg 64 :=
.seq rawBody464_28 rawBody464_39

def rawBody464_41 : StackLang.HolProg 64 :=
.seq rawBody464_27 rawBody464_40

def rawBody464_42 : StackLang.HolProg 64 :=
.seq rawBody464_26 rawBody464_41

def rawBody464_43 : StackLang.HolProg 64 :=
.seq rawBody464_25 rawBody464_42

def rawBody464_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody464_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody464_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody464_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody464_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody464_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody464_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody464_52 : StackLang.HolProg 64 :=
.seq rawBody464_50 rawBody464_51

def rawBody464_53 : StackLang.HolProg 64 :=
.seq rawBody464_49 rawBody464_52

def rawBody464_54 : StackLang.HolProg 64 :=
.seq rawBody464_48 rawBody464_53

def rawBody464_55 : StackLang.HolProg 64 :=
.seq rawBody464_47 rawBody464_54

def rawBody464_56 : StackLang.HolProg 64 :=
.seq rawBody464_46 rawBody464_55

def rawBody464_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody464_58 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody464_59 : StackLang.HolProg 64 :=
.seq rawBody464_57 rawBody464_58

def rawBody464_60 : StackLang.HolProg 64 :=
.call (some (rawBody464_56, 0, 464, 2)) (Sum.inl 463) (some (rawBody464_59, 464, 3))

def rawBody464_61 : StackLang.HolProg 64 :=
.seq rawBody464_45 rawBody464_60

def rawBody464_62 : StackLang.HolProg 64 :=
.seq rawBody464_44 rawBody464_61

def rawBody464_63 : StackLang.HolProg 64 :=
.seq rawBody464_43 rawBody464_62

def rawBody464_64 : StackLang.HolProg 64 :=
.seq rawBody464_24 rawBody464_63

def rawBody464_65 : StackLang.HolProg 64 :=
.seq rawBody464_21 rawBody464_64

def rawBody464_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody464_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody464_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody464_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody464_70 : StackLang.HolProg 64 :=
.seq rawBody464_68 rawBody464_69

def rawBody464_71 : StackLang.HolProg 64 :=
.seq rawBody464_67 rawBody464_70

def rawBody464_72 : StackLang.HolProg 64 :=
.seq rawBody464_66 rawBody464_71

def rawBody464_73 : StackLang.HolProg 64 :=
.seq rawBody464_65 rawBody464_72

def rawBody464_74 : StackLang.HolProg 64 :=
.seq rawBody464_20 rawBody464_73

def rawBody464_75 : StackLang.HolProg 64 :=
.seq rawBody464_19 rawBody464_74

def rawBody464_76 : StackLang.HolProg 64 :=
.seq rawBody464_18 rawBody464_75

def rawBody464_77 : StackLang.HolProg 64 :=
.seq rawBody464_17 rawBody464_76

def rawBody464_78 : StackLang.HolProg 64 :=
.seq rawBody464_16 rawBody464_77

def rawBody464_79 : StackLang.HolProg 64 :=
.seq rawBody464_15 rawBody464_78

def rawBody464_80 : StackLang.HolProg 64 :=
.seq rawBody464_14 rawBody464_79

def rawBody464_81 : StackLang.HolProg 64 :=
.seq rawBody464_13 rawBody464_80

def rawBody464_82 : StackLang.HolProg 64 :=
.seq rawBody464_4 rawBody464_81

def rawBody464_83 : StackLang.HolProg 64 :=
.seq rawBody464_3 rawBody464_82

def rawBody464_84 : StackLang.HolProg 64 :=
.seq rawBody464_2 rawBody464_83

def rawBody464_85 : StackLang.HolProg 64 :=
.seq rawBody464_1 rawBody464_84

def rawBody464_86 : StackLang.HolProg 64 :=
.seq rawBody464_0 rawBody464_85

def raw464 : StackLang.HolProg 64 := rawBody464_86
theorem raw464_eq : StackRawCall.compTop RawInfo.rawInfo (function464 (.list [])).1 = raw464 := by
  kernel_rfl
#print axioms raw464_eq
end InitECandidate.Proofs.BackendStages
