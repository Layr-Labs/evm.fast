import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function467
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody467_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody467_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody467_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 20#64)

def rawBody467_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody467_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody467_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1493#64)

def rawBody467_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody467_7 : StackLang.HolProg 64 :=
.seq rawBody467_5 rawBody467_6

def rawBody467_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody467_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody467_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody467_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 467 3

def rawBody467_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody467_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody467_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody467_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody467_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody467_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody467_18 : StackLang.HolProg 64 :=
.seq rawBody467_16 rawBody467_17

def rawBody467_19 : StackLang.HolProg 64 :=
.seq rawBody467_15 rawBody467_18

def rawBody467_20 : StackLang.HolProg 64 :=
.seq rawBody467_14 rawBody467_19

def rawBody467_21 : StackLang.HolProg 64 :=
.seq rawBody467_13 rawBody467_20

def rawBody467_22 : StackLang.HolProg 64 :=
.seq rawBody467_12 rawBody467_21

def rawBody467_23 : StackLang.HolProg 64 :=
.seq rawBody467_11 rawBody467_22

def rawBody467_24 : StackLang.HolProg 64 :=
.seq rawBody467_10 rawBody467_23

def rawBody467_25 : StackLang.HolProg 64 :=
.seq rawBody467_9 rawBody467_24

def rawBody467_26 : StackLang.HolProg 64 :=
.seq rawBody467_8 rawBody467_25

def rawBody467_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody467_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody467_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody467_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody467_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody467_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody467_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody467_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody467_35 : StackLang.HolProg 64 :=
.seq rawBody467_33 rawBody467_34

def rawBody467_36 : StackLang.HolProg 64 :=
.seq rawBody467_32 rawBody467_35

def rawBody467_37 : StackLang.HolProg 64 :=
.seq rawBody467_31 rawBody467_36

def rawBody467_38 : StackLang.HolProg 64 :=
.seq rawBody467_30 rawBody467_37

def rawBody467_39 : StackLang.HolProg 64 :=
.seq rawBody467_29 rawBody467_38

def rawBody467_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody467_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody467_42 : StackLang.HolProg 64 :=
.seq rawBody467_40 rawBody467_41

def rawBody467_43 : StackLang.HolProg 64 :=
.call (some (rawBody467_39, 0, 467, 2)) (Sum.inl 146) (some (rawBody467_42, 467, 3))

def rawBody467_44 : StackLang.HolProg 64 :=
.seq rawBody467_28 rawBody467_43

def rawBody467_45 : StackLang.HolProg 64 :=
.seq rawBody467_27 rawBody467_44

def rawBody467_46 : StackLang.HolProg 64 :=
.seq rawBody467_26 rawBody467_45

def rawBody467_47 : StackLang.HolProg 64 :=
.seq rawBody467_7 rawBody467_46

def rawBody467_48 : StackLang.HolProg 64 :=
.seq rawBody467_4 rawBody467_47

def rawBody467_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody467_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody467_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody467_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody467_53 : StackLang.HolProg 64 :=
.seq rawBody467_51 rawBody467_52

def rawBody467_54 : StackLang.HolProg 64 :=
.seq rawBody467_50 rawBody467_53

def rawBody467_55 : StackLang.HolProg 64 :=
.seq rawBody467_49 rawBody467_54

def rawBody467_56 : StackLang.HolProg 64 :=
.seq rawBody467_48 rawBody467_55

def rawBody467_57 : StackLang.HolProg 64 :=
.seq rawBody467_3 rawBody467_56

def rawBody467_58 : StackLang.HolProg 64 :=
.seq rawBody467_2 rawBody467_57

def rawBody467_59 : StackLang.HolProg 64 :=
.seq rawBody467_1 rawBody467_58

def rawBody467_60 : StackLang.HolProg 64 :=
.seq rawBody467_0 rawBody467_59

def raw467 : StackLang.HolProg 64 := rawBody467_60
theorem raw467_eq : StackRawCall.compTop RawInfo.rawInfo (function467 (.list [])).1 = raw467 := by
  kernel_rfl
#print axioms raw467_eq
end InitECandidate.Proofs.BackendStages
