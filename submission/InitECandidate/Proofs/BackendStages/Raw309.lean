import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function309
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody309_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody309_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody309_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 3 1

def rawBody309_3 : StackLang.HolProg 64 :=
.seq rawBody309_1 rawBody309_2

def rawBody309_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody309_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 850#64)

def rawBody309_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody309_7 : StackLang.HolProg 64 :=
.seq rawBody309_5 rawBody309_6

def rawBody309_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody309_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody309_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody309_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 309 3

def rawBody309_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody309_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody309_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody309_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody309_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody309_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody309_18 : StackLang.HolProg 64 :=
.seq rawBody309_16 rawBody309_17

def rawBody309_19 : StackLang.HolProg 64 :=
.seq rawBody309_15 rawBody309_18

def rawBody309_20 : StackLang.HolProg 64 :=
.seq rawBody309_14 rawBody309_19

def rawBody309_21 : StackLang.HolProg 64 :=
.seq rawBody309_13 rawBody309_20

def rawBody309_22 : StackLang.HolProg 64 :=
.seq rawBody309_12 rawBody309_21

def rawBody309_23 : StackLang.HolProg 64 :=
.seq rawBody309_11 rawBody309_22

def rawBody309_24 : StackLang.HolProg 64 :=
.seq rawBody309_10 rawBody309_23

def rawBody309_25 : StackLang.HolProg 64 :=
.seq rawBody309_9 rawBody309_24

def rawBody309_26 : StackLang.HolProg 64 :=
.seq rawBody309_8 rawBody309_25

def rawBody309_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody309_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody309_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody309_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody309_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody309_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody309_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody309_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody309_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody309_36 : StackLang.HolProg 64 :=
.seq rawBody309_34 rawBody309_35

def rawBody309_37 : StackLang.HolProg 64 :=
.seq rawBody309_33 rawBody309_36

def rawBody309_38 : StackLang.HolProg 64 :=
.seq rawBody309_32 rawBody309_37

def rawBody309_39 : StackLang.HolProg 64 :=
.seq rawBody309_31 rawBody309_38

def rawBody309_40 : StackLang.HolProg 64 :=
.seq rawBody309_30 rawBody309_39

def rawBody309_41 : StackLang.HolProg 64 :=
.seq rawBody309_29 rawBody309_40

def rawBody309_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody309_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody309_44 : StackLang.HolProg 64 :=
.seq rawBody309_42 rawBody309_43

def rawBody309_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody309_46 : StackLang.HolProg 64 :=
.seq rawBody309_44 rawBody309_45

def rawBody309_47 : StackLang.HolProg 64 :=
.call (some (rawBody309_41, 0, 309, 2)) (Sum.inl 305) (some (rawBody309_46, 309, 3))

def rawBody309_48 : StackLang.HolProg 64 :=
.seq rawBody309_28 rawBody309_47

def rawBody309_49 : StackLang.HolProg 64 :=
.seq rawBody309_27 rawBody309_48

def rawBody309_50 : StackLang.HolProg 64 :=
.seq rawBody309_26 rawBody309_49

def rawBody309_51 : StackLang.HolProg 64 :=
.seq rawBody309_7 rawBody309_50

def rawBody309_52 : StackLang.HolProg 64 :=
.seq rawBody309_4 rawBody309_51

def rawBody309_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody309_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody309_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody309_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody309_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 1

def rawBody309_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 308

def rawBody309_59 : StackLang.HolProg 64 :=
.seq rawBody309_57 rawBody309_58

def rawBody309_60 : StackLang.HolProg 64 :=
.seq rawBody309_56 rawBody309_59

def rawBody309_61 : StackLang.HolProg 64 :=
.seq rawBody309_55 rawBody309_60

def rawBody309_62 : StackLang.HolProg 64 :=
.seq rawBody309_54 rawBody309_61

def rawBody309_63 : StackLang.HolProg 64 :=
.seq rawBody309_53 rawBody309_62

def rawBody309_64 : StackLang.HolProg 64 :=
.seq rawBody309_52 rawBody309_63

def rawBody309_65 : StackLang.HolProg 64 :=
.seq rawBody309_3 rawBody309_64

def rawBody309_66 : StackLang.HolProg 64 :=
.seq rawBody309_0 rawBody309_65

def raw309 : StackLang.HolProg 64 := rawBody309_66
theorem raw309_eq : StackRawCall.compTop RawInfo.rawInfo (function309 (.list [])).1 = raw309 := by
  kernel_rfl
#print axioms raw309_eq
end InitECandidate.Proofs.BackendStages
