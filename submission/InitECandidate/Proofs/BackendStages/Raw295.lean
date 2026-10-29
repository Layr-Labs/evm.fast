import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function295
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody295_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody295_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody295_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def rawBody295_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 2

def rawBody295_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 1

def rawBody295_5 : StackLang.HolProg 64 :=
.seq rawBody295_3 rawBody295_4

def rawBody295_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 801#64)

def rawBody295_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody295_9 : StackLang.HolProg 64 :=
.seq rawBody295_7 rawBody295_8

def rawBody295_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody295_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody295_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody295_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 295 3

def rawBody295_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody295_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody295_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody295_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody295_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody295_20 : StackLang.HolProg 64 :=
.seq rawBody295_18 rawBody295_19

def rawBody295_21 : StackLang.HolProg 64 :=
.seq rawBody295_17 rawBody295_20

def rawBody295_22 : StackLang.HolProg 64 :=
.seq rawBody295_16 rawBody295_21

def rawBody295_23 : StackLang.HolProg 64 :=
.seq rawBody295_15 rawBody295_22

def rawBody295_24 : StackLang.HolProg 64 :=
.seq rawBody295_14 rawBody295_23

def rawBody295_25 : StackLang.HolProg 64 :=
.seq rawBody295_13 rawBody295_24

def rawBody295_26 : StackLang.HolProg 64 :=
.seq rawBody295_12 rawBody295_25

def rawBody295_27 : StackLang.HolProg 64 :=
.seq rawBody295_11 rawBody295_26

def rawBody295_28 : StackLang.HolProg 64 :=
.seq rawBody295_10 rawBody295_27

def rawBody295_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody295_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody295_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody295_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody295_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody295_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody295_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody295_38 : StackLang.HolProg 64 :=
.seq rawBody295_36 rawBody295_37

def rawBody295_39 : StackLang.HolProg 64 :=
.seq rawBody295_35 rawBody295_38

def rawBody295_40 : StackLang.HolProg 64 :=
.seq rawBody295_34 rawBody295_39

def rawBody295_41 : StackLang.HolProg 64 :=
.seq rawBody295_33 rawBody295_40

def rawBody295_42 : StackLang.HolProg 64 :=
.seq rawBody295_32 rawBody295_41

def rawBody295_43 : StackLang.HolProg 64 :=
.seq rawBody295_31 rawBody295_42

def rawBody295_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 2

def rawBody295_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 2 1

def rawBody295_46 : StackLang.HolProg 64 :=
.seq rawBody295_44 rawBody295_45

def rawBody295_47 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody295_48 : StackLang.HolProg 64 :=
.seq rawBody295_46 rawBody295_47

def rawBody295_49 : StackLang.HolProg 64 :=
.call (some (rawBody295_43, 0, 295, 2)) (Sum.inl 68) (some (rawBody295_48, 295, 3))

def rawBody295_50 : StackLang.HolProg 64 :=
.seq rawBody295_30 rawBody295_49

def rawBody295_51 : StackLang.HolProg 64 :=
.seq rawBody295_29 rawBody295_50

def rawBody295_52 : StackLang.HolProg 64 :=
.seq rawBody295_28 rawBody295_51

def rawBody295_53 : StackLang.HolProg 64 :=
.seq rawBody295_9 rawBody295_52

def rawBody295_54 : StackLang.HolProg 64 :=
.seq rawBody295_6 rawBody295_53

def rawBody295_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody295_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody295_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def rawBody295_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody295_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody295_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody295_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody295_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def rawBody295_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody295_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody295_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody295_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody295_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def rawBody295_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody295_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def rawBody295_77 : StackLang.HolProg 64 :=
.seq rawBody295_75 rawBody295_76

def rawBody295_78 : StackLang.HolProg 64 :=
.seq rawBody295_74 rawBody295_77

def rawBody295_79 : StackLang.HolProg 64 :=
.seq rawBody295_73 rawBody295_78

def rawBody295_80 : StackLang.HolProg 64 :=
.seq rawBody295_72 rawBody295_79

def rawBody295_81 : StackLang.HolProg 64 :=
.seq rawBody295_71 rawBody295_80

def rawBody295_82 : StackLang.HolProg 64 :=
.seq rawBody295_70 rawBody295_81

def rawBody295_83 : StackLang.HolProg 64 :=
.seq rawBody295_69 rawBody295_82

def rawBody295_84 : StackLang.HolProg 64 :=
.seq rawBody295_68 rawBody295_83

def rawBody295_85 : StackLang.HolProg 64 :=
.seq rawBody295_67 rawBody295_84

def rawBody295_86 : StackLang.HolProg 64 :=
.seq rawBody295_66 rawBody295_85

def rawBody295_87 : StackLang.HolProg 64 :=
.seq rawBody295_65 rawBody295_86

def rawBody295_88 : StackLang.HolProg 64 :=
.seq rawBody295_64 rawBody295_87

def rawBody295_89 : StackLang.HolProg 64 :=
.seq rawBody295_63 rawBody295_88

def rawBody295_90 : StackLang.HolProg 64 :=
.seq rawBody295_62 rawBody295_89

def rawBody295_91 : StackLang.HolProg 64 :=
.seq rawBody295_61 rawBody295_90

def rawBody295_92 : StackLang.HolProg 64 :=
.seq rawBody295_60 rawBody295_91

def rawBody295_93 : StackLang.HolProg 64 :=
.seq rawBody295_59 rawBody295_92

def rawBody295_94 : StackLang.HolProg 64 :=
.seq rawBody295_58 rawBody295_93

def rawBody295_95 : StackLang.HolProg 64 :=
.seq rawBody295_57 rawBody295_94

def rawBody295_96 : StackLang.HolProg 64 :=
.seq rawBody295_56 rawBody295_95

def rawBody295_97 : StackLang.HolProg 64 :=
.seq rawBody295_55 rawBody295_96

def rawBody295_98 : StackLang.HolProg 64 :=
.seq rawBody295_54 rawBody295_97

def rawBody295_99 : StackLang.HolProg 64 :=
.seq rawBody295_5 rawBody295_98

def rawBody295_100 : StackLang.HolProg 64 :=
.seq rawBody295_2 rawBody295_99

def rawBody295_101 : StackLang.HolProg 64 :=
.seq rawBody295_1 rawBody295_100

def rawBody295_102 : StackLang.HolProg 64 :=
.seq rawBody295_0 rawBody295_101

def raw295 : StackLang.HolProg 64 := rawBody295_102
theorem raw295_eq : StackRawCall.compTop RawInfo.rawInfo (function295 (.list [])).1 = raw295 := by
  kernel_rfl
#print axioms raw295_eq
end InitECandidate.Proofs.BackendStages
