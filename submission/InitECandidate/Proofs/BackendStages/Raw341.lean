import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function341
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody341_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody341_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody341_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody341_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody341_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody341_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody341_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 975#64)

def rawBody341_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody341_12 : StackLang.HolProg 64 :=
.seq rawBody341_10 rawBody341_11

def rawBody341_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody341_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody341_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody341_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 341 3

def rawBody341_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody341_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody341_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody341_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody341_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody341_23 : StackLang.HolProg 64 :=
.seq rawBody341_21 rawBody341_22

def rawBody341_24 : StackLang.HolProg 64 :=
.seq rawBody341_20 rawBody341_23

def rawBody341_25 : StackLang.HolProg 64 :=
.seq rawBody341_19 rawBody341_24

def rawBody341_26 : StackLang.HolProg 64 :=
.seq rawBody341_18 rawBody341_25

def rawBody341_27 : StackLang.HolProg 64 :=
.seq rawBody341_17 rawBody341_26

def rawBody341_28 : StackLang.HolProg 64 :=
.seq rawBody341_16 rawBody341_27

def rawBody341_29 : StackLang.HolProg 64 :=
.seq rawBody341_15 rawBody341_28

def rawBody341_30 : StackLang.HolProg 64 :=
.seq rawBody341_14 rawBody341_29

def rawBody341_31 : StackLang.HolProg 64 :=
.seq rawBody341_13 rawBody341_30

def rawBody341_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody341_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody341_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody341_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody341_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody341_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody341_40 : StackLang.HolProg 64 :=
.seq rawBody341_38 rawBody341_39

def rawBody341_41 : StackLang.HolProg 64 :=
.seq rawBody341_37 rawBody341_40

def rawBody341_42 : StackLang.HolProg 64 :=
.seq rawBody341_36 rawBody341_41

def rawBody341_43 : StackLang.HolProg 64 :=
.seq rawBody341_35 rawBody341_42

def rawBody341_44 : StackLang.HolProg 64 :=
.seq rawBody341_34 rawBody341_43

def rawBody341_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody341_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody341_47 : StackLang.HolProg 64 :=
.seq rawBody341_45 rawBody341_46

def rawBody341_48 : StackLang.HolProg 64 :=
.call (some (rawBody341_44, 0, 341, 2)) (Sum.inl 161) (some (rawBody341_47, 341, 3))

def rawBody341_49 : StackLang.HolProg 64 :=
.seq rawBody341_33 rawBody341_48

def rawBody341_50 : StackLang.HolProg 64 :=
.seq rawBody341_32 rawBody341_49

def rawBody341_51 : StackLang.HolProg 64 :=
.seq rawBody341_31 rawBody341_50

def rawBody341_52 : StackLang.HolProg 64 :=
.seq rawBody341_12 rawBody341_51

def rawBody341_53 : StackLang.HolProg 64 :=
.seq rawBody341_9 rawBody341_52

def rawBody341_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody341_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def rawBody341_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody341_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18#64)

def rawBody341_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody341_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody341_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody341_64 : StackLang.HolProg 64 :=
.seq rawBody341_62 rawBody341_63

def rawBody341_65 : StackLang.HolProg 64 :=
.seq rawBody341_61 rawBody341_64

def rawBody341_66 : StackLang.HolProg 64 :=
.seq rawBody341_60 rawBody341_65

def rawBody341_67 : StackLang.HolProg 64 :=
.seq rawBody341_59 rawBody341_66

def rawBody341_68 : StackLang.HolProg 64 :=
.seq rawBody341_58 rawBody341_67

def rawBody341_69 : StackLang.HolProg 64 :=
.seq rawBody341_57 rawBody341_68

def rawBody341_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody341_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody341_69 rawBody341_70

def rawBody341_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody341_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody341_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody341_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody341_76 : StackLang.HolProg 64 :=
.seq rawBody341_74 rawBody341_75

def rawBody341_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody341_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody341_79 : StackLang.HolProg 64 :=
.seq rawBody341_77 rawBody341_78

def rawBody341_80 : StackLang.HolProg 64 :=
.seq rawBody341_76 rawBody341_79

def rawBody341_81 : StackLang.HolProg 64 :=
.seq rawBody341_73 rawBody341_80

def rawBody341_82 : StackLang.HolProg 64 :=
.seq rawBody341_72 rawBody341_81

def rawBody341_83 : StackLang.HolProg 64 :=
.seq rawBody341_71 rawBody341_82

def rawBody341_84 : StackLang.HolProg 64 :=
.seq rawBody341_56 rawBody341_83

def rawBody341_85 : StackLang.HolProg 64 :=
.seq rawBody341_55 rawBody341_84

def rawBody341_86 : StackLang.HolProg 64 :=
.seq rawBody341_54 rawBody341_85

def rawBody341_87 : StackLang.HolProg 64 :=
.seq rawBody341_53 rawBody341_86

def rawBody341_88 : StackLang.HolProg 64 :=
.seq rawBody341_8 rawBody341_87

def rawBody341_89 : StackLang.HolProg 64 :=
.seq rawBody341_7 rawBody341_88

def rawBody341_90 : StackLang.HolProg 64 :=
.seq rawBody341_6 rawBody341_89

def rawBody341_91 : StackLang.HolProg 64 :=
.seq rawBody341_5 rawBody341_90

def rawBody341_92 : StackLang.HolProg 64 :=
.seq rawBody341_4 rawBody341_91

def rawBody341_93 : StackLang.HolProg 64 :=
.seq rawBody341_3 rawBody341_92

def rawBody341_94 : StackLang.HolProg 64 :=
.seq rawBody341_2 rawBody341_93

def rawBody341_95 : StackLang.HolProg 64 :=
.seq rawBody341_1 rawBody341_94

def rawBody341_96 : StackLang.HolProg 64 :=
.seq rawBody341_0 rawBody341_95

def raw341 : StackLang.HolProg 64 := rawBody341_96
theorem raw341_eq : StackRawCall.compTop RawInfo.rawInfo (function341 (.list [])).1 = raw341 := by
  kernel_rfl
#print axioms raw341_eq
end InitECandidate.Proofs.BackendStages
