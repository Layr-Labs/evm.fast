import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function346
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody346_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody346_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody346_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1026#64)

def rawBody346_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody346_5 : StackLang.HolProg 64 :=
.seq rawBody346_3 rawBody346_4

def rawBody346_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody346_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody346_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody346_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 346 3

def rawBody346_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody346_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody346_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody346_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody346_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody346_16 : StackLang.HolProg 64 :=
.seq rawBody346_14 rawBody346_15

def rawBody346_17 : StackLang.HolProg 64 :=
.seq rawBody346_13 rawBody346_16

def rawBody346_18 : StackLang.HolProg 64 :=
.seq rawBody346_12 rawBody346_17

def rawBody346_19 : StackLang.HolProg 64 :=
.seq rawBody346_11 rawBody346_18

def rawBody346_20 : StackLang.HolProg 64 :=
.seq rawBody346_10 rawBody346_19

def rawBody346_21 : StackLang.HolProg 64 :=
.seq rawBody346_9 rawBody346_20

def rawBody346_22 : StackLang.HolProg 64 :=
.seq rawBody346_8 rawBody346_21

def rawBody346_23 : StackLang.HolProg 64 :=
.seq rawBody346_7 rawBody346_22

def rawBody346_24 : StackLang.HolProg 64 :=
.seq rawBody346_6 rawBody346_23

def rawBody346_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody346_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody346_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody346_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody346_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody346_32 : StackLang.HolProg 64 :=
.seq rawBody346_30 rawBody346_31

def rawBody346_33 : StackLang.HolProg 64 :=
.seq rawBody346_29 rawBody346_32

def rawBody346_34 : StackLang.HolProg 64 :=
.seq rawBody346_28 rawBody346_33

def rawBody346_35 : StackLang.HolProg 64 :=
.seq rawBody346_27 rawBody346_34

def rawBody346_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody346_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_38 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody346_39 : StackLang.HolProg 64 :=
.seq rawBody346_37 rawBody346_38

def rawBody346_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody346_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 0 (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5)

def rawBody346_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 0 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 100#64)))

def rawBody346_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody346_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody346_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_48 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody346_49 : StackLang.HolProg 64 :=
.seq rawBody346_47 rawBody346_48

def rawBody346_50 : StackLang.HolProg 64 :=
.seq rawBody346_46 rawBody346_49

def rawBody346_51 : StackLang.HolProg 64 :=
.seq rawBody346_45 rawBody346_50

def rawBody346_52 : StackLang.HolProg 64 :=
.seq rawBody346_44 rawBody346_51

def rawBody346_53 : StackLang.HolProg 64 :=
.seq rawBody346_43 rawBody346_52

def rawBody346_54 : StackLang.HolProg 64 :=
.seq rawBody346_42 rawBody346_53

def rawBody346_55 : StackLang.HolProg 64 :=
.seq rawBody346_41 rawBody346_54

def rawBody346_56 : StackLang.HolProg 64 :=
.seq rawBody346_40 rawBody346_55

def rawBody346_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64) rawBody346_39 rawBody346_56

def rawBody346_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody346_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody346_60 : StackLang.HolProg 64 :=
.seq rawBody346_58 rawBody346_59

def rawBody346_61 : StackLang.HolProg 64 :=
.seq rawBody346_57 rawBody346_60

def rawBody346_62 : StackLang.HolProg 64 :=
.seq rawBody346_36 rawBody346_61

def rawBody346_63 : StackLang.HolProg 64 :=
.call (some (rawBody346_35, 0, 346, 2)) (Sum.inl 345) (some (rawBody346_62, 346, 3))

def rawBody346_64 : StackLang.HolProg 64 :=
.seq rawBody346_26 rawBody346_63

def rawBody346_65 : StackLang.HolProg 64 :=
.seq rawBody346_25 rawBody346_64

def rawBody346_66 : StackLang.HolProg 64 :=
.seq rawBody346_24 rawBody346_65

def rawBody346_67 : StackLang.HolProg 64 :=
.seq rawBody346_5 rawBody346_66

def rawBody346_68 : StackLang.HolProg 64 :=
.seq rawBody346_2 rawBody346_67

def rawBody346_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody346_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody346_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody346_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody346_73 : StackLang.HolProg 64 :=
.seq rawBody346_71 rawBody346_72

def rawBody346_74 : StackLang.HolProg 64 :=
.seq rawBody346_70 rawBody346_73

def rawBody346_75 : StackLang.HolProg 64 :=
.seq rawBody346_69 rawBody346_74

def rawBody346_76 : StackLang.HolProg 64 :=
.seq rawBody346_68 rawBody346_75

def rawBody346_77 : StackLang.HolProg 64 :=
.seq rawBody346_1 rawBody346_76

def rawBody346_78 : StackLang.HolProg 64 :=
.seq rawBody346_0 rawBody346_77

def raw346 : StackLang.HolProg 64 := rawBody346_78
theorem raw346_eq : StackRawCall.compTop RawInfo.rawInfo (function346 (.list [])).1 = raw346 := by
  kernel_rfl
#print axioms raw346_eq
end InitECandidate.Proofs.BackendStages
