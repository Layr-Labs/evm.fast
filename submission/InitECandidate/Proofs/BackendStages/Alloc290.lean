import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw290
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody290_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody290_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody290_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody290_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody290_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def AllocBody290_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody290_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody290_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_12 : StackLang.HolProg 64 :=
.seq AllocBody290_10 AllocBody290_11

def AllocBody290_13 : StackLang.HolProg 64 :=
.seq AllocBody290_9 AllocBody290_12

def AllocBody290_14 : StackLang.HolProg 64 :=
.seq AllocBody290_8 AllocBody290_13

def AllocBody290_15 : StackLang.HolProg 64 :=
.seq AllocBody290_7 AllocBody290_14

def AllocBody290_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody290_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody290_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody290_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def AllocBody290_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody290_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def AllocBody290_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_26 : StackLang.HolProg 64 :=
.seq AllocBody290_24 AllocBody290_25

def AllocBody290_27 : StackLang.HolProg 64 :=
.seq AllocBody290_23 AllocBody290_26

def AllocBody290_28 : StackLang.HolProg 64 :=
.seq AllocBody290_22 AllocBody290_27

def AllocBody290_29 : StackLang.HolProg 64 :=
.seq AllocBody290_21 AllocBody290_28

def AllocBody290_30 : StackLang.HolProg 64 :=
.seq AllocBody290_20 AllocBody290_29

def AllocBody290_31 : StackLang.HolProg 64 :=
.seq AllocBody290_19 AllocBody290_30

def AllocBody290_32 : StackLang.HolProg 64 :=
.seq AllocBody290_18 AllocBody290_31

def AllocBody290_33 : StackLang.HolProg 64 :=
.seq AllocBody290_17 AllocBody290_32

def AllocBody290_34 : StackLang.HolProg 64 :=
.seq AllocBody290_16 AllocBody290_33

def AllocBody290_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) AllocBody290_15 AllocBody290_34

def AllocBody290_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def AllocBody290_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody290_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody290_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody290_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody290_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody290_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def AllocBody290_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody290_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def AllocBody290_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody290_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody290_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody290_60 : StackLang.HolProg 64 :=
.seq AllocBody290_58 AllocBody290_59

def AllocBody290_61 : StackLang.HolProg 64 :=
.seq AllocBody290_57 AllocBody290_60

def AllocBody290_62 : StackLang.HolProg 64 :=
.seq AllocBody290_56 AllocBody290_61

def AllocBody290_63 : StackLang.HolProg 64 :=
.seq AllocBody290_55 AllocBody290_62

def AllocBody290_64 : StackLang.HolProg 64 :=
.seq AllocBody290_54 AllocBody290_63

def AllocBody290_65 : StackLang.HolProg 64 :=
.seq AllocBody290_53 AllocBody290_64

def AllocBody290_66 : StackLang.HolProg 64 :=
.seq AllocBody290_52 AllocBody290_65

def AllocBody290_67 : StackLang.HolProg 64 :=
.seq AllocBody290_51 AllocBody290_66

def AllocBody290_68 : StackLang.HolProg 64 :=
.seq AllocBody290_50 AllocBody290_67

def AllocBody290_69 : StackLang.HolProg 64 :=
.seq AllocBody290_49 AllocBody290_68

def AllocBody290_70 : StackLang.HolProg 64 :=
.seq AllocBody290_48 AllocBody290_69

def AllocBody290_71 : StackLang.HolProg 64 :=
.seq AllocBody290_47 AllocBody290_70

def AllocBody290_72 : StackLang.HolProg 64 :=
.seq AllocBody290_46 AllocBody290_71

def AllocBody290_73 : StackLang.HolProg 64 :=
.seq AllocBody290_45 AllocBody290_72

def AllocBody290_74 : StackLang.HolProg 64 :=
.seq AllocBody290_44 AllocBody290_73

def AllocBody290_75 : StackLang.HolProg 64 :=
.seq AllocBody290_43 AllocBody290_74

def AllocBody290_76 : StackLang.HolProg 64 :=
.seq AllocBody290_42 AllocBody290_75

def AllocBody290_77 : StackLang.HolProg 64 :=
.seq AllocBody290_41 AllocBody290_76

def AllocBody290_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody290_80 : StackLang.HolProg 64 :=
.seq AllocBody290_78 AllocBody290_79

def AllocBody290_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody290_77 AllocBody290_80

def AllocBody290_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody290_84 : StackLang.HolProg 64 :=
.seq AllocBody290_82 AllocBody290_83

def AllocBody290_85 : StackLang.HolProg 64 :=
.seq AllocBody290_81 AllocBody290_84

def AllocBody290_86 : StackLang.HolProg 64 :=
.seq AllocBody290_40 AllocBody290_85

def AllocBody290_87 : StackLang.HolProg 64 :=
.loop AllocBody290_86

def AllocBody290_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody290_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def AllocBody290_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody290_91 : StackLang.HolProg 64 :=
.seq AllocBody290_89 AllocBody290_90

def AllocBody290_92 : StackLang.HolProg 64 :=
.seq AllocBody290_88 AllocBody290_91

def AllocBody290_93 : StackLang.HolProg 64 :=
.seq AllocBody290_87 AllocBody290_92

def AllocBody290_94 : StackLang.HolProg 64 :=
.seq AllocBody290_39 AllocBody290_93

def AllocBody290_95 : StackLang.HolProg 64 :=
.seq AllocBody290_38 AllocBody290_94

def AllocBody290_96 : StackLang.HolProg 64 :=
.seq AllocBody290_37 AllocBody290_95

def AllocBody290_97 : StackLang.HolProg 64 :=
.seq AllocBody290_36 AllocBody290_96

def AllocBody290_98 : StackLang.HolProg 64 :=
.seq AllocBody290_35 AllocBody290_97

def AllocBody290_99 : StackLang.HolProg 64 :=
.seq AllocBody290_6 AllocBody290_98

def AllocBody290_100 : StackLang.HolProg 64 :=
.seq AllocBody290_5 AllocBody290_99

def AllocBody290_101 : StackLang.HolProg 64 :=
.seq AllocBody290_4 AllocBody290_100

def AllocBody290_102 : StackLang.HolProg 64 :=
.seq AllocBody290_3 AllocBody290_101

def AllocBody290_103 : StackLang.HolProg 64 :=
.seq AllocBody290_2 AllocBody290_102

def AllocBody290_104 : StackLang.HolProg 64 :=
.seq AllocBody290_1 AllocBody290_103

def AllocBody290_105 : StackLang.HolProg 64 :=
.seq AllocBody290_0 AllocBody290_104

def Alloc290 : Nat × StackLang.HolProg 64 := (290, AllocBody290_105)
theorem Alloc290_eq : StackAlloc.progComp (290, raw290) = Alloc290 := by
  kernel_rfl
#print axioms Alloc290_eq
end InitECandidate.Proofs.BackendStages
