import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function190
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody190_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 4

def rawBody190_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 0 3

def rawBody190_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 2 2

def rawBody190_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 1 1

def rawBody190_4 : StackLang.HolProg 64 :=
.seq rawBody190_2 rawBody190_3

def rawBody190_5 : StackLang.HolProg 64 :=
.seq rawBody190_1 rawBody190_4

def rawBody190_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 218#64)

def rawBody190_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody190_9 : StackLang.HolProg 64 :=
.seq rawBody190_7 rawBody190_8

def rawBody190_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 3

def rawBody190_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def rawBody190_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 0

def rawBody190_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 190 3

def rawBody190_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 1

def rawBody190_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.get 22 Flapjack.Compiler.Backend.StackLang.StoreName.handler

def rawBody190_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackStore 22 2

def rawBody190_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackGetSize 22

def rawBody190_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody190_20 : StackLang.HolProg 64 :=
.seq rawBody190_18 rawBody190_19

def rawBody190_21 : StackLang.HolProg 64 :=
.seq rawBody190_17 rawBody190_20

def rawBody190_22 : StackLang.HolProg 64 :=
.seq rawBody190_16 rawBody190_21

def rawBody190_23 : StackLang.HolProg 64 :=
.seq rawBody190_15 rawBody190_22

def rawBody190_24 : StackLang.HolProg 64 :=
.seq rawBody190_14 rawBody190_23

def rawBody190_25 : StackLang.HolProg 64 :=
.seq rawBody190_13 rawBody190_24

def rawBody190_26 : StackLang.HolProg 64 :=
.seq rawBody190_12 rawBody190_25

def rawBody190_27 : StackLang.HolProg 64 :=
.seq rawBody190_11 rawBody190_26

def rawBody190_28 : StackLang.HolProg 64 :=
.seq rawBody190_10 rawBody190_27

def rawBody190_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody190_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 22 2

def rawBody190_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.set Flapjack.Compiler.Backend.StackLang.StoreName.handler 22

def rawBody190_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 3

def rawBody190_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody190_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody190_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody190_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody190_39 : StackLang.HolProg 64 :=
.seq rawBody190_37 rawBody190_38

def rawBody190_40 : StackLang.HolProg 64 :=
.seq rawBody190_36 rawBody190_39

def rawBody190_41 : StackLang.HolProg 64 :=
.seq rawBody190_35 rawBody190_40

def rawBody190_42 : StackLang.HolProg 64 :=
.seq rawBody190_34 rawBody190_41

def rawBody190_43 : StackLang.HolProg 64 :=
.seq rawBody190_33 rawBody190_42

def rawBody190_44 : StackLang.HolProg 64 :=
.seq rawBody190_32 rawBody190_43

def rawBody190_45 : StackLang.HolProg 64 :=
.seq rawBody190_31 rawBody190_44

def rawBody190_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 4 3

def rawBody190_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 0 2

def rawBody190_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackLoad 3 1

def rawBody190_49 : StackLang.HolProg 64 :=
.seq rawBody190_47 rawBody190_48

def rawBody190_50 : StackLang.HolProg 64 :=
.seq rawBody190_46 rawBody190_49

def rawBody190_51 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def rawBody190_52 : StackLang.HolProg 64 :=
.seq rawBody190_50 rawBody190_51

def rawBody190_53 : StackLang.HolProg 64 :=
.call (some (rawBody190_45, 0, 190, 2)) (Sum.inl 188) (some (rawBody190_52, 190, 3))

def rawBody190_54 : StackLang.HolProg 64 :=
.seq rawBody190_30 rawBody190_53

def rawBody190_55 : StackLang.HolProg 64 :=
.seq rawBody190_29 rawBody190_54

def rawBody190_56 : StackLang.HolProg 64 :=
.seq rawBody190_28 rawBody190_55

def rawBody190_57 : StackLang.HolProg 64 :=
.seq rawBody190_9 rawBody190_56

