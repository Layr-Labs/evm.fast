import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function338
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody338_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 2

def rawBody338_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody338_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody338_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody338_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def rawBody338_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 1

def rawBody338_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 972#64)

def rawBody338_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody338_12 : StackLang.HolProg 64 :=
.seq rawBody338_10 rawBody338_11

def rawBody338_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody338_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody338_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody338_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 338 3

def rawBody338_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody338_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody338_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody338_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody338_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody338_23 : StackLang.HolProg 64 :=
.seq rawBody338_21 rawBody338_22

def rawBody338_24 : StackLang.HolProg 64 :=
.seq rawBody338_20 rawBody338_23

def rawBody338_25 : StackLang.HolProg 64 :=
.seq rawBody338_19 rawBody338_24

def rawBody338_26 : StackLang.HolProg 64 :=
.seq rawBody338_18 rawBody338_25

def rawBody338_27 : StackLang.HolProg 64 :=
.seq rawBody338_17 rawBody338_26

def rawBody338_28 : StackLang.HolProg 64 :=
.seq rawBody338_16 rawBody338_27

def rawBody338_29 : StackLang.HolProg 64 :=
.seq rawBody338_15 rawBody338_28

def rawBody338_30 : StackLang.HolProg 64 :=
.seq rawBody338_14 rawBody338_29

def rawBody338_31 : StackLang.HolProg 64 :=
.seq rawBody338_13 rawBody338_30

def rawBody338_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody338_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody338_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody338_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody338_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody338_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody338_40 : StackLang.HolProg 64 :=
.seq rawBody338_38 rawBody338_39

def rawBody338_41 : StackLang.HolProg 64 :=
.seq rawBody338_37 rawBody338_40

def rawBody338_42 : StackLang.HolProg 64 :=
.seq rawBody338_36 rawBody338_41

def rawBody338_43 : StackLang.HolProg 64 :=
.seq rawBody338_35 rawBody338_42

def rawBody338_44 : StackLang.HolProg 64 :=
.seq rawBody338_34 rawBody338_43

def rawBody338_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 1

def rawBody338_46 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody338_47 : StackLang.HolProg 64 :=
.seq rawBody338_45 rawBody338_46

def rawBody338_48 : StackLang.HolProg 64 :=
.call (some (rawBody338_44, 0, 338, 2)) (Sum.inl 161) (some (rawBody338_47, 338, 3))

def rawBody338_49 : StackLang.HolProg 64 :=
.seq rawBody338_33 rawBody338_48

def rawBody338_50 : StackLang.HolProg 64 :=
.seq rawBody338_32 rawBody338_49

def rawBody338_51 : StackLang.HolProg 64 :=
.seq rawBody338_31 rawBody338_50

def rawBody338_52 : StackLang.HolProg 64 :=
.seq rawBody338_12 rawBody338_51

def rawBody338_53 : StackLang.HolProg 64 :=
.seq rawBody338_9 rawBody338_52

def rawBody338_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody338_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody338_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody338_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 15#64)

def rawBody338_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set (Flapjack.Compiler.Backend.StackLang.StoreName.temp 0#5) 0

def rawBody338_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def rawBody338_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody338_64 : StackLang.HolProg 64 :=
.seq rawBody338_62 rawBody338_63

def rawBody338_65 : StackLang.HolProg 64 :=
.seq rawBody338_61 rawBody338_64

def rawBody338_66 : StackLang.HolProg 64 :=
.seq rawBody338_60 rawBody338_65

def rawBody338_67 : StackLang.HolProg 64 :=
.seq rawBody338_59 rawBody338_66

def rawBody338_68 : StackLang.HolProg 64 :=
.seq rawBody338_58 rawBody338_67

def rawBody338_69 : StackLang.HolProg 64 :=
.seq rawBody338_57 rawBody338_68

def rawBody338_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody338_71 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) rawBody338_69 rawBody338_70

def rawBody338_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody338_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody338_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody338_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def rawBody338_76 : StackLang.HolProg 64 :=
.seq rawBody338_74 rawBody338_75

def rawBody338_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 2

def rawBody338_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody338_79 : StackLang.HolProg 64 :=
.seq rawBody338_77 rawBody338_78

def rawBody338_80 : StackLang.HolProg 64 :=
.seq rawBody338_76 rawBody338_79

def rawBody338_81 : StackLang.HolProg 64 :=
.seq rawBody338_73 rawBody338_80

def rawBody338_82 : StackLang.HolProg 64 :=
.seq rawBody338_72 rawBody338_81

def rawBody338_83 : StackLang.HolProg 64 :=
.seq rawBody338_71 rawBody338_82

def rawBody338_84 : StackLang.HolProg 64 :=
.seq rawBody338_56 rawBody338_83

def rawBody338_85 : StackLang.HolProg 64 :=
.seq rawBody338_55 rawBody338_84

def rawBody338_86 : StackLang.HolProg 64 :=
.seq rawBody338_54 rawBody338_85

def rawBody338_87 : StackLang.HolProg 64 :=
.seq rawBody338_53 rawBody338_86

def rawBody338_88 : StackLang.HolProg 64 :=
.seq rawBody338_8 rawBody338_87

def rawBody338_89 : StackLang.HolProg 64 :=
.seq rawBody338_7 rawBody338_88

def rawBody338_90 : StackLang.HolProg 64 :=
.seq rawBody338_6 rawBody338_89

def rawBody338_91 : StackLang.HolProg 64 :=
.seq rawBody338_5 rawBody338_90

def rawBody338_92 : StackLang.HolProg 64 :=
.seq rawBody338_4 rawBody338_91

def rawBody338_93 : StackLang.HolProg 64 :=
.seq rawBody338_3 rawBody338_92

def rawBody338_94 : StackLang.HolProg 64 :=
.seq rawBody338_2 rawBody338_93

def rawBody338_95 : StackLang.HolProg 64 :=
.seq rawBody338_1 rawBody338_94

def rawBody338_96 : StackLang.HolProg 64 :=
.seq rawBody338_0 rawBody338_95

def raw338 : StackLang.HolProg 64 := rawBody338_96
theorem raw338_eq : StackRawCall.compTop RawInfo.rawInfo (function338 (.list [])).1 = raw338 := by
  kernel_rfl
#print axioms raw338_eq
end InitECandidate.Proofs.BackendStages
