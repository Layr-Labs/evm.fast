import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function419
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody419_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody419_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody419_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody419_3 : StackLang.HolProg 64 :=
.seq rawBody419_1 rawBody419_2

def rawBody419_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody419_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody419_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody419_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551432#64))

def rawBody419_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 16#64))

def rawBody419_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody419_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody419_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1247#64)

def rawBody419_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody419_13 : StackLang.HolProg 64 :=
.seq rawBody419_11 rawBody419_12

def rawBody419_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody419_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody419_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody419_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 419 3

def rawBody419_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody419_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody419_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody419_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody419_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody419_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody419_24 : StackLang.HolProg 64 :=
.seq rawBody419_22 rawBody419_23

def rawBody419_25 : StackLang.HolProg 64 :=
.seq rawBody419_21 rawBody419_24

def rawBody419_26 : StackLang.HolProg 64 :=
.seq rawBody419_20 rawBody419_25

def rawBody419_27 : StackLang.HolProg 64 :=
.seq rawBody419_19 rawBody419_26

def rawBody419_28 : StackLang.HolProg 64 :=
.seq rawBody419_18 rawBody419_27

def rawBody419_29 : StackLang.HolProg 64 :=
.seq rawBody419_17 rawBody419_28

def rawBody419_30 : StackLang.HolProg 64 :=
.seq rawBody419_16 rawBody419_29

def rawBody419_31 : StackLang.HolProg 64 :=
.seq rawBody419_15 rawBody419_30

def rawBody419_32 : StackLang.HolProg 64 :=
.seq rawBody419_14 rawBody419_31

def rawBody419_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody419_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody419_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody419_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody419_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody419_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody419_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody419_40 : StackLang.HolProg 64 :=
.seq rawBody419_38 rawBody419_39

def rawBody419_41 : StackLang.HolProg 64 :=
.seq rawBody419_37 rawBody419_40

def rawBody419_42 : StackLang.HolProg 64 :=
.seq rawBody419_36 rawBody419_41

def rawBody419_43 : StackLang.HolProg 64 :=
.seq rawBody419_35 rawBody419_42

def rawBody419_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody419_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody419_46 : StackLang.HolProg 64 :=
.seq rawBody419_44 rawBody419_45

def rawBody419_47 : StackLang.HolProg 64 :=
.call (some (rawBody419_43, 0, 419, 2)) (Sum.inl 388) (some (rawBody419_46, 419, 3))

def rawBody419_48 : StackLang.HolProg 64 :=
.seq rawBody419_34 rawBody419_47

def rawBody419_49 : StackLang.HolProg 64 :=
.seq rawBody419_33 rawBody419_48

def rawBody419_50 : StackLang.HolProg 64 :=
.seq rawBody419_32 rawBody419_49

def rawBody419_51 : StackLang.HolProg 64 :=
.seq rawBody419_13 rawBody419_50

def rawBody419_52 : StackLang.HolProg 64 :=
.seq rawBody419_10 rawBody419_51

def rawBody419_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody419_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody419_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody419_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody419_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody419_58 : StackLang.HolProg 64 :=
.seq rawBody419_56 rawBody419_57

def rawBody419_59 : StackLang.HolProg 64 :=
.seq rawBody419_55 rawBody419_58

def rawBody419_60 : StackLang.HolProg 64 :=
.seq rawBody419_54 rawBody419_59

def rawBody419_61 : StackLang.HolProg 64 :=
.seq rawBody419_53 rawBody419_60

def rawBody419_62 : StackLang.HolProg 64 :=
.seq rawBody419_52 rawBody419_61

def rawBody419_63 : StackLang.HolProg 64 :=
.seq rawBody419_9 rawBody419_62

def rawBody419_64 : StackLang.HolProg 64 :=
.seq rawBody419_8 rawBody419_63

def rawBody419_65 : StackLang.HolProg 64 :=
.seq rawBody419_7 rawBody419_64

def rawBody419_66 : StackLang.HolProg 64 :=
.seq rawBody419_6 rawBody419_65

def rawBody419_67 : StackLang.HolProg 64 :=
.seq rawBody419_5 rawBody419_66

def rawBody419_68 : StackLang.HolProg 64 :=
.seq rawBody419_4 rawBody419_67

def rawBody419_69 : StackLang.HolProg 64 :=
.seq rawBody419_3 rawBody419_68

def rawBody419_70 : StackLang.HolProg 64 :=
.seq rawBody419_0 rawBody419_69

def raw419 : StackLang.HolProg 64 := rawBody419_70
theorem raw419_eq : StackRawCall.compTop RawInfo.rawInfo (function419 (.list [])).1 = raw419 := by
  kernel_rfl
#print axioms raw419_eq
end InitECandidate.Proofs.BackendStages
