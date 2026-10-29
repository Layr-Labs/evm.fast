import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function477
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody477_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody477_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody477_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody477_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def rawBody477_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody477_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1498#64)

def rawBody477_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody477_9 : StackLang.HolProg 64 :=
.seq rawBody477_7 rawBody477_8

def rawBody477_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody477_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody477_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody477_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 477 3

def rawBody477_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody477_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody477_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody477_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody477_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody477_20 : StackLang.HolProg 64 :=
.seq rawBody477_18 rawBody477_19

def rawBody477_21 : StackLang.HolProg 64 :=
.seq rawBody477_17 rawBody477_20

def rawBody477_22 : StackLang.HolProg 64 :=
.seq rawBody477_16 rawBody477_21

def rawBody477_23 : StackLang.HolProg 64 :=
.seq rawBody477_15 rawBody477_22

def rawBody477_24 : StackLang.HolProg 64 :=
.seq rawBody477_14 rawBody477_23

def rawBody477_25 : StackLang.HolProg 64 :=
.seq rawBody477_13 rawBody477_24

def rawBody477_26 : StackLang.HolProg 64 :=
.seq rawBody477_12 rawBody477_25

def rawBody477_27 : StackLang.HolProg 64 :=
.seq rawBody477_11 rawBody477_26

def rawBody477_28 : StackLang.HolProg 64 :=
.seq rawBody477_10 rawBody477_27

def rawBody477_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody477_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody477_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody477_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody477_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody477_36 : StackLang.HolProg 64 :=
.seq rawBody477_34 rawBody477_35

def rawBody477_37 : StackLang.HolProg 64 :=
.seq rawBody477_33 rawBody477_36

def rawBody477_38 : StackLang.HolProg 64 :=
.seq rawBody477_32 rawBody477_37

def rawBody477_39 : StackLang.HolProg 64 :=
.seq rawBody477_31 rawBody477_38

def rawBody477_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody477_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody477_42 : StackLang.HolProg 64 :=
.seq rawBody477_40 rawBody477_41

def rawBody477_43 : StackLang.HolProg 64 :=
.call (some (rawBody477_39, 0, 477, 2)) (Sum.inl 476) (some (rawBody477_42, 477, 3))

def rawBody477_44 : StackLang.HolProg 64 :=
.seq rawBody477_30 rawBody477_43

def rawBody477_45 : StackLang.HolProg 64 :=
.seq rawBody477_29 rawBody477_44

def rawBody477_46 : StackLang.HolProg 64 :=
.seq rawBody477_28 rawBody477_45

def rawBody477_47 : StackLang.HolProg 64 :=
.seq rawBody477_9 rawBody477_46

def rawBody477_48 : StackLang.HolProg 64 :=
.seq rawBody477_6 rawBody477_47

def rawBody477_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody477_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody477_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody477_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody477_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody477_54 : StackLang.HolProg 64 :=
.seq rawBody477_52 rawBody477_53

def rawBody477_55 : StackLang.HolProg 64 :=
.seq rawBody477_51 rawBody477_54

def rawBody477_56 : StackLang.HolProg 64 :=
.seq rawBody477_50 rawBody477_55

def rawBody477_57 : StackLang.HolProg 64 :=
.seq rawBody477_49 rawBody477_56

def rawBody477_58 : StackLang.HolProg 64 :=
.seq rawBody477_48 rawBody477_57

def rawBody477_59 : StackLang.HolProg 64 :=
.seq rawBody477_5 rawBody477_58

def rawBody477_60 : StackLang.HolProg 64 :=
.seq rawBody477_4 rawBody477_59

def rawBody477_61 : StackLang.HolProg 64 :=
.seq rawBody477_3 rawBody477_60

def rawBody477_62 : StackLang.HolProg 64 :=
.seq rawBody477_2 rawBody477_61

def rawBody477_63 : StackLang.HolProg 64 :=
.seq rawBody477_1 rawBody477_62

def rawBody477_64 : StackLang.HolProg 64 :=
.seq rawBody477_0 rawBody477_63

def raw477 : StackLang.HolProg 64 := rawBody477_64
theorem raw477_eq : StackRawCall.compTop RawInfo.rawInfo (function477 (.list [])).1 = raw477 := by
  kernel_rfl
#print axioms raw477_eq
end InitECandidate.Proofs.BackendStages
