import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function131
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody131_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody131_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody131_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody131_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 83#64)

def rawBody131_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody131_5 : StackLang.HolProg 64 :=
.seq rawBody131_3 rawBody131_4

def rawBody131_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody131_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody131_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody131_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 131 3

def rawBody131_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody131_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody131_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody131_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody131_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody131_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody131_16 : StackLang.HolProg 64 :=
.seq rawBody131_14 rawBody131_15

def rawBody131_17 : StackLang.HolProg 64 :=
.seq rawBody131_13 rawBody131_16

def rawBody131_18 : StackLang.HolProg 64 :=
.seq rawBody131_12 rawBody131_17

def rawBody131_19 : StackLang.HolProg 64 :=
.seq rawBody131_11 rawBody131_18

def rawBody131_20 : StackLang.HolProg 64 :=
.seq rawBody131_10 rawBody131_19

def rawBody131_21 : StackLang.HolProg 64 :=
.seq rawBody131_9 rawBody131_20

def rawBody131_22 : StackLang.HolProg 64 :=
.seq rawBody131_8 rawBody131_21

def rawBody131_23 : StackLang.HolProg 64 :=
.seq rawBody131_7 rawBody131_22

def rawBody131_24 : StackLang.HolProg 64 :=
.seq rawBody131_6 rawBody131_23

def rawBody131_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody131_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody131_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody131_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody131_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody131_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody131_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody131_32 : StackLang.HolProg 64 :=
.seq rawBody131_30 rawBody131_31

def rawBody131_33 : StackLang.HolProg 64 :=
.seq rawBody131_29 rawBody131_32

def rawBody131_34 : StackLang.HolProg 64 :=
.seq rawBody131_28 rawBody131_33

def rawBody131_35 : StackLang.HolProg 64 :=
.seq rawBody131_27 rawBody131_34

def rawBody131_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody131_37 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody131_38 : StackLang.HolProg 64 :=
.seq rawBody131_36 rawBody131_37

def rawBody131_39 : StackLang.HolProg 64 :=
.call (some (rawBody131_35, 0, 131, 2)) (Sum.inl 129) (some (rawBody131_38, 131, 3))

def rawBody131_40 : StackLang.HolProg 64 :=
.seq rawBody131_26 rawBody131_39

def rawBody131_41 : StackLang.HolProg 64 :=
.seq rawBody131_25 rawBody131_40

def rawBody131_42 : StackLang.HolProg 64 :=
.seq rawBody131_24 rawBody131_41

def rawBody131_43 : StackLang.HolProg 64 :=
.seq rawBody131_5 rawBody131_42

def rawBody131_44 : StackLang.HolProg 64 :=
.seq rawBody131_2 rawBody131_43

def rawBody131_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody131_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def rawBody131_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody131_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody131_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody131_50 : StackLang.HolProg 64 :=
.seq rawBody131_48 rawBody131_49

def rawBody131_51 : StackLang.HolProg 64 :=
.seq rawBody131_47 rawBody131_50

def rawBody131_52 : StackLang.HolProg 64 :=
.seq rawBody131_46 rawBody131_51

def rawBody131_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody131_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody131_55 : StackLang.HolProg 64 :=
.seq rawBody131_53 rawBody131_54

def rawBody131_56 : StackLang.HolProg 64 :=
.seq rawBody131_52 rawBody131_55

def rawBody131_57 : StackLang.HolProg 64 :=
.seq rawBody131_45 rawBody131_56

def rawBody131_58 : StackLang.HolProg 64 :=
.seq rawBody131_44 rawBody131_57

def rawBody131_59 : StackLang.HolProg 64 :=
.seq rawBody131_1 rawBody131_58

def rawBody131_60 : StackLang.HolProg 64 :=
.seq rawBody131_0 rawBody131_59

def raw131 : StackLang.HolProg 64 := rawBody131_60
theorem raw131_eq : StackRawCall.compTop RawInfo.rawInfo (function131 (.list [])).1 = raw131 := by
  kernel_rfl
#print axioms raw131_eq
end InitECandidate.Proofs.BackendStages
