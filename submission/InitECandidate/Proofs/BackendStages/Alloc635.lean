import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw635
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody635_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody635_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody635_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody635_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody635_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody635_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody635_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody635_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def AllocBody635_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody635_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody635_20 : StackLang.HolProg 64 :=
.seq AllocBody635_18 AllocBody635_19

def AllocBody635_21 : StackLang.HolProg 64 :=
.seq AllocBody635_17 AllocBody635_20

def AllocBody635_22 : StackLang.HolProg 64 :=
.seq AllocBody635_16 AllocBody635_21

def AllocBody635_23 : StackLang.HolProg 64 :=
.seq AllocBody635_15 AllocBody635_22

def AllocBody635_24 : StackLang.HolProg 64 :=
.seq AllocBody635_14 AllocBody635_23

def AllocBody635_25 : StackLang.HolProg 64 :=
.seq AllocBody635_13 AllocBody635_24

def AllocBody635_26 : StackLang.HolProg 64 :=
.seq AllocBody635_12 AllocBody635_25

def AllocBody635_27 : StackLang.HolProg 64 :=
.seq AllocBody635_11 AllocBody635_26

def AllocBody635_28 : StackLang.HolProg 64 :=
.seq AllocBody635_10 AllocBody635_27

def AllocBody635_29 : StackLang.HolProg 64 :=
.seq AllocBody635_9 AllocBody635_28

def AllocBody635_30 : StackLang.HolProg 64 :=
.seq AllocBody635_8 AllocBody635_29

def AllocBody635_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody635_34 : StackLang.HolProg 64 :=
.seq AllocBody635_32 AllocBody635_33

def AllocBody635_35 : StackLang.HolProg 64 :=
.seq AllocBody635_31 AllocBody635_34

def AllocBody635_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) AllocBody635_30 AllocBody635_35

def AllocBody635_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_39 : StackLang.HolProg 64 :=
.seq AllocBody635_37 AllocBody635_38

def AllocBody635_40 : StackLang.HolProg 64 :=
.seq AllocBody635_36 AllocBody635_39

def AllocBody635_41 : StackLang.HolProg 64 :=
.seq AllocBody635_7 AllocBody635_40

def AllocBody635_42 : StackLang.HolProg 64 :=
.loop AllocBody635_41

def AllocBody635_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def AllocBody635_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def AllocBody635_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def AllocBody635_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def AllocBody635_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody635_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody635_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def AllocBody635_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def AllocBody635_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody635_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody635_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody635_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody635_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def AllocBody635_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody635_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody635_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody635_75 : StackLang.HolProg 64 :=
.seq AllocBody635_73 AllocBody635_74

def AllocBody635_76 : StackLang.HolProg 64 :=
.seq AllocBody635_72 AllocBody635_75

def AllocBody635_77 : StackLang.HolProg 64 :=
.seq AllocBody635_71 AllocBody635_76

def AllocBody635_78 : StackLang.HolProg 64 :=
.seq AllocBody635_70 AllocBody635_77

def AllocBody635_79 : StackLang.HolProg 64 :=
.seq AllocBody635_69 AllocBody635_78

def AllocBody635_80 : StackLang.HolProg 64 :=
.seq AllocBody635_68 AllocBody635_79

def AllocBody635_81 : StackLang.HolProg 64 :=
.seq AllocBody635_67 AllocBody635_80

def AllocBody635_82 : StackLang.HolProg 64 :=
.seq AllocBody635_66 AllocBody635_81

def AllocBody635_83 : StackLang.HolProg 64 :=
.seq AllocBody635_65 AllocBody635_82

def AllocBody635_84 : StackLang.HolProg 64 :=
.seq AllocBody635_64 AllocBody635_83

def AllocBody635_85 : StackLang.HolProg 64 :=
.seq AllocBody635_63 AllocBody635_84

def AllocBody635_86 : StackLang.HolProg 64 :=
.seq AllocBody635_62 AllocBody635_85

def AllocBody635_87 : StackLang.HolProg 64 :=
.seq AllocBody635_61 AllocBody635_86

def AllocBody635_88 : StackLang.HolProg 64 :=
.seq AllocBody635_60 AllocBody635_87

