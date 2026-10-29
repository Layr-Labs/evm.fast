import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function181
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody181_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody181_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody181_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 128#64)

def rawBody181_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody181_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody181_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody181_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody181_8 : StackLang.HolProg 64 :=
.seq rawBody181_6 rawBody181_7

def rawBody181_9 : StackLang.HolProg 64 :=
.seq rawBody181_5 rawBody181_8

def rawBody181_10 : StackLang.HolProg 64 :=
.seq rawBody181_4 rawBody181_9

def rawBody181_11 : StackLang.HolProg 64 :=
.seq rawBody181_3 rawBody181_10

def rawBody181_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_13 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody181_11 rawBody181_12

def rawBody181_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody181_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody181_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody181_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody181_18 : StackLang.HolProg 64 :=
.seq rawBody181_16 rawBody181_17

def rawBody181_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 202#64)

def rawBody181_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody181_22 : StackLang.HolProg 64 :=
.seq rawBody181_20 rawBody181_21

def rawBody181_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody181_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody181_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody181_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 181 3

def rawBody181_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody181_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody181_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody181_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody181_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody181_33 : StackLang.HolProg 64 :=
.seq rawBody181_31 rawBody181_32

def rawBody181_34 : StackLang.HolProg 64 :=
.seq rawBody181_30 rawBody181_33

def rawBody181_35 : StackLang.HolProg 64 :=
.seq rawBody181_29 rawBody181_34

def rawBody181_36 : StackLang.HolProg 64 :=
.seq rawBody181_28 rawBody181_35

def rawBody181_37 : StackLang.HolProg 64 :=
.seq rawBody181_27 rawBody181_36

def rawBody181_38 : StackLang.HolProg 64 :=
.seq rawBody181_26 rawBody181_37

def rawBody181_39 : StackLang.HolProg 64 :=
.seq rawBody181_25 rawBody181_38

def rawBody181_40 : StackLang.HolProg 64 :=
.seq rawBody181_24 rawBody181_39

def rawBody181_41 : StackLang.HolProg 64 :=
.seq rawBody181_23 rawBody181_40

def rawBody181_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody181_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody181_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody181_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody181_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody181_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody181_50 : StackLang.HolProg 64 :=
.seq rawBody181_48 rawBody181_49

def rawBody181_51 : StackLang.HolProg 64 :=
.seq rawBody181_47 rawBody181_50

def rawBody181_52 : StackLang.HolProg 64 :=
.seq rawBody181_46 rawBody181_51

def rawBody181_53 : StackLang.HolProg 64 :=
.seq rawBody181_45 rawBody181_52

def rawBody181_54 : StackLang.HolProg 64 :=
.seq rawBody181_44 rawBody181_53

def rawBody181_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody181_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody181_57 : StackLang.HolProg 64 :=
.seq rawBody181_55 rawBody181_56

def rawBody181_58 : StackLang.HolProg 64 :=
.call (some (rawBody181_54, 0, 181, 2)) (Sum.inl 172) (some (rawBody181_57, 181, 3))

def rawBody181_59 : StackLang.HolProg 64 :=
.seq rawBody181_43 rawBody181_58

def rawBody181_60 : StackLang.HolProg 64 :=
.seq rawBody181_42 rawBody181_59

def rawBody181_61 : StackLang.HolProg 64 :=
.seq rawBody181_41 rawBody181_60

def rawBody181_62 : StackLang.HolProg 64 :=
.seq rawBody181_22 rawBody181_61

def rawBody181_63 : StackLang.HolProg 64 :=
.seq rawBody181_19 rawBody181_62

def rawBody181_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody181_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody181_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody181_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody181_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody181_70 : StackLang.HolProg 64 :=
.seq rawBody181_68 rawBody181_69

def rawBody181_71 : StackLang.HolProg 64 :=
.seq rawBody181_67 rawBody181_70

def rawBody181_72 : StackLang.HolProg 64 :=
.seq rawBody181_66 rawBody181_71

def rawBody181_73 : StackLang.HolProg 64 :=
.seq rawBody181_65 rawBody181_72

def rawBody181_74 : StackLang.HolProg 64 :=
.seq rawBody181_64 rawBody181_73

def rawBody181_75 : StackLang.HolProg 64 :=
.seq rawBody181_63 rawBody181_74

def rawBody181_76 : StackLang.HolProg 64 :=
.seq rawBody181_18 rawBody181_75

def rawBody181_77 : StackLang.HolProg 64 :=
.seq rawBody181_15 rawBody181_76

def rawBody181_78 : StackLang.HolProg 64 :=
.seq rawBody181_14 rawBody181_77

def rawBody181_79 : StackLang.HolProg 64 :=
.seq rawBody181_13 rawBody181_78

def rawBody181_80 : StackLang.HolProg 64 :=
.seq rawBody181_2 rawBody181_79

def rawBody181_81 : StackLang.HolProg 64 :=
.seq rawBody181_1 rawBody181_80

def rawBody181_82 : StackLang.HolProg 64 :=
.seq rawBody181_0 rawBody181_81

def raw181 : StackLang.HolProg 64 := rawBody181_82
theorem raw181_eq : StackRawCall.compTop RawInfo.rawInfo (function181 (.list [])).1 = raw181 := by
  kernel_rfl
#print axioms raw181_eq
end InitECandidate.Proofs.BackendStages
