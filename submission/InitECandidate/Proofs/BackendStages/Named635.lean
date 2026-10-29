import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed635
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody635_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody635_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody635_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody635_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody635_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody635_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody635_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def NamedBody635_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody635_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody635_20 : StackLang.HolProg 64 :=
.seq NamedBody635_18 NamedBody635_19

def NamedBody635_21 : StackLang.HolProg 64 :=
.seq NamedBody635_17 NamedBody635_20

def NamedBody635_22 : StackLang.HolProg 64 :=
.seq NamedBody635_16 NamedBody635_21

def NamedBody635_23 : StackLang.HolProg 64 :=
.seq NamedBody635_15 NamedBody635_22

def NamedBody635_24 : StackLang.HolProg 64 :=
.seq NamedBody635_14 NamedBody635_23

def NamedBody635_25 : StackLang.HolProg 64 :=
.seq NamedBody635_13 NamedBody635_24

def NamedBody635_26 : StackLang.HolProg 64 :=
.seq NamedBody635_12 NamedBody635_25

def NamedBody635_27 : StackLang.HolProg 64 :=
.seq NamedBody635_11 NamedBody635_26

def NamedBody635_28 : StackLang.HolProg 64 :=
.seq NamedBody635_10 NamedBody635_27

def NamedBody635_29 : StackLang.HolProg 64 :=
.seq NamedBody635_9 NamedBody635_28

def NamedBody635_30 : StackLang.HolProg 64 :=
.seq NamedBody635_8 NamedBody635_29

def NamedBody635_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody635_34 : StackLang.HolProg 64 :=
.seq NamedBody635_32 NamedBody635_33

def NamedBody635_35 : StackLang.HolProg 64 :=
.seq NamedBody635_31 NamedBody635_34

def NamedBody635_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) NamedBody635_30 NamedBody635_35

def NamedBody635_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_39 : StackLang.HolProg 64 :=
.seq NamedBody635_37 NamedBody635_38

def NamedBody635_40 : StackLang.HolProg 64 :=
.seq NamedBody635_36 NamedBody635_39

def NamedBody635_41 : StackLang.HolProg 64 :=
.seq NamedBody635_7 NamedBody635_40

def NamedBody635_42 : StackLang.HolProg 64 :=
.loop NamedBody635_41

def NamedBody635_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def NamedBody635_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 11
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def NamedBody635_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def NamedBody635_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def NamedBody635_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody635_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody635_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody635_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def NamedBody635_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody635_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody635_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody635_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody635_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def NamedBody635_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody635_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody635_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody635_75 : StackLang.HolProg 64 :=
.seq NamedBody635_73 NamedBody635_74

def NamedBody635_76 : StackLang.HolProg 64 :=
.seq NamedBody635_72 NamedBody635_75

def NamedBody635_77 : StackLang.HolProg 64 :=
.seq NamedBody635_71 NamedBody635_76

def NamedBody635_78 : StackLang.HolProg 64 :=
.seq NamedBody635_70 NamedBody635_77

def NamedBody635_79 : StackLang.HolProg 64 :=
.seq NamedBody635_69 NamedBody635_78

def NamedBody635_80 : StackLang.HolProg 64 :=
.seq NamedBody635_68 NamedBody635_79

def NamedBody635_81 : StackLang.HolProg 64 :=
.seq NamedBody635_67 NamedBody635_80

def NamedBody635_82 : StackLang.HolProg 64 :=
.seq NamedBody635_66 NamedBody635_81

def NamedBody635_83 : StackLang.HolProg 64 :=
.seq NamedBody635_65 NamedBody635_82

def NamedBody635_84 : StackLang.HolProg 64 :=
.seq NamedBody635_64 NamedBody635_83

def NamedBody635_85 : StackLang.HolProg 64 :=
.seq NamedBody635_63 NamedBody635_84

def NamedBody635_86 : StackLang.HolProg 64 :=
.seq NamedBody635_62 NamedBody635_85

def NamedBody635_87 : StackLang.HolProg 64 :=
.seq NamedBody635_61 NamedBody635_86

def NamedBody635_88 : StackLang.HolProg 64 :=
.seq NamedBody635_60 NamedBody635_87

