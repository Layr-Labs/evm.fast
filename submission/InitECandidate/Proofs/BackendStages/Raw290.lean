import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Function290
import InitECandidate.Proofs.BackendStages.RawInfoData
import Flapjack.Compiler.Backend.StackRawCall
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend
namespace InitECandidate.Proofs.BackendStages
def rawBody290_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def rawBody290_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody290_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def rawBody290_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody290_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def rawBody290_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody290_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody290_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_12 : StackLang.HolProg 64 :=
.seq rawBody290_10 rawBody290_11

def rawBody290_13 : StackLang.HolProg 64 :=
.seq rawBody290_9 rawBody290_12

def rawBody290_14 : StackLang.HolProg 64 :=
.seq rawBody290_8 rawBody290_13

def rawBody290_15 : StackLang.HolProg 64 :=
.seq rawBody290_7 rawBody290_14

def rawBody290_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def rawBody290_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody290_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody290_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def rawBody290_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def rawBody290_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def rawBody290_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_26 : StackLang.HolProg 64 :=
.seq rawBody290_24 rawBody290_25

def rawBody290_27 : StackLang.HolProg 64 :=
.seq rawBody290_23 rawBody290_26

def rawBody290_28 : StackLang.HolProg 64 :=
.seq rawBody290_22 rawBody290_27

def rawBody290_29 : StackLang.HolProg 64 :=
.seq rawBody290_21 rawBody290_28

def rawBody290_30 : StackLang.HolProg 64 :=
.seq rawBody290_20 rawBody290_29

def rawBody290_31 : StackLang.HolProg 64 :=
.seq rawBody290_19 rawBody290_30

def rawBody290_32 : StackLang.HolProg 64 :=
.seq rawBody290_18 rawBody290_31

def rawBody290_33 : StackLang.HolProg 64 :=
.seq rawBody290_17 rawBody290_32

def rawBody290_34 : StackLang.HolProg 64 :=
.seq rawBody290_16 rawBody290_33

def rawBody290_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) rawBody290_15 rawBody290_34

def rawBody290_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def rawBody290_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def rawBody290_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody290_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody290_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def rawBody290_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def rawBody290_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def rawBody290_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def rawBody290_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def rawBody290_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def rawBody290_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def rawBody290_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def rawBody290_60 : StackLang.HolProg 64 :=
.seq rawBody290_58 rawBody290_59

def rawBody290_61 : StackLang.HolProg 64 :=
.seq rawBody290_57 rawBody290_60

def rawBody290_62 : StackLang.HolProg 64 :=
.seq rawBody290_56 rawBody290_61

def rawBody290_63 : StackLang.HolProg 64 :=
.seq rawBody290_55 rawBody290_62

def rawBody290_64 : StackLang.HolProg 64 :=
.seq rawBody290_54 rawBody290_63

def rawBody290_65 : StackLang.HolProg 64 :=
.seq rawBody290_53 rawBody290_64

def rawBody290_66 : StackLang.HolProg 64 :=
.seq rawBody290_52 rawBody290_65

def rawBody290_67 : StackLang.HolProg 64 :=
.seq rawBody290_51 rawBody290_66

def rawBody290_68 : StackLang.HolProg 64 :=
.seq rawBody290_50 rawBody290_67

def rawBody290_69 : StackLang.HolProg 64 :=
.seq rawBody290_49 rawBody290_68

def rawBody290_70 : StackLang.HolProg 64 :=
.seq rawBody290_48 rawBody290_69

def rawBody290_71 : StackLang.HolProg 64 :=
.seq rawBody290_47 rawBody290_70

def rawBody290_72 : StackLang.HolProg 64 :=
.seq rawBody290_46 rawBody290_71

def rawBody290_73 : StackLang.HolProg 64 :=
.seq rawBody290_45 rawBody290_72

def rawBody290_74 : StackLang.HolProg 64 :=
.seq rawBody290_44 rawBody290_73

def rawBody290_75 : StackLang.HolProg 64 :=
.seq rawBody290_43 rawBody290_74

def rawBody290_76 : StackLang.HolProg 64 :=
.seq rawBody290_42 rawBody290_75

def rawBody290_77 : StackLang.HolProg 64 :=
.seq rawBody290_41 rawBody290_76

def rawBody290_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def rawBody290_80 : StackLang.HolProg 64 :=
.seq rawBody290_78 rawBody290_79

def rawBody290_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) rawBody290_77 rawBody290_80

def rawBody290_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def rawBody290_84 : StackLang.HolProg 64 :=
.seq rawBody290_82 rawBody290_83

def rawBody290_85 : StackLang.HolProg 64 :=
.seq rawBody290_81 rawBody290_84

def rawBody290_86 : StackLang.HolProg 64 :=
.seq rawBody290_40 rawBody290_85

def rawBody290_87 : StackLang.HolProg 64 :=
.loop rawBody290_86

def rawBody290_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def rawBody290_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def rawBody290_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def rawBody290_91 : StackLang.HolProg 64 :=
.seq rawBody290_89 rawBody290_90

def rawBody290_92 : StackLang.HolProg 64 :=
.seq rawBody290_88 rawBody290_91

def rawBody290_93 : StackLang.HolProg 64 :=
.seq rawBody290_87 rawBody290_92

def rawBody290_94 : StackLang.HolProg 64 :=
.seq rawBody290_39 rawBody290_93

def rawBody290_95 : StackLang.HolProg 64 :=
.seq rawBody290_38 rawBody290_94

def rawBody290_96 : StackLang.HolProg 64 :=
.seq rawBody290_37 rawBody290_95

def rawBody290_97 : StackLang.HolProg 64 :=
.seq rawBody290_36 rawBody290_96

def rawBody290_98 : StackLang.HolProg 64 :=
.seq rawBody290_35 rawBody290_97

def rawBody290_99 : StackLang.HolProg 64 :=
.seq rawBody290_6 rawBody290_98

def rawBody290_100 : StackLang.HolProg 64 :=
.seq rawBody290_5 rawBody290_99

def rawBody290_101 : StackLang.HolProg 64 :=
.seq rawBody290_4 rawBody290_100

def rawBody290_102 : StackLang.HolProg 64 :=
.seq rawBody290_3 rawBody290_101

def rawBody290_103 : StackLang.HolProg 64 :=
.seq rawBody290_2 rawBody290_102

def rawBody290_104 : StackLang.HolProg 64 :=
.seq rawBody290_1 rawBody290_103

def rawBody290_105 : StackLang.HolProg 64 :=
.seq rawBody290_0 rawBody290_104

def raw290 : StackLang.HolProg 64 := rawBody290_105
theorem raw290_eq : StackRawCall.compTop RawInfo.rawInfo (function290 (.list [])).1 = raw290 := by
  kernel_rfl
#print axioms raw290_eq
end InitECandidate.Proofs.BackendStages
