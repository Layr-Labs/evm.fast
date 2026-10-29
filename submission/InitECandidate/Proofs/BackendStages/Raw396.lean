import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function396
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody396_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody396_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody396_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody396_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody396_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody396_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551440#64))

def rawBody396_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 72#64))

def rawBody396_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def rawBody396_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody396_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1175#64)

def rawBody396_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody396_13 : StackLang.HolProg 64 :=
.seq rawBody396_11 rawBody396_12

def rawBody396_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody396_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody396_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody396_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 396 3

def rawBody396_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody396_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody396_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody396_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody396_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody396_24 : StackLang.HolProg 64 :=
.seq rawBody396_22 rawBody396_23

def rawBody396_25 : StackLang.HolProg 64 :=
.seq rawBody396_21 rawBody396_24

def rawBody396_26 : StackLang.HolProg 64 :=
.seq rawBody396_20 rawBody396_25

def rawBody396_27 : StackLang.HolProg 64 :=
.seq rawBody396_19 rawBody396_26

def rawBody396_28 : StackLang.HolProg 64 :=
.seq rawBody396_18 rawBody396_27

def rawBody396_29 : StackLang.HolProg 64 :=
.seq rawBody396_17 rawBody396_28

def rawBody396_30 : StackLang.HolProg 64 :=
.seq rawBody396_16 rawBody396_29

def rawBody396_31 : StackLang.HolProg 64 :=
.seq rawBody396_15 rawBody396_30

def rawBody396_32 : StackLang.HolProg 64 :=
.seq rawBody396_14 rawBody396_31

def rawBody396_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody396_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody396_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody396_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody396_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody396_40 : StackLang.HolProg 64 :=
.seq rawBody396_38 rawBody396_39

def rawBody396_41 : StackLang.HolProg 64 :=
.seq rawBody396_37 rawBody396_40

def rawBody396_42 : StackLang.HolProg 64 :=
.seq rawBody396_36 rawBody396_41

def rawBody396_43 : StackLang.HolProg 64 :=
.seq rawBody396_35 rawBody396_42

def rawBody396_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 1

def rawBody396_45 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody396_46 : StackLang.HolProg 64 :=
.seq rawBody396_44 rawBody396_45

def rawBody396_47 : StackLang.HolProg 64 :=
.call (some (rawBody396_43, 0, 396, 2)) (Sum.inl 192) (some (rawBody396_46, 396, 3))

def rawBody396_48 : StackLang.HolProg 64 :=
.seq rawBody396_34 rawBody396_47

def rawBody396_49 : StackLang.HolProg 64 :=
.seq rawBody396_33 rawBody396_48

def rawBody396_50 : StackLang.HolProg 64 :=
.seq rawBody396_32 rawBody396_49

def rawBody396_51 : StackLang.HolProg 64 :=
.seq rawBody396_13 rawBody396_50

def rawBody396_52 : StackLang.HolProg 64 :=
.seq rawBody396_10 rawBody396_51

def rawBody396_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody396_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody396_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody396_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody396_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody396_58 : StackLang.HolProg 64 :=
.seq rawBody396_56 rawBody396_57

def rawBody396_59 : StackLang.HolProg 64 :=
.seq rawBody396_55 rawBody396_58

def rawBody396_60 : StackLang.HolProg 64 :=
.seq rawBody396_54 rawBody396_59

def rawBody396_61 : StackLang.HolProg 64 :=
.seq rawBody396_53 rawBody396_60

def rawBody396_62 : StackLang.HolProg 64 :=
.seq rawBody396_52 rawBody396_61

def rawBody396_63 : StackLang.HolProg 64 :=
.seq rawBody396_9 rawBody396_62

def rawBody396_64 : StackLang.HolProg 64 :=
.seq rawBody396_8 rawBody396_63

def rawBody396_65 : StackLang.HolProg 64 :=
.seq rawBody396_7 rawBody396_64

def rawBody396_66 : StackLang.HolProg 64 :=
.seq rawBody396_6 rawBody396_65

def rawBody396_67 : StackLang.HolProg 64 :=
.seq rawBody396_5 rawBody396_66

def rawBody396_68 : StackLang.HolProg 64 :=
.seq rawBody396_4 rawBody396_67

def rawBody396_69 : StackLang.HolProg 64 :=
.seq rawBody396_3 rawBody396_68

def rawBody396_70 : StackLang.HolProg 64 :=
.seq rawBody396_2 rawBody396_69

def rawBody396_71 : StackLang.HolProg 64 :=
.seq rawBody396_1 rawBody396_70

def rawBody396_72 : StackLang.HolProg 64 :=
.seq rawBody396_0 rawBody396_71

def raw396 : StackLang.HolProg 64 := rawBody396_72
theorem raw396_eq : StackRawCall.compTop RawInfo.rawInfo (function396 (.list [])).1 = raw396 := by
  kernel_rfl
#print axioms raw396_eq
end InitECandidate.Proofs.BackendStages
