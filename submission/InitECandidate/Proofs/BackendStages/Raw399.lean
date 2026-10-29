import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function399
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody399_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody399_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody399_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1184#64)

def rawBody399_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody399_5 : StackLang.HolProg 64 :=
.seq rawBody399_3 rawBody399_4

def rawBody399_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody399_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody399_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody399_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 399 3

def rawBody399_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody399_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody399_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody399_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody399_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody399_16 : StackLang.HolProg 64 :=
.seq rawBody399_14 rawBody399_15

def rawBody399_17 : StackLang.HolProg 64 :=
.seq rawBody399_13 rawBody399_16

def rawBody399_18 : StackLang.HolProg 64 :=
.seq rawBody399_12 rawBody399_17

def rawBody399_19 : StackLang.HolProg 64 :=
.seq rawBody399_11 rawBody399_18

def rawBody399_20 : StackLang.HolProg 64 :=
.seq rawBody399_10 rawBody399_19

def rawBody399_21 : StackLang.HolProg 64 :=
.seq rawBody399_9 rawBody399_20

def rawBody399_22 : StackLang.HolProg 64 :=
.seq rawBody399_8 rawBody399_21

def rawBody399_23 : StackLang.HolProg 64 :=
.seq rawBody399_7 rawBody399_22

def rawBody399_24 : StackLang.HolProg 64 :=
.seq rawBody399_6 rawBody399_23

def rawBody399_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody399_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody399_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody399_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody399_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody399_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody399_33 : StackLang.HolProg 64 :=
.seq rawBody399_31 rawBody399_32

def rawBody399_34 : StackLang.HolProg 64 :=
.seq rawBody399_30 rawBody399_33

def rawBody399_35 : StackLang.HolProg 64 :=
.seq rawBody399_29 rawBody399_34

def rawBody399_36 : StackLang.HolProg 64 :=
.seq rawBody399_28 rawBody399_35

def rawBody399_37 : StackLang.HolProg 64 :=
.seq rawBody399_27 rawBody399_36

def rawBody399_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody399_39 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody399_40 : StackLang.HolProg 64 :=
.seq rawBody399_38 rawBody399_39

def rawBody399_41 : StackLang.HolProg 64 :=
.call (some (rawBody399_37, 0, 399, 2)) (Sum.inl 398) (some (rawBody399_40, 399, 3))

def rawBody399_42 : StackLang.HolProg 64 :=
.seq rawBody399_26 rawBody399_41

def rawBody399_43 : StackLang.HolProg 64 :=
.seq rawBody399_25 rawBody399_42

def rawBody399_44 : StackLang.HolProg 64 :=
.seq rawBody399_24 rawBody399_43

def rawBody399_45 : StackLang.HolProg 64 :=
.seq rawBody399_5 rawBody399_44

def rawBody399_46 : StackLang.HolProg 64 :=
.seq rawBody399_2 rawBody399_45

def rawBody399_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody399_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody399_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody399_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 1 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody399_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody399_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 1 1

def rawBody399_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551488#64))

def rawBody399_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody399_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody399_58 : StackLang.HolProg 64 :=
.seq rawBody399_56 rawBody399_57

def rawBody399_59 : StackLang.HolProg 64 :=
.seq rawBody399_55 rawBody399_58

def rawBody399_60 : StackLang.HolProg 64 :=
.seq rawBody399_54 rawBody399_59

def rawBody399_61 : StackLang.HolProg 64 :=
.seq rawBody399_53 rawBody399_60

def rawBody399_62 : StackLang.HolProg 64 :=
.seq rawBody399_52 rawBody399_61

def rawBody399_63 : StackLang.HolProg 64 :=
.seq rawBody399_51 rawBody399_62

def rawBody399_64 : StackLang.HolProg 64 :=
.seq rawBody399_50 rawBody399_63

def rawBody399_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_66 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody399_64 rawBody399_65

def rawBody399_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody399_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody399_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 40#64))

def rawBody399_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody399_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody399_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def rawBody399_74 : StackLang.HolProg 64 :=
.seq rawBody399_72 rawBody399_73

def rawBody399_75 : StackLang.HolProg 64 :=
.seq rawBody399_71 rawBody399_74

def rawBody399_76 : StackLang.HolProg 64 :=
.seq rawBody399_70 rawBody399_75

def rawBody399_77 : StackLang.HolProg 64 :=
.seq rawBody399_69 rawBody399_76

def rawBody399_78 : StackLang.HolProg 64 :=
.seq rawBody399_68 rawBody399_77

def rawBody399_79 : StackLang.HolProg 64 :=
.seq rawBody399_67 rawBody399_78

def rawBody399_80 : StackLang.HolProg 64 :=
.seq rawBody399_66 rawBody399_79

def rawBody399_81 : StackLang.HolProg 64 :=
.seq rawBody399_49 rawBody399_80

def rawBody399_82 : StackLang.HolProg 64 :=
.seq rawBody399_48 rawBody399_81

def rawBody399_83 : StackLang.HolProg 64 :=
.seq rawBody399_47 rawBody399_82

def rawBody399_84 : StackLang.HolProg 64 :=
.seq rawBody399_46 rawBody399_83

def rawBody399_85 : StackLang.HolProg 64 :=
.seq rawBody399_1 rawBody399_84

def rawBody399_86 : StackLang.HolProg 64 :=
.seq rawBody399_0 rawBody399_85

def raw399 : StackLang.HolProg 64 := rawBody399_86
theorem raw399_eq : StackRawCall.compTop RawInfo.rawInfo (function399 (.list [])).1 = raw399 := by
  kernel_rfl
#print axioms raw399_eq
end InitECandidate.Proofs.BackendStages
