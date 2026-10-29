import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed290
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody290_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 5 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody290_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody290_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 7 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody290_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 0#64)

def NamedBody290_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody290_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody290_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_12 : StackLang.HolProg 64 :=
.seq NamedBody290_10 NamedBody290_11

def NamedBody290_13 : StackLang.HolProg 64 :=
.seq NamedBody290_9 NamedBody290_12

def NamedBody290_14 : StackLang.HolProg 64 :=
.seq NamedBody290_8 NamedBody290_13

def NamedBody290_15 : StackLang.HolProg 64 :=
.seq NamedBody290_7 NamedBody290_14

def NamedBody290_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody290_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody290_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody290_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody290_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 0#64))

def NamedBody290_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 1#64)

def NamedBody290_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_26 : StackLang.HolProg 64 :=
.seq NamedBody290_24 NamedBody290_25

def NamedBody290_27 : StackLang.HolProg 64 :=
.seq NamedBody290_23 NamedBody290_26

def NamedBody290_28 : StackLang.HolProg 64 :=
.seq NamedBody290_22 NamedBody290_27

def NamedBody290_29 : StackLang.HolProg 64 :=
.seq NamedBody290_21 NamedBody290_28

def NamedBody290_30 : StackLang.HolProg 64 :=
.seq NamedBody290_20 NamedBody290_29

def NamedBody290_31 : StackLang.HolProg 64 :=
.seq NamedBody290_19 NamedBody290_30

def NamedBody290_32 : StackLang.HolProg 64 :=
.seq NamedBody290_18 NamedBody290_31

def NamedBody290_33 : StackLang.HolProg 64 :=
.seq NamedBody290_17 NamedBody290_32

def NamedBody290_34 : StackLang.HolProg 64 :=
.seq NamedBody290_16 NamedBody290_33

def NamedBody290_35 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 7 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8) NamedBody290_15 NamedBody290_34

def NamedBody290_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 1#64)

def NamedBody290_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody290_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody290_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody290_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody290_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 27 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody290_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 8 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def NamedBody290_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody290_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 27 0#64))

def NamedBody290_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody290_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 9 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody290_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody290_60 : StackLang.HolProg 64 :=
.seq NamedBody290_58 NamedBody290_59

def NamedBody290_61 : StackLang.HolProg 64 :=
.seq NamedBody290_57 NamedBody290_60

def NamedBody290_62 : StackLang.HolProg 64 :=
.seq NamedBody290_56 NamedBody290_61

def NamedBody290_63 : StackLang.HolProg 64 :=
.seq NamedBody290_55 NamedBody290_62

def NamedBody290_64 : StackLang.HolProg 64 :=
.seq NamedBody290_54 NamedBody290_63

def NamedBody290_65 : StackLang.HolProg 64 :=
.seq NamedBody290_53 NamedBody290_64

def NamedBody290_66 : StackLang.HolProg 64 :=
.seq NamedBody290_52 NamedBody290_65

def NamedBody290_67 : StackLang.HolProg 64 :=
.seq NamedBody290_51 NamedBody290_66

def NamedBody290_68 : StackLang.HolProg 64 :=
.seq NamedBody290_50 NamedBody290_67

def NamedBody290_69 : StackLang.HolProg 64 :=
.seq NamedBody290_49 NamedBody290_68

def NamedBody290_70 : StackLang.HolProg 64 :=
.seq NamedBody290_48 NamedBody290_69

def NamedBody290_71 : StackLang.HolProg 64 :=
.seq NamedBody290_47 NamedBody290_70

def NamedBody290_72 : StackLang.HolProg 64 :=
.seq NamedBody290_46 NamedBody290_71

def NamedBody290_73 : StackLang.HolProg 64 :=
.seq NamedBody290_45 NamedBody290_72

def NamedBody290_74 : StackLang.HolProg 64 :=
.seq NamedBody290_44 NamedBody290_73

def NamedBody290_75 : StackLang.HolProg 64 :=
.seq NamedBody290_43 NamedBody290_74

def NamedBody290_76 : StackLang.HolProg 64 :=
.seq NamedBody290_42 NamedBody290_75

def NamedBody290_77 : StackLang.HolProg 64 :=
.seq NamedBody290_41 NamedBody290_76

def NamedBody290_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody290_80 : StackLang.HolProg 64 :=
.seq NamedBody290_78 NamedBody290_79

def NamedBody290_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody290_77 NamedBody290_80

def NamedBody290_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody290_84 : StackLang.HolProg 64 :=
.seq NamedBody290_82 NamedBody290_83

def NamedBody290_85 : StackLang.HolProg 64 :=
.seq NamedBody290_81 NamedBody290_84

def NamedBody290_86 : StackLang.HolProg 64 :=
.seq NamedBody290_40 NamedBody290_85

def NamedBody290_87 : StackLang.HolProg 64 :=
.loop NamedBody290_86

def NamedBody290_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody290_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 9
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 9)))

def NamedBody290_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody290_91 : StackLang.HolProg 64 :=
.seq NamedBody290_89 NamedBody290_90

def NamedBody290_92 : StackLang.HolProg 64 :=
.seq NamedBody290_88 NamedBody290_91

def NamedBody290_93 : StackLang.HolProg 64 :=
.seq NamedBody290_87 NamedBody290_92

def NamedBody290_94 : StackLang.HolProg 64 :=
.seq NamedBody290_39 NamedBody290_93

def NamedBody290_95 : StackLang.HolProg 64 :=
.seq NamedBody290_38 NamedBody290_94

def NamedBody290_96 : StackLang.HolProg 64 :=
.seq NamedBody290_37 NamedBody290_95

def NamedBody290_97 : StackLang.HolProg 64 :=
.seq NamedBody290_36 NamedBody290_96

def NamedBody290_98 : StackLang.HolProg 64 :=
.seq NamedBody290_35 NamedBody290_97

def NamedBody290_99 : StackLang.HolProg 64 :=
.seq NamedBody290_6 NamedBody290_98

def NamedBody290_100 : StackLang.HolProg 64 :=
.seq NamedBody290_5 NamedBody290_99

def NamedBody290_101 : StackLang.HolProg 64 :=
.seq NamedBody290_4 NamedBody290_100

def NamedBody290_102 : StackLang.HolProg 64 :=
.seq NamedBody290_3 NamedBody290_101

def NamedBody290_103 : StackLang.HolProg 64 :=
.seq NamedBody290_2 NamedBody290_102

def NamedBody290_104 : StackLang.HolProg 64 :=
.seq NamedBody290_1 NamedBody290_103

def NamedBody290_105 : StackLang.HolProg 64 :=
.seq NamedBody290_0 NamedBody290_104

def Named290 : Nat × StackLang.HolProg 64 := (290, NamedBody290_105)
theorem Named290_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed290 = Named290 := by
  kernel_rfl
#print axioms Named290_eq
end InitECandidate.Proofs.BackendStages