def AllocBody635_89 : StackLang.HolProg 64 :=
.seq AllocBody635_59 AllocBody635_88

def AllocBody635_90 : StackLang.HolProg 64 :=
.seq AllocBody635_58 AllocBody635_89

def AllocBody635_91 : StackLang.HolProg 64 :=
.seq AllocBody635_57 AllocBody635_90

def AllocBody635_92 : StackLang.HolProg 64 :=
.seq AllocBody635_56 AllocBody635_91

def AllocBody635_93 : StackLang.HolProg 64 :=
.seq AllocBody635_55 AllocBody635_92

def AllocBody635_94 : StackLang.HolProg 64 :=
.seq AllocBody635_54 AllocBody635_93

def AllocBody635_95 : StackLang.HolProg 64 :=
.seq AllocBody635_53 AllocBody635_94

def AllocBody635_96 : StackLang.HolProg 64 :=
.seq AllocBody635_52 AllocBody635_95

def AllocBody635_97 : StackLang.HolProg 64 :=
.seq AllocBody635_51 AllocBody635_96

def AllocBody635_98 : StackLang.HolProg 64 :=
.seq AllocBody635_50 AllocBody635_97

def AllocBody635_99 : StackLang.HolProg 64 :=
.seq AllocBody635_49 AllocBody635_98

def AllocBody635_100 : StackLang.HolProg 64 :=
.seq AllocBody635_48 AllocBody635_99

def AllocBody635_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody635_103 : StackLang.HolProg 64 :=
.seq AllocBody635_101 AllocBody635_102

def AllocBody635_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) AllocBody635_100 AllocBody635_103

def AllocBody635_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody635_107 : StackLang.HolProg 64 :=
.seq AllocBody635_105 AllocBody635_106

def AllocBody635_108 : StackLang.HolProg 64 :=
.seq AllocBody635_104 AllocBody635_107

def AllocBody635_109 : StackLang.HolProg 64 :=
.seq AllocBody635_47 AllocBody635_108

def AllocBody635_110 : StackLang.HolProg 64 :=
.loop AllocBody635_109

def AllocBody635_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody635_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody635_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody635_114 : StackLang.HolProg 64 :=
.seq AllocBody635_112 AllocBody635_113

def AllocBody635_115 : StackLang.HolProg 64 :=
.seq AllocBody635_111 AllocBody635_114

def AllocBody635_116 : StackLang.HolProg 64 :=
.seq AllocBody635_110 AllocBody635_115

def AllocBody635_117 : StackLang.HolProg 64 :=
.seq AllocBody635_46 AllocBody635_116

def AllocBody635_118 : StackLang.HolProg 64 :=
.seq AllocBody635_45 AllocBody635_117

def AllocBody635_119 : StackLang.HolProg 64 :=
.seq AllocBody635_44 AllocBody635_118

def AllocBody635_120 : StackLang.HolProg 64 :=
.seq AllocBody635_43 AllocBody635_119

def AllocBody635_121 : StackLang.HolProg 64 :=
.seq AllocBody635_42 AllocBody635_120

def AllocBody635_122 : StackLang.HolProg 64 :=
.seq AllocBody635_6 AllocBody635_121

def AllocBody635_123 : StackLang.HolProg 64 :=
.seq AllocBody635_5 AllocBody635_122

def AllocBody635_124 : StackLang.HolProg 64 :=
.seq AllocBody635_4 AllocBody635_123

def AllocBody635_125 : StackLang.HolProg 64 :=
.seq AllocBody635_3 AllocBody635_124

def AllocBody635_126 : StackLang.HolProg 64 :=
.seq AllocBody635_2 AllocBody635_125

def AllocBody635_127 : StackLang.HolProg 64 :=
.seq AllocBody635_1 AllocBody635_126

def AllocBody635_128 : StackLang.HolProg 64 :=
.seq AllocBody635_0 AllocBody635_127

def Alloc635 : Nat × StackLang.HolProg 64 := (635, AllocBody635_128)
theorem Alloc635_eq : StackAlloc.progComp (635, raw635) = Alloc635 := by
  kernel_rfl
#print axioms Alloc635_eq
end InitECandidate.Proofs.BackendStages