def NamedBody635_89 : StackLang.HolProg 64 :=
.seq NamedBody635_59 NamedBody635_88

def NamedBody635_90 : StackLang.HolProg 64 :=
.seq NamedBody635_58 NamedBody635_89

def NamedBody635_91 : StackLang.HolProg 64 :=
.seq NamedBody635_57 NamedBody635_90

def NamedBody635_92 : StackLang.HolProg 64 :=
.seq NamedBody635_56 NamedBody635_91

def NamedBody635_93 : StackLang.HolProg 64 :=
.seq NamedBody635_55 NamedBody635_92

def NamedBody635_94 : StackLang.HolProg 64 :=
.seq NamedBody635_54 NamedBody635_93

def NamedBody635_95 : StackLang.HolProg 64 :=
.seq NamedBody635_53 NamedBody635_94

def NamedBody635_96 : StackLang.HolProg 64 :=
.seq NamedBody635_52 NamedBody635_95

def NamedBody635_97 : StackLang.HolProg 64 :=
.seq NamedBody635_51 NamedBody635_96

def NamedBody635_98 : StackLang.HolProg 64 :=
.seq NamedBody635_50 NamedBody635_97

def NamedBody635_99 : StackLang.HolProg 64 :=
.seq NamedBody635_49 NamedBody635_98

def NamedBody635_100 : StackLang.HolProg 64 :=
.seq NamedBody635_48 NamedBody635_99

def NamedBody635_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody635_103 : StackLang.HolProg 64 :=
.seq NamedBody635_101 NamedBody635_102

def NamedBody635_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11) NamedBody635_100 NamedBody635_103

def NamedBody635_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody635_107 : StackLang.HolProg 64 :=
.seq NamedBody635_105 NamedBody635_106

def NamedBody635_108 : StackLang.HolProg 64 :=
.seq NamedBody635_104 NamedBody635_107

def NamedBody635_109 : StackLang.HolProg 64 :=
.seq NamedBody635_47 NamedBody635_108

def NamedBody635_110 : StackLang.HolProg 64 :=
.loop NamedBody635_109

def NamedBody635_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody635_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody635_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody635_114 : StackLang.HolProg 64 :=
.seq NamedBody635_112 NamedBody635_113

def NamedBody635_115 : StackLang.HolProg 64 :=
.seq NamedBody635_111 NamedBody635_114

def NamedBody635_116 : StackLang.HolProg 64 :=
.seq NamedBody635_110 NamedBody635_115

def NamedBody635_117 : StackLang.HolProg 64 :=
.seq NamedBody635_46 NamedBody635_116

def NamedBody635_118 : StackLang.HolProg 64 :=
.seq NamedBody635_45 NamedBody635_117

def NamedBody635_119 : StackLang.HolProg 64 :=
.seq NamedBody635_44 NamedBody635_118

def NamedBody635_120 : StackLang.HolProg 64 :=
.seq NamedBody635_43 NamedBody635_119

def NamedBody635_121 : StackLang.HolProg 64 :=
.seq NamedBody635_42 NamedBody635_120

def NamedBody635_122 : StackLang.HolProg 64 :=
.seq NamedBody635_6 NamedBody635_121

def NamedBody635_123 : StackLang.HolProg 64 :=
.seq NamedBody635_5 NamedBody635_122

def NamedBody635_124 : StackLang.HolProg 64 :=
.seq NamedBody635_4 NamedBody635_123

def NamedBody635_125 : StackLang.HolProg 64 :=
.seq NamedBody635_3 NamedBody635_124

def NamedBody635_126 : StackLang.HolProg 64 :=
.seq NamedBody635_2 NamedBody635_125

def NamedBody635_127 : StackLang.HolProg 64 :=
.seq NamedBody635_1 NamedBody635_126

def NamedBody635_128 : StackLang.HolProg 64 :=
.seq NamedBody635_0 NamedBody635_127

def Named635 : Nat × StackLang.HolProg 64 := (635, NamedBody635_128)
theorem Named635_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed635 = Named635 := by
  kernel_rfl
#print axioms Named635_eq
end InitECandidate.Proofs.BackendStages
