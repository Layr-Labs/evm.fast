import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function864
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody864_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody864_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody864_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 5#64)

def rawBody864_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody864_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody864_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4520#64)

def rawBody864_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody864_7 : StackLang.HolProg 64 :=
.seq rawBody864_5 rawBody864_6

def rawBody864_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody864_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody864_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody864_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 864 3

def rawBody864_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody864_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody864_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody864_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody864_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody864_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody864_18 : StackLang.HolProg 64 :=
.seq rawBody864_16 rawBody864_17

def rawBody864_19 : StackLang.HolProg 64 :=
.seq rawBody864_15 rawBody864_18

def rawBody864_20 : StackLang.HolProg 64 :=
.seq rawBody864_14 rawBody864_19

def rawBody864_21 : StackLang.HolProg 64 :=
.seq rawBody864_13 rawBody864_20

def rawBody864_22 : StackLang.HolProg 64 :=
.seq rawBody864_12 rawBody864_21

def rawBody864_23 : StackLang.HolProg 64 :=
.seq rawBody864_11 rawBody864_22

def rawBody864_24 : StackLang.HolProg 64 :=
.seq rawBody864_10 rawBody864_23

def rawBody864_25 : StackLang.HolProg 64 :=
.seq rawBody864_9 rawBody864_24

def rawBody864_26 : StackLang.HolProg 64 :=
.seq rawBody864_8 rawBody864_25

def rawBody864_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody864_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody864_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody864_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody864_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody864_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody864_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody864_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody864_35 : StackLang.HolProg 64 :=
.seq rawBody864_33 rawBody864_34

def rawBody864_36 : StackLang.HolProg 64 :=
.seq rawBody864_32 rawBody864_35

def rawBody864_37 : StackLang.HolProg 64 :=
.seq rawBody864_31 rawBody864_36

def rawBody864_38 : StackLang.HolProg 64 :=
.seq rawBody864_30 rawBody864_37

def rawBody864_39 : StackLang.HolProg 64 :=
.seq rawBody864_29 rawBody864_38

def rawBody864_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody864_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody864_42 : StackLang.HolProg 64 :=
.seq rawBody864_40 rawBody864_41

def rawBody864_43 : StackLang.HolProg 64 :=
.call (some (rawBody864_39, 0, 864, 2)) (Sum.inl 95) (some (rawBody864_42, 864, 3))

def rawBody864_44 : StackLang.HolProg 64 :=
.seq rawBody864_28 rawBody864_43

def rawBody864_45 : StackLang.HolProg 64 :=
.seq rawBody864_27 rawBody864_44

def rawBody864_46 : StackLang.HolProg 64 :=
.seq rawBody864_26 rawBody864_45

def rawBody864_47 : StackLang.HolProg 64 :=
.seq rawBody864_7 rawBody864_46

def rawBody864_48 : StackLang.HolProg 64 :=
.seq rawBody864_4 rawBody864_47

def rawBody864_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody864_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody864_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody864_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody864_53 : StackLang.HolProg 64 :=
.seq rawBody864_51 rawBody864_52

def rawBody864_54 : StackLang.HolProg 64 :=
.seq rawBody864_50 rawBody864_53

def rawBody864_55 : StackLang.HolProg 64 :=
.seq rawBody864_49 rawBody864_54

def rawBody864_56 : StackLang.HolProg 64 :=
.seq rawBody864_48 rawBody864_55

def rawBody864_57 : StackLang.HolProg 64 :=
.seq rawBody864_3 rawBody864_56

def rawBody864_58 : StackLang.HolProg 64 :=
.seq rawBody864_2 rawBody864_57

def rawBody864_59 : StackLang.HolProg 64 :=
.seq rawBody864_1 rawBody864_58

def rawBody864_60 : StackLang.HolProg 64 :=
.seq rawBody864_0 rawBody864_59

def raw864 : StackLang.HolProg 64 := rawBody864_60
theorem raw864_eq : StackRawCall.compTop RawInfo.rawInfo (function864 (.list [])).1 = raw864 := by
  kernel_rfl
#print axioms raw864_eq
end InitECandidate.Proofs.BackendStages
