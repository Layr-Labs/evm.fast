import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function124
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody124_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody124_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 4294967295#64)

def rawBody124_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 6 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def rawBody124_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody124_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 8#64)))

def rawBody124_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody124_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody124_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def rawBody124_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def rawBody124_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody124_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody124_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def rawBody124_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody124_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def rawBody124_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody124_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def rawBody124_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody124_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody124_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 40#64)))

def rawBody124_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody124_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody124_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 48#64)))

def rawBody124_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 4294967295#64)

def rawBody124_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def rawBody124_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 0#64))

def rawBody124_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 56#64)))

def rawBody124_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 32#64)))

def rawBody124_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def rawBody124_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def rawBody124_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody124_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody124_54 : StackLang.HolProg 64 :=
.seq rawBody124_52 rawBody124_53

def rawBody124_55 : StackLang.HolProg 64 :=
.seq rawBody124_51 rawBody124_54

def rawBody124_56 : StackLang.HolProg 64 :=
.seq rawBody124_50 rawBody124_55

def rawBody124_57 : StackLang.HolProg 64 :=
.seq rawBody124_49 rawBody124_56

def rawBody124_58 : StackLang.HolProg 64 :=
.seq rawBody124_48 rawBody124_57

def rawBody124_59 : StackLang.HolProg 64 :=
.seq rawBody124_47 rawBody124_58

def rawBody124_60 : StackLang.HolProg 64 :=
.seq rawBody124_46 rawBody124_59

def rawBody124_61 : StackLang.HolProg 64 :=
.seq rawBody124_45 rawBody124_60

def rawBody124_62 : StackLang.HolProg 64 :=
.seq rawBody124_44 rawBody124_61

def rawBody124_63 : StackLang.HolProg 64 :=
.seq rawBody124_43 rawBody124_62

def rawBody124_64 : StackLang.HolProg 64 :=
.seq rawBody124_42 rawBody124_63

def rawBody124_65 : StackLang.HolProg 64 :=
.seq rawBody124_41 rawBody124_64

def rawBody124_66 : StackLang.HolProg 64 :=
.seq rawBody124_40 rawBody124_65

def rawBody124_67 : StackLang.HolProg 64 :=
.seq rawBody124_39 rawBody124_66

def rawBody124_68 : StackLang.HolProg 64 :=
.seq rawBody124_38 rawBody124_67

def rawBody124_69 : StackLang.HolProg 64 :=
.seq rawBody124_37 rawBody124_68

def rawBody124_70 : StackLang.HolProg 64 :=
.seq rawBody124_36 rawBody124_69

def rawBody124_71 : StackLang.HolProg 64 :=
.seq rawBody124_35 rawBody124_70

def rawBody124_72 : StackLang.HolProg 64 :=
.seq rawBody124_34 rawBody124_71

def rawBody124_73 : StackLang.HolProg 64 :=
.seq rawBody124_33 rawBody124_72

def rawBody124_74 : StackLang.HolProg 64 :=
.seq rawBody124_32 rawBody124_73

def rawBody124_75 : StackLang.HolProg 64 :=
.seq rawBody124_31 rawBody124_74

def rawBody124_76 : StackLang.HolProg 64 :=
.seq rawBody124_30 rawBody124_75

def rawBody124_77 : StackLang.HolProg 64 :=
.seq rawBody124_29 rawBody124_76

def rawBody124_78 : StackLang.HolProg 64 :=
.seq rawBody124_28 rawBody124_77

def rawBody124_79 : StackLang.HolProg 64 :=
.seq rawBody124_27 rawBody124_78

def rawBody124_80 : StackLang.HolProg 64 :=
.seq rawBody124_26 rawBody124_79

def rawBody124_81 : StackLang.HolProg 64 :=
.seq rawBody124_25 rawBody124_80

def rawBody124_82 : StackLang.HolProg 64 :=
.seq rawBody124_24 rawBody124_81

def rawBody124_83 : StackLang.HolProg 64 :=
.seq rawBody124_23 rawBody124_82

def rawBody124_84 : StackLang.HolProg 64 :=
.seq rawBody124_22 rawBody124_83

def rawBody124_85 : StackLang.HolProg 64 :=
.seq rawBody124_21 rawBody124_84

def rawBody124_86 : StackLang.HolProg 64 :=
.seq rawBody124_20 rawBody124_85

def rawBody124_87 : StackLang.HolProg 64 :=
.seq rawBody124_19 rawBody124_86

def rawBody124_88 : StackLang.HolProg 64 :=
.seq rawBody124_18 rawBody124_87

def rawBody124_89 : StackLang.HolProg 64 :=
.seq rawBody124_17 rawBody124_88

def rawBody124_90 : StackLang.HolProg 64 :=
.seq rawBody124_16 rawBody124_89

def rawBody124_91 : StackLang.HolProg 64 :=
.seq rawBody124_15 rawBody124_90

def rawBody124_92 : StackLang.HolProg 64 :=
.seq rawBody124_14 rawBody124_91

def rawBody124_93 : StackLang.HolProg 64 :=
.seq rawBody124_13 rawBody124_92

def rawBody124_94 : StackLang.HolProg 64 :=
.seq rawBody124_12 rawBody124_93

def rawBody124_95 : StackLang.HolProg 64 :=
.seq rawBody124_11 rawBody124_94

def rawBody124_96 : StackLang.HolProg 64 :=
.seq rawBody124_10 rawBody124_95

def rawBody124_97 : StackLang.HolProg 64 :=
.seq rawBody124_9 rawBody124_96

def rawBody124_98 : StackLang.HolProg 64 :=
.seq rawBody124_8 rawBody124_97

def rawBody124_99 : StackLang.HolProg 64 :=
.seq rawBody124_7 rawBody124_98

def rawBody124_100 : StackLang.HolProg 64 :=
.seq rawBody124_6 rawBody124_99

def rawBody124_101 : StackLang.HolProg 64 :=
.seq rawBody124_5 rawBody124_100

def rawBody124_102 : StackLang.HolProg 64 :=
.seq rawBody124_4 rawBody124_101

def rawBody124_103 : StackLang.HolProg 64 :=
.seq rawBody124_3 rawBody124_102

def rawBody124_104 : StackLang.HolProg 64 :=
.seq rawBody124_2 rawBody124_103

def rawBody124_105 : StackLang.HolProg 64 :=
.seq rawBody124_1 rawBody124_104

def rawBody124_106 : StackLang.HolProg 64 :=
.seq rawBody124_0 rawBody124_105

def raw124 : StackLang.HolProg 64 := rawBody124_106
theorem raw124_eq : StackRawCall.compTop RawInfo.rawInfo (function124 (.list [])).1 = raw124 := by
  kernel_rfl
#print axioms raw124_eq
end InitECandidate.Proofs.BackendStages
