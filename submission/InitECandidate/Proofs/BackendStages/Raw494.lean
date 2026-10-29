import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function494
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody494_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody494_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody494_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody494_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody494_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody494_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551360#64))

def rawBody494_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 168#64))

def rawBody494_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody494_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody494_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1541#64)

def rawBody494_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody494_13 : StackLang.HolProg 64 :=
.seq rawBody494_11 rawBody494_12

def rawBody494_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody494_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody494_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody494_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 494 3

def rawBody494_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody494_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody494_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody494_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody494_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody494_24 : StackLang.HolProg 64 :=
.seq rawBody494_22 rawBody494_23

def rawBody494_25 : StackLang.HolProg 64 :=
.seq rawBody494_21 rawBody494_24

def rawBody494_26 : StackLang.HolProg 64 :=
.seq rawBody494_20 rawBody494_25

def rawBody494_27 : StackLang.HolProg 64 :=
.seq rawBody494_19 rawBody494_26

def rawBody494_28 : StackLang.HolProg 64 :=
.seq rawBody494_18 rawBody494_27

def rawBody494_29 : StackLang.HolProg 64 :=
.seq rawBody494_17 rawBody494_28

def rawBody494_30 : StackLang.HolProg 64 :=
.seq rawBody494_16 rawBody494_29

def rawBody494_31 : StackLang.HolProg 64 :=
.seq rawBody494_15 rawBody494_30

def rawBody494_32 : StackLang.HolProg 64 :=
.seq rawBody494_14 rawBody494_31

def rawBody494_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody494_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody494_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody494_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody494_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody494_40 : StackLang.HolProg 64 :=
.seq rawBody494_38 rawBody494_39

def rawBody494_41 : StackLang.HolProg 64 :=
.seq rawBody494_37 rawBody494_40

def rawBody494_42 : StackLang.HolProg 64 :=
.seq rawBody494_36 rawBody494_41

def rawBody494_43 : StackLang.HolProg 64 :=
.seq rawBody494_35 rawBody494_42

def rawBody494_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody494_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody494_46 : StackLang.HolProg 64 :=
.seq rawBody494_44 rawBody494_45

def rawBody494_47 : StackLang.HolProg 64 :=
.call (some (rawBody494_43, 0, 494, 2)) (Sum.inl 192) (some (rawBody494_46, 494, 3))

def rawBody494_48 : StackLang.HolProg 64 :=
.seq rawBody494_34 rawBody494_47

def rawBody494_49 : StackLang.HolProg 64 :=
.seq rawBody494_33 rawBody494_48

def rawBody494_50 : StackLang.HolProg 64 :=
.seq rawBody494_32 rawBody494_49

def rawBody494_51 : StackLang.HolProg 64 :=
.seq rawBody494_13 rawBody494_50

def rawBody494_52 : StackLang.HolProg 64 :=
.seq rawBody494_10 rawBody494_51

def rawBody494_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody494_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody494_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody494_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody494_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody494_58 : StackLang.HolProg 64 :=
.seq rawBody494_56 rawBody494_57

def rawBody494_59 : StackLang.HolProg 64 :=
.seq rawBody494_55 rawBody494_58

def rawBody494_60 : StackLang.HolProg 64 :=
.seq rawBody494_54 rawBody494_59

def rawBody494_61 : StackLang.HolProg 64 :=
.seq rawBody494_53 rawBody494_60

def rawBody494_62 : StackLang.HolProg 64 :=
.seq rawBody494_52 rawBody494_61

def rawBody494_63 : StackLang.HolProg 64 :=
.seq rawBody494_9 rawBody494_62

def rawBody494_64 : StackLang.HolProg 64 :=
.seq rawBody494_8 rawBody494_63

def rawBody494_65 : StackLang.HolProg 64 :=
.seq rawBody494_7 rawBody494_64

def rawBody494_66 : StackLang.HolProg 64 :=
.seq rawBody494_6 rawBody494_65

def rawBody494_67 : StackLang.HolProg 64 :=
.seq rawBody494_5 rawBody494_66

def rawBody494_68 : StackLang.HolProg 64 :=
.seq rawBody494_4 rawBody494_67

def rawBody494_69 : StackLang.HolProg 64 :=
.seq rawBody494_3 rawBody494_68

def rawBody494_70 : StackLang.HolProg 64 :=
.seq rawBody494_2 rawBody494_69

def rawBody494_71 : StackLang.HolProg 64 :=
.seq rawBody494_1 rawBody494_70

def rawBody494_72 : StackLang.HolProg 64 :=
.seq rawBody494_0 rawBody494_71

def raw494 : StackLang.HolProg 64 := rawBody494_72
theorem raw494_eq : StackRawCall.compTop RawInfo.rawInfo (function494 (.list [])).1 = raw494 := by
  kernel_rfl
#print axioms raw494_eq
end InitECandidate.Proofs.BackendStages
