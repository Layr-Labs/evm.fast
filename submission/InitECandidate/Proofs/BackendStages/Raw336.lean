import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function336
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody336_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody336_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody336_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 970#64)

def rawBody336_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody336_5 : StackLang.HolProg 64 :=
.seq rawBody336_3 rawBody336_4

def rawBody336_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody336_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody336_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody336_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 336 3

def rawBody336_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody336_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody336_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody336_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody336_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody336_16 : StackLang.HolProg 64 :=
.seq rawBody336_14 rawBody336_15

def rawBody336_17 : StackLang.HolProg 64 :=
.seq rawBody336_13 rawBody336_16

def rawBody336_18 : StackLang.HolProg 64 :=
.seq rawBody336_12 rawBody336_17

def rawBody336_19 : StackLang.HolProg 64 :=
.seq rawBody336_11 rawBody336_18

def rawBody336_20 : StackLang.HolProg 64 :=
.seq rawBody336_10 rawBody336_19

def rawBody336_21 : StackLang.HolProg 64 :=
.seq rawBody336_9 rawBody336_20

def rawBody336_22 : StackLang.HolProg 64 :=
.seq rawBody336_8 rawBody336_21

def rawBody336_23 : StackLang.HolProg 64 :=
.seq rawBody336_7 rawBody336_22

def rawBody336_24 : StackLang.HolProg 64 :=
.seq rawBody336_6 rawBody336_23

def rawBody336_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody336_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody336_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody336_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody336_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody336_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody336_33 : StackLang.HolProg 64 :=
.seq rawBody336_31 rawBody336_32

def rawBody336_34 : StackLang.HolProg 64 :=
.seq rawBody336_30 rawBody336_33

def rawBody336_35 : StackLang.HolProg 64 :=
.seq rawBody336_29 rawBody336_34

def rawBody336_36 : StackLang.HolProg 64 :=
.seq rawBody336_28 rawBody336_35

def rawBody336_37 : StackLang.HolProg 64 :=
.seq rawBody336_27 rawBody336_36

def rawBody336_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody336_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody336_40 : StackLang.HolProg 64 :=
.seq rawBody336_38 rawBody336_39

def rawBody336_41 : StackLang.HolProg 64 :=
.call (some (rawBody336_37, 0, 336, 2)) (Sum.inl 335) (some (rawBody336_40, 336, 3))

def rawBody336_42 : StackLang.HolProg 64 :=
.seq rawBody336_26 rawBody336_41

def rawBody336_43 : StackLang.HolProg 64 :=
.seq rawBody336_25 rawBody336_42

def rawBody336_44 : StackLang.HolProg 64 :=
.seq rawBody336_24 rawBody336_43

def rawBody336_45 : StackLang.HolProg 64 :=
.seq rawBody336_5 rawBody336_44

def rawBody336_46 : StackLang.HolProg 64 :=
.seq rawBody336_2 rawBody336_45

def rawBody336_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody336_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody336_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody336_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def rawBody336_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 1

def rawBody336_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody336_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_56 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody336_57 : StackLang.HolProg 64 :=
.seq rawBody336_55 rawBody336_56

def rawBody336_58 : StackLang.HolProg 64 :=
.seq rawBody336_54 rawBody336_57

def rawBody336_59 : StackLang.HolProg 64 :=
.seq rawBody336_53 rawBody336_58

def rawBody336_60 : StackLang.HolProg 64 :=
.seq rawBody336_52 rawBody336_59

def rawBody336_61 : StackLang.HolProg 64 :=
.seq rawBody336_51 rawBody336_60

def rawBody336_62 : StackLang.HolProg 64 :=
.seq rawBody336_50 rawBody336_61

def rawBody336_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_64 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody336_62 rawBody336_63

def rawBody336_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody336_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody336_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody336_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody336_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody336_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody336_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 146

def rawBody336_72 : StackLang.HolProg 64 :=
.seq rawBody336_70 rawBody336_71

def rawBody336_73 : StackLang.HolProg 64 :=
.seq rawBody336_69 rawBody336_72

def rawBody336_74 : StackLang.HolProg 64 :=
.seq rawBody336_68 rawBody336_73

def rawBody336_75 : StackLang.HolProg 64 :=
.seq rawBody336_67 rawBody336_74

def rawBody336_76 : StackLang.HolProg 64 :=
.seq rawBody336_66 rawBody336_75

def rawBody336_77 : StackLang.HolProg 64 :=
.seq rawBody336_65 rawBody336_76

def rawBody336_78 : StackLang.HolProg 64 :=
.seq rawBody336_64 rawBody336_77

def rawBody336_79 : StackLang.HolProg 64 :=
.seq rawBody336_49 rawBody336_78

def rawBody336_80 : StackLang.HolProg 64 :=
.seq rawBody336_48 rawBody336_79

def rawBody336_81 : StackLang.HolProg 64 :=
.seq rawBody336_47 rawBody336_80

def rawBody336_82 : StackLang.HolProg 64 :=
.seq rawBody336_46 rawBody336_81

def rawBody336_83 : StackLang.HolProg 64 :=
.seq rawBody336_1 rawBody336_82

def rawBody336_84 : StackLang.HolProg 64 :=
.seq rawBody336_0 rawBody336_83

def raw336 : StackLang.HolProg 64 := rawBody336_84
theorem raw336_eq : StackRawCall.compTop RawInfo.rawInfo (function336 (.list [])).1 = raw336 := by
  kernel_rfl
#print axioms raw336_eq
end InitECandidate.Proofs.BackendStages
