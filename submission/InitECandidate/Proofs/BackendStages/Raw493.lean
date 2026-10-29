import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function493
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody493_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody493_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody493_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody493_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody493_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody493_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody493_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def rawBody493_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody493_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody493_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1540#64)

def rawBody493_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody493_11 : StackLang.HolProg 64 :=
.seq rawBody493_9 rawBody493_10

def rawBody493_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody493_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody493_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody493_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 493 3

def rawBody493_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody493_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody493_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody493_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody493_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody493_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody493_22 : StackLang.HolProg 64 :=
.seq rawBody493_20 rawBody493_21

def rawBody493_23 : StackLang.HolProg 64 :=
.seq rawBody493_19 rawBody493_22

def rawBody493_24 : StackLang.HolProg 64 :=
.seq rawBody493_18 rawBody493_23

def rawBody493_25 : StackLang.HolProg 64 :=
.seq rawBody493_17 rawBody493_24

def rawBody493_26 : StackLang.HolProg 64 :=
.seq rawBody493_16 rawBody493_25

def rawBody493_27 : StackLang.HolProg 64 :=
.seq rawBody493_15 rawBody493_26

def rawBody493_28 : StackLang.HolProg 64 :=
.seq rawBody493_14 rawBody493_27

def rawBody493_29 : StackLang.HolProg 64 :=
.seq rawBody493_13 rawBody493_28

def rawBody493_30 : StackLang.HolProg 64 :=
.seq rawBody493_12 rawBody493_29

def rawBody493_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody493_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody493_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody493_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody493_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody493_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody493_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody493_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody493_39 : StackLang.HolProg 64 :=
.seq rawBody493_37 rawBody493_38

def rawBody493_40 : StackLang.HolProg 64 :=
.seq rawBody493_36 rawBody493_39

def rawBody493_41 : StackLang.HolProg 64 :=
.seq rawBody493_35 rawBody493_40

def rawBody493_42 : StackLang.HolProg 64 :=
.seq rawBody493_34 rawBody493_41

def rawBody493_43 : StackLang.HolProg 64 :=
.seq rawBody493_33 rawBody493_42

def rawBody493_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody493_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody493_46 : StackLang.HolProg 64 :=
.seq rawBody493_44 rawBody493_45

def rawBody493_47 : StackLang.HolProg 64 :=
.call (some (rawBody493_43, 0, 493, 2)) (Sum.inl 187) (some (rawBody493_46, 493, 3))

def rawBody493_48 : StackLang.HolProg 64 :=
.seq rawBody493_32 rawBody493_47

def rawBody493_49 : StackLang.HolProg 64 :=
.seq rawBody493_31 rawBody493_48

def rawBody493_50 : StackLang.HolProg 64 :=
.seq rawBody493_30 rawBody493_49

def rawBody493_51 : StackLang.HolProg 64 :=
.seq rawBody493_11 rawBody493_50

def rawBody493_52 : StackLang.HolProg 64 :=
.seq rawBody493_8 rawBody493_51

def rawBody493_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody493_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody493_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody493_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody493_57 : StackLang.HolProg 64 :=
.seq rawBody493_55 rawBody493_56

def rawBody493_58 : StackLang.HolProg 64 :=
.seq rawBody493_54 rawBody493_57

def rawBody493_59 : StackLang.HolProg 64 :=
.seq rawBody493_53 rawBody493_58

def rawBody493_60 : StackLang.HolProg 64 :=
.seq rawBody493_52 rawBody493_59

def rawBody493_61 : StackLang.HolProg 64 :=
.seq rawBody493_7 rawBody493_60

def rawBody493_62 : StackLang.HolProg 64 :=
.seq rawBody493_6 rawBody493_61

def rawBody493_63 : StackLang.HolProg 64 :=
.seq rawBody493_5 rawBody493_62

def rawBody493_64 : StackLang.HolProg 64 :=
.seq rawBody493_4 rawBody493_63

def rawBody493_65 : StackLang.HolProg 64 :=
.seq rawBody493_3 rawBody493_64

def rawBody493_66 : StackLang.HolProg 64 :=
.seq rawBody493_2 rawBody493_65

def rawBody493_67 : StackLang.HolProg 64 :=
.seq rawBody493_1 rawBody493_66

def rawBody493_68 : StackLang.HolProg 64 :=
.seq rawBody493_0 rawBody493_67

def raw493 : StackLang.HolProg 64 := rawBody493_68
theorem raw493_eq : StackRawCall.compTop RawInfo.rawInfo (function493 (.list [])).1 = raw493 := by
  kernel_rfl
#print axioms raw493_eq
end InitECandidate.Proofs.BackendStages
