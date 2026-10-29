import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function678
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody678_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody678_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody678_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody678_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody678_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody678_5 : StackLang.HolProg 64 :=
.seq rawBody678_3 rawBody678_4

def rawBody678_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody678_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2792#64)

def rawBody678_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody678_9 : StackLang.HolProg 64 :=
.seq rawBody678_7 rawBody678_8

def rawBody678_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody678_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody678_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody678_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 678 3

def rawBody678_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody678_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody678_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody678_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody678_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody678_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody678_20 : StackLang.HolProg 64 :=
.seq rawBody678_18 rawBody678_19

def rawBody678_21 : StackLang.HolProg 64 :=
.seq rawBody678_17 rawBody678_20

def rawBody678_22 : StackLang.HolProg 64 :=
.seq rawBody678_16 rawBody678_21

def rawBody678_23 : StackLang.HolProg 64 :=
.seq rawBody678_15 rawBody678_22

def rawBody678_24 : StackLang.HolProg 64 :=
.seq rawBody678_14 rawBody678_23

def rawBody678_25 : StackLang.HolProg 64 :=
.seq rawBody678_13 rawBody678_24

def rawBody678_26 : StackLang.HolProg 64 :=
.seq rawBody678_12 rawBody678_25

def rawBody678_27 : StackLang.HolProg 64 :=
.seq rawBody678_11 rawBody678_26

def rawBody678_28 : StackLang.HolProg 64 :=
.seq rawBody678_10 rawBody678_27

def rawBody678_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody678_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody678_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody678_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody678_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody678_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody678_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody678_36 : StackLang.HolProg 64 :=
.seq rawBody678_34 rawBody678_35

def rawBody678_37 : StackLang.HolProg 64 :=
.seq rawBody678_33 rawBody678_36

def rawBody678_38 : StackLang.HolProg 64 :=
.seq rawBody678_32 rawBody678_37

def rawBody678_39 : StackLang.HolProg 64 :=
.seq rawBody678_31 rawBody678_38

def rawBody678_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody678_41 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody678_42 : StackLang.HolProg 64 :=
.seq rawBody678_40 rawBody678_41

def rawBody678_43 : StackLang.HolProg 64 :=
.call (some (rawBody678_39, 0, 678, 2)) (Sum.inl 78) (some (rawBody678_42, 678, 3))

def rawBody678_44 : StackLang.HolProg 64 :=
.seq rawBody678_30 rawBody678_43

def rawBody678_45 : StackLang.HolProg 64 :=
.seq rawBody678_29 rawBody678_44

def rawBody678_46 : StackLang.HolProg 64 :=
.seq rawBody678_28 rawBody678_45

def rawBody678_47 : StackLang.HolProg 64 :=
.seq rawBody678_9 rawBody678_46

def rawBody678_48 : StackLang.HolProg 64 :=
.seq rawBody678_6 rawBody678_47

def rawBody678_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody678_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody678_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody678_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody678_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody678_54 : StackLang.HolProg 64 :=
.seq rawBody678_52 rawBody678_53

def rawBody678_55 : StackLang.HolProg 64 :=
.seq rawBody678_51 rawBody678_54

def rawBody678_56 : StackLang.HolProg 64 :=
.seq rawBody678_50 rawBody678_55

def rawBody678_57 : StackLang.HolProg 64 :=
.seq rawBody678_49 rawBody678_56

def rawBody678_58 : StackLang.HolProg 64 :=
.seq rawBody678_48 rawBody678_57

def rawBody678_59 : StackLang.HolProg 64 :=
.seq rawBody678_5 rawBody678_58

def rawBody678_60 : StackLang.HolProg 64 :=
.seq rawBody678_2 rawBody678_59

def rawBody678_61 : StackLang.HolProg 64 :=
.seq rawBody678_1 rawBody678_60

def rawBody678_62 : StackLang.HolProg 64 :=
.seq rawBody678_0 rawBody678_61

def raw678 : StackLang.HolProg 64 := rawBody678_62
theorem raw678_eq : StackRawCall.compTop RawInfo.rawInfo (function678 (.list [])).1 = raw678 := by
  kernel_rfl
#print axioms raw678_eq
end InitECandidate.Proofs.BackendStages
