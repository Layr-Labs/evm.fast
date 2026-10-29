import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function369
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody369_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody369_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody369_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody369_3 : StackLang.HolProg 64 :=
.seq rawBody369_1 rawBody369_2

def rawBody369_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 384#64))

def rawBody369_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 392#64))

def rawBody369_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody369_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1084#64)

def rawBody369_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody369_11 : StackLang.HolProg 64 :=
.seq rawBody369_9 rawBody369_10

def rawBody369_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody369_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody369_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody369_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 369 3

def rawBody369_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody369_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody369_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody369_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody369_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody369_22 : StackLang.HolProg 64 :=
.seq rawBody369_20 rawBody369_21

def rawBody369_23 : StackLang.HolProg 64 :=
.seq rawBody369_19 rawBody369_22

def rawBody369_24 : StackLang.HolProg 64 :=
.seq rawBody369_18 rawBody369_23

def rawBody369_25 : StackLang.HolProg 64 :=
.seq rawBody369_17 rawBody369_24

def rawBody369_26 : StackLang.HolProg 64 :=
.seq rawBody369_16 rawBody369_25

def rawBody369_27 : StackLang.HolProg 64 :=
.seq rawBody369_15 rawBody369_26

def rawBody369_28 : StackLang.HolProg 64 :=
.seq rawBody369_14 rawBody369_27

def rawBody369_29 : StackLang.HolProg 64 :=
.seq rawBody369_13 rawBody369_28

def rawBody369_30 : StackLang.HolProg 64 :=
.seq rawBody369_12 rawBody369_29

def rawBody369_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody369_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody369_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody369_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody369_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody369_38 : StackLang.HolProg 64 :=
.seq rawBody369_36 rawBody369_37

def rawBody369_39 : StackLang.HolProg 64 :=
.seq rawBody369_35 rawBody369_38

def rawBody369_40 : StackLang.HolProg 64 :=
.seq rawBody369_34 rawBody369_39

def rawBody369_41 : StackLang.HolProg 64 :=
.seq rawBody369_33 rawBody369_40

def rawBody369_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody369_43 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody369_44 : StackLang.HolProg 64 :=
.seq rawBody369_42 rawBody369_43

def rawBody369_45 : StackLang.HolProg 64 :=
.call (some (rawBody369_41, 0, 369, 2)) (Sum.inl 158) (some (rawBody369_44, 369, 3))

def rawBody369_46 : StackLang.HolProg 64 :=
.seq rawBody369_32 rawBody369_45

def rawBody369_47 : StackLang.HolProg 64 :=
.seq rawBody369_31 rawBody369_46

def rawBody369_48 : StackLang.HolProg 64 :=
.seq rawBody369_30 rawBody369_47

def rawBody369_49 : StackLang.HolProg 64 :=
.seq rawBody369_11 rawBody369_48

def rawBody369_50 : StackLang.HolProg 64 :=
.seq rawBody369_8 rawBody369_49

def rawBody369_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody369_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody369_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody369_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody369_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody369_56 : StackLang.HolProg 64 :=
.seq rawBody369_54 rawBody369_55

def rawBody369_57 : StackLang.HolProg 64 :=
.seq rawBody369_53 rawBody369_56

def rawBody369_58 : StackLang.HolProg 64 :=
.seq rawBody369_52 rawBody369_57

def rawBody369_59 : StackLang.HolProg 64 :=
.seq rawBody369_51 rawBody369_58

def rawBody369_60 : StackLang.HolProg 64 :=
.seq rawBody369_50 rawBody369_59

def rawBody369_61 : StackLang.HolProg 64 :=
.seq rawBody369_7 rawBody369_60

def rawBody369_62 : StackLang.HolProg 64 :=
.seq rawBody369_6 rawBody369_61

def rawBody369_63 : StackLang.HolProg 64 :=
.seq rawBody369_5 rawBody369_62

def rawBody369_64 : StackLang.HolProg 64 :=
.seq rawBody369_4 rawBody369_63

def rawBody369_65 : StackLang.HolProg 64 :=
.seq rawBody369_3 rawBody369_64

def rawBody369_66 : StackLang.HolProg 64 :=
.seq rawBody369_0 rawBody369_65

def raw369 : StackLang.HolProg 64 := rawBody369_66
theorem raw369_eq : StackRawCall.compTop RawInfo.rawInfo (function369 (.list [])).1 = raw369 := by
  kernel_rfl
#print axioms raw369_eq
end InitECandidate.Proofs.BackendStages