def rawBody190_58 : StackLang.HolProg 64 :=
.seq rawBody190_6 rawBody190_57

def rawBody190_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody190_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 40#64))

def rawBody190_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def rawBody190_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody190_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def rawBody190_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody190_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody190_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody190_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody190_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody190_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 5 0#64)

def rawBody190_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody190_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody190_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody190_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody190_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody190_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackFree 4

def rawBody190_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def rawBody190_86 : StackLang.HolProg 64 :=
.seq rawBody190_84 rawBody190_85

def rawBody190_87 : StackLang.HolProg 64 :=
.seq rawBody190_83 rawBody190_86

def rawBody190_88 : StackLang.HolProg 64 :=
.seq rawBody190_82 rawBody190_87

def rawBody190_89 : StackLang.HolProg 64 :=
.seq rawBody190_81 rawBody190_88

def rawBody190_90 : StackLang.HolProg 64 :=
.seq rawBody190_80 rawBody190_89

def rawBody190_91 : StackLang.HolProg 64 :=
.seq rawBody190_79 rawBody190_90

def rawBody190_92 : StackLang.HolProg 64 :=
.seq rawBody190_78 rawBody190_91

def rawBody190_93 : StackLang.HolProg 64 :=
.seq rawBody190_77 rawBody190_92

def rawBody190_94 : StackLang.HolProg 64 :=
.seq rawBody190_76 rawBody190_93

def rawBody190_95 : StackLang.HolProg 64 :=
.seq rawBody190_75 rawBody190_94

def rawBody190_96 : StackLang.HolProg 64 :=
.seq rawBody190_74 rawBody190_95

def rawBody190_97 : StackLang.HolProg 64 :=
.seq rawBody190_73 rawBody190_96

def rawBody190_98 : StackLang.HolProg 64 :=
.seq rawBody190_72 rawBody190_97

def rawBody190_99 : StackLang.HolProg 64 :=
.seq rawBody190_71 rawBody190_98

def rawBody190_100 : StackLang.HolProg 64 :=
.seq rawBody190_70 rawBody190_99

def rawBody190_101 : StackLang.HolProg 64 :=
.seq rawBody190_69 rawBody190_100

def rawBody190_102 : StackLang.HolProg 64 :=
.seq rawBody190_68 rawBody190_101

def rawBody190_103 : StackLang.HolProg 64 :=
.seq rawBody190_67 rawBody190_102

def rawBody190_104 : StackLang.HolProg 64 :=
.seq rawBody190_66 rawBody190_103

def rawBody190_105 : StackLang.HolProg 64 :=
.seq rawBody190_65 rawBody190_104

def rawBody190_106 : StackLang.HolProg 64 :=
.seq rawBody190_64 rawBody190_105

def rawBody190_107 : StackLang.HolProg 64 :=
.seq rawBody190_63 rawBody190_106

def rawBody190_108 : StackLang.HolProg 64 :=
.seq rawBody190_62 rawBody190_107

def rawBody190_109 : StackLang.HolProg 64 :=
.seq rawBody190_61 rawBody190_108

def rawBody190_110 : StackLang.HolProg 64 :=
.seq rawBody190_60 rawBody190_109

def rawBody190_111 : StackLang.HolProg 64 :=
.seq rawBody190_59 rawBody190_110

def rawBody190_112 : StackLang.HolProg 64 :=
.seq rawBody190_58 rawBody190_111

def rawBody190_113 : StackLang.HolProg 64 :=
.seq rawBody190_5 rawBody190_112

def rawBody190_114 : StackLang.HolProg 64 :=
.seq rawBody190_0 rawBody190_113

def raw190 : StackLang.HolProg 64 := rawBody190_114
theorem raw190_eq : StackRawCall.compTop RawInfo.rawInfo (function190 (.list [])).1 = raw190 := by
  kernel_rfl
#print axioms raw190_eq
end InitECandidate.Proofs.BackendStages
