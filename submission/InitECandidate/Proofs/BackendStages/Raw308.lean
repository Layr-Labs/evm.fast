import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function308
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody308_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody308_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody308_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 16#64)

def rawBody308_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody308_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody308_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody308_6 : StackLang.HolProg 64 :=
.seq rawBody308_4 rawBody308_5

def rawBody308_7 : StackLang.HolProg 64 :=
.seq rawBody308_3 rawBody308_6

def rawBody308_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 849#64)

def rawBody308_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody308_11 : StackLang.HolProg 64 :=
.seq rawBody308_9 rawBody308_10

def rawBody308_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody308_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody308_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody308_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 308 3

def rawBody308_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody308_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody308_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody308_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody308_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody308_22 : StackLang.HolProg 64 :=
.seq rawBody308_20 rawBody308_21

def rawBody308_23 : StackLang.HolProg 64 :=
.seq rawBody308_19 rawBody308_22

def rawBody308_24 : StackLang.HolProg 64 :=
.seq rawBody308_18 rawBody308_23

def rawBody308_25 : StackLang.HolProg 64 :=
.seq rawBody308_17 rawBody308_24

def rawBody308_26 : StackLang.HolProg 64 :=
.seq rawBody308_16 rawBody308_25

def rawBody308_27 : StackLang.HolProg 64 :=
.seq rawBody308_15 rawBody308_26

def rawBody308_28 : StackLang.HolProg 64 :=
.seq rawBody308_14 rawBody308_27

def rawBody308_29 : StackLang.HolProg 64 :=
.seq rawBody308_13 rawBody308_28

def rawBody308_30 : StackLang.HolProg 64 :=
.seq rawBody308_12 rawBody308_29

def rawBody308_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody308_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody308_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody308_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody308_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody308_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody308_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody308_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody308_41 : StackLang.HolProg 64 :=
.seq rawBody308_39 rawBody308_40

def rawBody308_42 : StackLang.HolProg 64 :=
.seq rawBody308_38 rawBody308_41

def rawBody308_43 : StackLang.HolProg 64 :=
.seq rawBody308_37 rawBody308_42

def rawBody308_44 : StackLang.HolProg 64 :=
.seq rawBody308_36 rawBody308_43

def rawBody308_45 : StackLang.HolProg 64 :=
.seq rawBody308_35 rawBody308_44

def rawBody308_46 : StackLang.HolProg 64 :=
.seq rawBody308_34 rawBody308_45

def rawBody308_47 : StackLang.HolProg 64 :=
.seq rawBody308_33 rawBody308_46

def rawBody308_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody308_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 2

def rawBody308_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody308_51 : StackLang.HolProg 64 :=
.seq rawBody308_49 rawBody308_50

def rawBody308_52 : StackLang.HolProg 64 :=
.seq rawBody308_48 rawBody308_51

def rawBody308_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody308_54 : StackLang.HolProg 64 :=
.seq rawBody308_52 rawBody308_53

def rawBody308_55 : StackLang.HolProg 64 :=
.call (some (rawBody308_47, 0, 308, 2)) (Sum.inl 68) (some (rawBody308_54, 308, 3))

def rawBody308_56 : StackLang.HolProg 64 :=
.seq rawBody308_32 rawBody308_55

def rawBody308_57 : StackLang.HolProg 64 :=
.seq rawBody308_31 rawBody308_56

def rawBody308_58 : StackLang.HolProg 64 :=
.seq rawBody308_30 rawBody308_57

def rawBody308_59 : StackLang.HolProg 64 :=
.seq rawBody308_11 rawBody308_58

def rawBody308_60 : StackLang.HolProg 64 :=
.seq rawBody308_8 rawBody308_59

def rawBody308_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody308_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody308_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody308_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody308_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody308_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody308_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody308_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody308_71 : StackLang.HolProg 64 :=
.seq rawBody308_69 rawBody308_70

def rawBody308_72 : StackLang.HolProg 64 :=
.seq rawBody308_68 rawBody308_71

def rawBody308_73 : StackLang.HolProg 64 :=
.seq rawBody308_67 rawBody308_72

def rawBody308_74 : StackLang.HolProg 64 :=
.seq rawBody308_66 rawBody308_73

def rawBody308_75 : StackLang.HolProg 64 :=
.seq rawBody308_65 rawBody308_74

def rawBody308_76 : StackLang.HolProg 64 :=
.seq rawBody308_64 rawBody308_75

def rawBody308_77 : StackLang.HolProg 64 :=
.seq rawBody308_63 rawBody308_76

def rawBody308_78 : StackLang.HolProg 64 :=
.seq rawBody308_62 rawBody308_77

def rawBody308_79 : StackLang.HolProg 64 :=
.seq rawBody308_61 rawBody308_78

def rawBody308_80 : StackLang.HolProg 64 :=
.seq rawBody308_60 rawBody308_79

def rawBody308_81 : StackLang.HolProg 64 :=
.seq rawBody308_7 rawBody308_80

def rawBody308_82 : StackLang.HolProg 64 :=
.seq rawBody308_2 rawBody308_81

def rawBody308_83 : StackLang.HolProg 64 :=
.seq rawBody308_1 rawBody308_82

def rawBody308_84 : StackLang.HolProg 64 :=
.seq rawBody308_0 rawBody308_83

def raw308 : StackLang.HolProg 64 := rawBody308_84
theorem raw308_eq : StackRawCall.compTop RawInfo.rawInfo (function308 (.list [])).1 = raw308 := by
  kernel_rfl
#print axioms raw308_eq
end InitECandidate.Proofs.BackendStages
