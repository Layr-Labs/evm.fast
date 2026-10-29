import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function307
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody307_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody307_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody307_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody307_3 : StackLang.HolProg 64 :=
.seq rawBody307_1 rawBody307_2

def rawBody307_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody307_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody307_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody307_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def rawBody307_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 32#64)

def rawBody307_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody307_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 4 1

def rawBody307_11 : StackLang.HolProg 64 :=
.seq rawBody307_9 rawBody307_10

def rawBody307_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 848#64)

def rawBody307_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody307_15 : StackLang.HolProg 64 :=
.seq rawBody307_13 rawBody307_14

def rawBody307_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody307_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody307_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody307_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 307 3

def rawBody307_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody307_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody307_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody307_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody307_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody307_26 : StackLang.HolProg 64 :=
.seq rawBody307_24 rawBody307_25

def rawBody307_27 : StackLang.HolProg 64 :=
.seq rawBody307_23 rawBody307_26

def rawBody307_28 : StackLang.HolProg 64 :=
.seq rawBody307_22 rawBody307_27

def rawBody307_29 : StackLang.HolProg 64 :=
.seq rawBody307_21 rawBody307_28

def rawBody307_30 : StackLang.HolProg 64 :=
.seq rawBody307_20 rawBody307_29

def rawBody307_31 : StackLang.HolProg 64 :=
.seq rawBody307_19 rawBody307_30

def rawBody307_32 : StackLang.HolProg 64 :=
.seq rawBody307_18 rawBody307_31

def rawBody307_33 : StackLang.HolProg 64 :=
.seq rawBody307_17 rawBody307_32

def rawBody307_34 : StackLang.HolProg 64 :=
.seq rawBody307_16 rawBody307_33

def rawBody307_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody307_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody307_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody307_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody307_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody307_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody307_43 : StackLang.HolProg 64 :=
.seq rawBody307_41 rawBody307_42

def rawBody307_44 : StackLang.HolProg 64 :=
.seq rawBody307_40 rawBody307_43

def rawBody307_45 : StackLang.HolProg 64 :=
.seq rawBody307_39 rawBody307_44

def rawBody307_46 : StackLang.HolProg 64 :=
.seq rawBody307_38 rawBody307_45

def rawBody307_47 : StackLang.HolProg 64 :=
.seq rawBody307_37 rawBody307_46

def rawBody307_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody307_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody307_50 : StackLang.HolProg 64 :=
.seq rawBody307_48 rawBody307_49

def rawBody307_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody307_52 : StackLang.HolProg 64 :=
.seq rawBody307_50 rawBody307_51

def rawBody307_53 : StackLang.HolProg 64 :=
.call (some (rawBody307_47, 0, 307, 2)) (Sum.inl 288) (some (rawBody307_52, 307, 3))

def rawBody307_54 : StackLang.HolProg 64 :=
.seq rawBody307_36 rawBody307_53

def rawBody307_55 : StackLang.HolProg 64 :=
.seq rawBody307_35 rawBody307_54

def rawBody307_56 : StackLang.HolProg 64 :=
.seq rawBody307_34 rawBody307_55

def rawBody307_57 : StackLang.HolProg 64 :=
.seq rawBody307_15 rawBody307_56

def rawBody307_58 : StackLang.HolProg 64 :=
.seq rawBody307_12 rawBody307_57

def rawBody307_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody307_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody307_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 2 Flapjack.Compiler.Backend.StackLang.StoreName.heapLength

def rawBody307_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody307_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.opCurrHeap Flapjack.BinOp.add 2 2

def rawBody307_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 18446744073709551472#64))

def rawBody307_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 64#64)

def rawBody307_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody307_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody307_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody307_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 306

def rawBody307_71 : StackLang.HolProg 64 :=
.seq rawBody307_69 rawBody307_70

def rawBody307_72 : StackLang.HolProg 64 :=
.seq rawBody307_68 rawBody307_71

def rawBody307_73 : StackLang.HolProg 64 :=
.seq rawBody307_67 rawBody307_72

def rawBody307_74 : StackLang.HolProg 64 :=
.seq rawBody307_66 rawBody307_73

def rawBody307_75 : StackLang.HolProg 64 :=
.seq rawBody307_65 rawBody307_74

def rawBody307_76 : StackLang.HolProg 64 :=
.seq rawBody307_64 rawBody307_75

def rawBody307_77 : StackLang.HolProg 64 :=
.seq rawBody307_63 rawBody307_76

def rawBody307_78 : StackLang.HolProg 64 :=
.seq rawBody307_62 rawBody307_77

def rawBody307_79 : StackLang.HolProg 64 :=
.seq rawBody307_61 rawBody307_78

def rawBody307_80 : StackLang.HolProg 64 :=
.seq rawBody307_60 rawBody307_79

def rawBody307_81 : StackLang.HolProg 64 :=
.seq rawBody307_59 rawBody307_80

def rawBody307_82 : StackLang.HolProg 64 :=
.seq rawBody307_58 rawBody307_81

def rawBody307_83 : StackLang.HolProg 64 :=
.seq rawBody307_11 rawBody307_82

def rawBody307_84 : StackLang.HolProg 64 :=
.seq rawBody307_8 rawBody307_83

def rawBody307_85 : StackLang.HolProg 64 :=
.seq rawBody307_7 rawBody307_84

def rawBody307_86 : StackLang.HolProg 64 :=
.seq rawBody307_6 rawBody307_85

def rawBody307_87 : StackLang.HolProg 64 :=
.seq rawBody307_5 rawBody307_86

def rawBody307_88 : StackLang.HolProg 64 :=
.seq rawBody307_4 rawBody307_87

def rawBody307_89 : StackLang.HolProg 64 :=
.seq rawBody307_3 rawBody307_88

def rawBody307_90 : StackLang.HolProg 64 :=
.seq rawBody307_0 rawBody307_89

def raw307 : StackLang.HolProg 64 := rawBody307_90
theorem raw307_eq : StackRawCall.compTop RawInfo.rawInfo (function307 (.list [])).1 = raw307 := by
  kernel_rfl
#print axioms raw307_eq
end InitECandidate.Proofs.BackendStages
