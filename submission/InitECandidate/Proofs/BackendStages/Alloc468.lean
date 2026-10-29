import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw468
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody468_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody468_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody468_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23#64)

def AllocBody468_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody468_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody468_7 : StackLang.HolProg 64 :=
.seq AllocBody468_5 AllocBody468_6

def AllocBody468_8 : StackLang.HolProg 64 :=
.seq AllocBody468_4 AllocBody468_7

def AllocBody468_9 : StackLang.HolProg 64 :=
.seq AllocBody468_3 AllocBody468_8

def AllocBody468_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) AllocBody468_9 AllocBody468_10

def AllocBody468_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def AllocBody468_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 239#64)

def AllocBody468_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody468_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_21 : StackLang.HolProg 64 :=
.seq AllocBody468_19 AllocBody468_20

def AllocBody468_22 : StackLang.HolProg 64 :=
.seq AllocBody468_18 AllocBody468_21

def AllocBody468_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody468_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_26 : StackLang.HolProg 64 :=
.seq AllocBody468_24 AllocBody468_25

def AllocBody468_27 : StackLang.HolProg 64 :=
.seq AllocBody468_23 AllocBody468_26

def AllocBody468_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody468_22 AllocBody468_27

def AllocBody468_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody468_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody468_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody468_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def AllocBody468_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_38 : StackLang.HolProg 64 :=
.seq AllocBody468_36 AllocBody468_37

def AllocBody468_39 : StackLang.HolProg 64 :=
.seq AllocBody468_35 AllocBody468_38

def AllocBody468_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def AllocBody468_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_43 : StackLang.HolProg 64 :=
.seq AllocBody468_41 AllocBody468_42

def AllocBody468_44 : StackLang.HolProg 64 :=
.seq AllocBody468_40 AllocBody468_43

def AllocBody468_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) AllocBody468_39 AllocBody468_44

def AllocBody468_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody468_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def AllocBody468_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody468_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def AllocBody468_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_55 : StackLang.HolProg 64 :=
.seq AllocBody468_53 AllocBody468_54

def AllocBody468_56 : StackLang.HolProg 64 :=
.seq AllocBody468_52 AllocBody468_55

def AllocBody468_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def AllocBody468_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_60 : StackLang.HolProg 64 :=
.seq AllocBody468_58 AllocBody468_59

def AllocBody468_61 : StackLang.HolProg 64 :=
.seq AllocBody468_57 AllocBody468_60

def AllocBody468_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody468_56 AllocBody468_61

def AllocBody468_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody468_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody468_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def AllocBody468_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody468_71 : StackLang.HolProg 64 :=
.seq AllocBody468_69 AllocBody468_70

def AllocBody468_72 : StackLang.HolProg 64 :=
.seq AllocBody468_68 AllocBody468_71

def AllocBody468_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) AllocBody468_72 AllocBody468_73

def AllocBody468_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody468_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def AllocBody468_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody468_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody468_79 : StackLang.HolProg 64 :=
.seq AllocBody468_77 AllocBody468_78

def AllocBody468_80 : StackLang.HolProg 64 :=
.seq AllocBody468_76 AllocBody468_79

def AllocBody468_81 : StackLang.HolProg 64 :=
.seq AllocBody468_75 AllocBody468_80

def AllocBody468_82 : StackLang.HolProg 64 :=
.seq AllocBody468_74 AllocBody468_81

def AllocBody468_83 : StackLang.HolProg 64 :=
.seq AllocBody468_67 AllocBody468_82

def AllocBody468_84 : StackLang.HolProg 64 :=
.seq AllocBody468_66 AllocBody468_83

def AllocBody468_85 : StackLang.HolProg 64 :=
.seq AllocBody468_65 AllocBody468_84

def AllocBody468_86 : StackLang.HolProg 64 :=
.seq AllocBody468_64 AllocBody468_85

def AllocBody468_87 : StackLang.HolProg 64 :=
.seq AllocBody468_63 AllocBody468_86

def AllocBody468_88 : StackLang.HolProg 64 :=
.seq AllocBody468_62 AllocBody468_87

def AllocBody468_89 : StackLang.HolProg 64 :=
.seq AllocBody468_51 AllocBody468_88

def AllocBody468_90 : StackLang.HolProg 64 :=
.seq AllocBody468_50 AllocBody468_89

def AllocBody468_91 : StackLang.HolProg 64 :=
.seq AllocBody468_49 AllocBody468_90

def AllocBody468_92 : StackLang.HolProg 64 :=
.seq AllocBody468_48 AllocBody468_91

def AllocBody468_93 : StackLang.HolProg 64 :=
.seq AllocBody468_47 AllocBody468_92

def AllocBody468_94 : StackLang.HolProg 64 :=
.seq AllocBody468_46 AllocBody468_93

def AllocBody468_95 : StackLang.HolProg 64 :=
.seq AllocBody468_45 AllocBody468_94

def AllocBody468_96 : StackLang.HolProg 64 :=
.seq AllocBody468_34 AllocBody468_95

def AllocBody468_97 : StackLang.HolProg 64 :=
.seq AllocBody468_33 AllocBody468_96

def AllocBody468_98 : StackLang.HolProg 64 :=
.seq AllocBody468_32 AllocBody468_97

def AllocBody468_99 : StackLang.HolProg 64 :=
.seq AllocBody468_31 AllocBody468_98

def AllocBody468_100 : StackLang.HolProg 64 :=
.seq AllocBody468_30 AllocBody468_99

def AllocBody468_101 : StackLang.HolProg 64 :=
.seq AllocBody468_29 AllocBody468_100

def AllocBody468_102 : StackLang.HolProg 64 :=
.seq AllocBody468_28 AllocBody468_101

def AllocBody468_103 : StackLang.HolProg 64 :=
.seq AllocBody468_17 AllocBody468_102

def AllocBody468_104 : StackLang.HolProg 64 :=
.seq AllocBody468_16 AllocBody468_103

def AllocBody468_105 : StackLang.HolProg 64 :=
.seq AllocBody468_15 AllocBody468_104

def AllocBody468_106 : StackLang.HolProg 64 :=
.seq AllocBody468_14 AllocBody468_105

def AllocBody468_107 : StackLang.HolProg 64 :=
.seq AllocBody468_13 AllocBody468_106

def AllocBody468_108 : StackLang.HolProg 64 :=
.seq AllocBody468_12 AllocBody468_107

def AllocBody468_109 : StackLang.HolProg 64 :=
.seq AllocBody468_11 AllocBody468_108

def AllocBody468_110 : StackLang.HolProg 64 :=
.seq AllocBody468_2 AllocBody468_109

def AllocBody468_111 : StackLang.HolProg 64 :=
.seq AllocBody468_1 AllocBody468_110

def AllocBody468_112 : StackLang.HolProg 64 :=
.seq AllocBody468_0 AllocBody468_111

def Alloc468 : Nat × StackLang.HolProg 64 := (468, AllocBody468_112)
theorem Alloc468_eq : StackAlloc.progComp (468, raw468) = Alloc468 := by
  kernel_rfl
#print axioms Alloc468_eq
end InitECandidate.Proofs.BackendStages
