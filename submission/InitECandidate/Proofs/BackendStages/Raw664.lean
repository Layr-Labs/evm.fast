import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function664
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody664_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody664_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3486998266802970665#64)

def rawBody664_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 13281191951274694749#64)

def rawBody664_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 10917124144477883021#64)

def rawBody664_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 4332616871279656263#64)

def rawBody664_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody664_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2752#64)

def rawBody664_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody664_10 : StackLang.HolProg 64 :=
.seq rawBody664_8 rawBody664_9

def rawBody664_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody664_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody664_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody664_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 664 3

def rawBody664_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody664_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody664_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody664_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody664_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody664_21 : StackLang.HolProg 64 :=
.seq rawBody664_19 rawBody664_20

def rawBody664_22 : StackLang.HolProg 64 :=
.seq rawBody664_18 rawBody664_21

def rawBody664_23 : StackLang.HolProg 64 :=
.seq rawBody664_17 rawBody664_22

def rawBody664_24 : StackLang.HolProg 64 :=
.seq rawBody664_16 rawBody664_23

def rawBody664_25 : StackLang.HolProg 64 :=
.seq rawBody664_15 rawBody664_24

def rawBody664_26 : StackLang.HolProg 64 :=
.seq rawBody664_14 rawBody664_25

def rawBody664_27 : StackLang.HolProg 64 :=
.seq rawBody664_13 rawBody664_26

def rawBody664_28 : StackLang.HolProg 64 :=
.seq rawBody664_12 rawBody664_27

def rawBody664_29 : StackLang.HolProg 64 :=
.seq rawBody664_11 rawBody664_28

def rawBody664_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody664_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody664_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody664_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody664_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody664_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody664_38 : StackLang.HolProg 64 :=
.seq rawBody664_36 rawBody664_37

def rawBody664_39 : StackLang.HolProg 64 :=
.seq rawBody664_35 rawBody664_38

def rawBody664_40 : StackLang.HolProg 64 :=
.seq rawBody664_34 rawBody664_39

def rawBody664_41 : StackLang.HolProg 64 :=
.seq rawBody664_33 rawBody664_40

def rawBody664_42 : StackLang.HolProg 64 :=
.seq rawBody664_32 rawBody664_41

def rawBody664_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody664_44 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody664_45 : StackLang.HolProg 64 :=
.seq rawBody664_43 rawBody664_44

def rawBody664_46 : StackLang.HolProg 64 :=
.call (some (rawBody664_42, 0, 664, 2)) (Sum.inl 210) (some (rawBody664_45, 664, 3))

def rawBody664_47 : StackLang.HolProg 64 :=
.seq rawBody664_31 rawBody664_46

def rawBody664_48 : StackLang.HolProg 64 :=
.seq rawBody664_30 rawBody664_47

def rawBody664_49 : StackLang.HolProg 64 :=
.seq rawBody664_29 rawBody664_48

def rawBody664_50 : StackLang.HolProg 64 :=
.seq rawBody664_10 rawBody664_49

def rawBody664_51 : StackLang.HolProg 64 :=
.seq rawBody664_7 rawBody664_50

def rawBody664_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody664_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody664_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 2377177743836652868#64)

def rawBody664_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17257524443456604923#64)

def rawBody664_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 7129779742913871286#64)

def rawBody664_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 12812017116984455391#64)

def rawBody664_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody664_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody664_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 7

def rawBody664_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 661

def rawBody664_63 : StackLang.HolProg 64 :=
.seq rawBody664_61 rawBody664_62

def rawBody664_64 : StackLang.HolProg 64 :=
.seq rawBody664_60 rawBody664_63

def rawBody664_65 : StackLang.HolProg 64 :=
.seq rawBody664_59 rawBody664_64

def rawBody664_66 : StackLang.HolProg 64 :=
.seq rawBody664_58 rawBody664_65

def rawBody664_67 : StackLang.HolProg 64 :=
.seq rawBody664_57 rawBody664_66

def rawBody664_68 : StackLang.HolProg 64 :=
.seq rawBody664_56 rawBody664_67

def rawBody664_69 : StackLang.HolProg 64 :=
.seq rawBody664_55 rawBody664_68

def rawBody664_70 : StackLang.HolProg 64 :=
.seq rawBody664_54 rawBody664_69

def rawBody664_71 : StackLang.HolProg 64 :=
.seq rawBody664_53 rawBody664_70

def rawBody664_72 : StackLang.HolProg 64 :=
.seq rawBody664_52 rawBody664_71

def rawBody664_73 : StackLang.HolProg 64 :=
.seq rawBody664_51 rawBody664_72

def rawBody664_74 : StackLang.HolProg 64 :=
.seq rawBody664_6 rawBody664_73

def rawBody664_75 : StackLang.HolProg 64 :=
.seq rawBody664_5 rawBody664_74

def rawBody664_76 : StackLang.HolProg 64 :=
.seq rawBody664_4 rawBody664_75

def rawBody664_77 : StackLang.HolProg 64 :=
.seq rawBody664_3 rawBody664_76

def rawBody664_78 : StackLang.HolProg 64 :=
.seq rawBody664_2 rawBody664_77

def rawBody664_79 : StackLang.HolProg 64 :=
.seq rawBody664_1 rawBody664_78

def rawBody664_80 : StackLang.HolProg 64 :=
.seq rawBody664_0 rawBody664_79

def raw664 : StackLang.HolProg 64 := rawBody664_80
theorem raw664_eq : StackRawCall.compTop RawInfo.rawInfo (function664 (.list [])).1 = raw664 := by
  kernel_rfl
#print axioms raw664_eq
end InitECandidate.Proofs.BackendStages
