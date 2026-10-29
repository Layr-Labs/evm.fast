import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function496
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody496_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody496_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 3000#64)

def rawBody496_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody496_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody496_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1543#64)

def rawBody496_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody496_8 : StackLang.HolProg 64 :=
.seq rawBody496_6 rawBody496_7

def rawBody496_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody496_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody496_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody496_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 496 3

def rawBody496_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody496_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody496_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody496_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody496_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody496_19 : StackLang.HolProg 64 :=
.seq rawBody496_17 rawBody496_18

def rawBody496_20 : StackLang.HolProg 64 :=
.seq rawBody496_16 rawBody496_19

def rawBody496_21 : StackLang.HolProg 64 :=
.seq rawBody496_15 rawBody496_20

def rawBody496_22 : StackLang.HolProg 64 :=
.seq rawBody496_14 rawBody496_21

def rawBody496_23 : StackLang.HolProg 64 :=
.seq rawBody496_13 rawBody496_22

def rawBody496_24 : StackLang.HolProg 64 :=
.seq rawBody496_12 rawBody496_23

def rawBody496_25 : StackLang.HolProg 64 :=
.seq rawBody496_11 rawBody496_24

def rawBody496_26 : StackLang.HolProg 64 :=
.seq rawBody496_10 rawBody496_25

def rawBody496_27 : StackLang.HolProg 64 :=
.seq rawBody496_9 rawBody496_26

def rawBody496_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody496_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody496_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody496_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody496_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody496_35 : StackLang.HolProg 64 :=
.seq rawBody496_33 rawBody496_34

def rawBody496_36 : StackLang.HolProg 64 :=
.seq rawBody496_32 rawBody496_35

def rawBody496_37 : StackLang.HolProg 64 :=
.seq rawBody496_31 rawBody496_36

def rawBody496_38 : StackLang.HolProg 64 :=
.seq rawBody496_30 rawBody496_37

def rawBody496_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody496_40 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody496_41 : StackLang.HolProg 64 :=
.seq rawBody496_39 rawBody496_40

def rawBody496_42 : StackLang.HolProg 64 :=
.call (some (rawBody496_38, 0, 496, 2)) (Sum.inl 494) (some (rawBody496_41, 496, 3))

def rawBody496_43 : StackLang.HolProg 64 :=
.seq rawBody496_29 rawBody496_42

def rawBody496_44 : StackLang.HolProg 64 :=
.seq rawBody496_28 rawBody496_43

def rawBody496_45 : StackLang.HolProg 64 :=
.seq rawBody496_27 rawBody496_44

def rawBody496_46 : StackLang.HolProg 64 :=
.seq rawBody496_8 rawBody496_45

def rawBody496_47 : StackLang.HolProg 64 :=
.seq rawBody496_5 rawBody496_46

def rawBody496_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody496_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_50 : StackLang.HolProg 64 :=
.seq rawBody496_48 rawBody496_49

def rawBody496_51 : StackLang.HolProg 64 :=
.seq rawBody496_47 rawBody496_50

def rawBody496_52 : StackLang.HolProg 64 :=
.seq rawBody496_4 rawBody496_51

def rawBody496_53 : StackLang.HolProg 64 :=
.seq rawBody496_3 rawBody496_52

def rawBody496_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody496_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_56 : StackLang.HolProg 64 :=
.seq rawBody496_54 rawBody496_55

def rawBody496_57 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) rawBody496_53 rawBody496_56

def rawBody496_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody496_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody496_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody496_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody496_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody496_63 : StackLang.HolProg 64 :=
.seq rawBody496_61 rawBody496_62

def rawBody496_64 : StackLang.HolProg 64 :=
.seq rawBody496_60 rawBody496_63

def rawBody496_65 : StackLang.HolProg 64 :=
.seq rawBody496_59 rawBody496_64

def rawBody496_66 : StackLang.HolProg 64 :=
.seq rawBody496_58 rawBody496_65

def rawBody496_67 : StackLang.HolProg 64 :=
.seq rawBody496_57 rawBody496_66

def rawBody496_68 : StackLang.HolProg 64 :=
.seq rawBody496_2 rawBody496_67

def rawBody496_69 : StackLang.HolProg 64 :=
.seq rawBody496_1 rawBody496_68

def rawBody496_70 : StackLang.HolProg 64 :=
.seq rawBody496_0 rawBody496_69

def raw496 : StackLang.HolProg 64 := rawBody496_70
theorem raw496_eq : StackRawCall.compTop RawInfo.rawInfo (function496 (.list [])).1 = raw496 := by
  kernel_rfl
#print axioms raw496_eq
end InitECandidate.Proofs.BackendStages
