import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed185
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody185_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def NamedBody185_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody185_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 40#64))

def NamedBody185_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 56#64))

def NamedBody185_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 13 0#64)

def NamedBody185_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 13 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody185_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody185_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 13
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 13 24#64))

def NamedBody185_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody185_22 : StackLang.HolProg 64 :=
.seq NamedBody185_20 NamedBody185_21

def NamedBody185_23 : StackLang.HolProg 64 :=
.seq NamedBody185_19 NamedBody185_22

def NamedBody185_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) NamedBody185_23 NamedBody185_24

def NamedBody185_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody185_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 11)))

def NamedBody185_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def NamedBody185_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 7#64)

def NamedBody185_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody185_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 13 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody185_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 13 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13)))

def NamedBody185_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 13 13
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def NamedBody185_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def NamedBody185_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody185_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody185_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 8#64))

def NamedBody185_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_48 : StackLang.HolProg 64 :=
.seq NamedBody185_46 NamedBody185_47

def NamedBody185_49 : StackLang.HolProg 64 :=
.seq NamedBody185_45 NamedBody185_48

def NamedBody185_50 : StackLang.HolProg 64 :=
.seq NamedBody185_44 NamedBody185_49

def NamedBody185_51 : StackLang.HolProg 64 :=
.seq NamedBody185_43 NamedBody185_50

def NamedBody185_52 : StackLang.HolProg 64 :=
.seq NamedBody185_42 NamedBody185_51

def NamedBody185_53 : StackLang.HolProg 64 :=
.seq NamedBody185_41 NamedBody185_52

def NamedBody185_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def NamedBody185_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 12 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def NamedBody185_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 12 16#64))

def NamedBody185_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_61 : StackLang.HolProg 64 :=
.seq NamedBody185_59 NamedBody185_60

def NamedBody185_62 : StackLang.HolProg 64 :=
.seq NamedBody185_58 NamedBody185_61

def NamedBody185_63 : StackLang.HolProg 64 :=
.seq NamedBody185_57 NamedBody185_62

def NamedBody185_64 : StackLang.HolProg 64 :=
.seq NamedBody185_56 NamedBody185_63

def NamedBody185_65 : StackLang.HolProg 64 :=
.seq NamedBody185_55 NamedBody185_64

def NamedBody185_66 : StackLang.HolProg 64 :=
.seq NamedBody185_54 NamedBody185_65

def NamedBody185_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 13 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) NamedBody185_53 NamedBody185_66

def NamedBody185_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def NamedBody185_71 : StackLang.HolProg 64 :=
.seq NamedBody185_69 NamedBody185_70

def NamedBody185_72 : StackLang.HolProg 64 :=
.seq NamedBody185_68 NamedBody185_71

def NamedBody185_73 : StackLang.HolProg 64 :=
.seq NamedBody185_67 NamedBody185_72

def NamedBody185_74 : StackLang.HolProg 64 :=
.seq NamedBody185_40 NamedBody185_73

def NamedBody185_75 : StackLang.HolProg 64 :=
.seq NamedBody185_39 NamedBody185_74

def NamedBody185_76 : StackLang.HolProg 64 :=
.seq NamedBody185_38 NamedBody185_75

def NamedBody185_77 : StackLang.HolProg 64 :=
.seq NamedBody185_37 NamedBody185_76

def NamedBody185_78 : StackLang.HolProg 64 :=
.seq NamedBody185_36 NamedBody185_77

def NamedBody185_79 : StackLang.HolProg 64 :=
.seq NamedBody185_35 NamedBody185_78

def NamedBody185_80 : StackLang.HolProg 64 :=
.seq NamedBody185_34 NamedBody185_79

def NamedBody185_81 : StackLang.HolProg 64 :=
.seq NamedBody185_33 NamedBody185_80

def NamedBody185_82 : StackLang.HolProg 64 :=
.seq NamedBody185_32 NamedBody185_81

def NamedBody185_83 : StackLang.HolProg 64 :=
.seq NamedBody185_31 NamedBody185_82

def NamedBody185_84 : StackLang.HolProg 64 :=
.seq NamedBody185_30 NamedBody185_83

def NamedBody185_85 : StackLang.HolProg 64 :=
.seq NamedBody185_29 NamedBody185_84

def NamedBody185_86 : StackLang.HolProg 64 :=
.seq NamedBody185_28 NamedBody185_85

def NamedBody185_87 : StackLang.HolProg 64 :=
.seq NamedBody185_27 NamedBody185_86

def NamedBody185_88 : StackLang.HolProg 64 :=
.seq NamedBody185_26 NamedBody185_87

def NamedBody185_89 : StackLang.HolProg 64 :=
.seq NamedBody185_25 NamedBody185_88

def NamedBody185_90 : StackLang.HolProg 64 :=
.seq NamedBody185_18 NamedBody185_89

def NamedBody185_91 : StackLang.HolProg 64 :=
.seq NamedBody185_17 NamedBody185_90

def NamedBody185_92 : StackLang.HolProg 64 :=
.seq NamedBody185_16 NamedBody185_91

def NamedBody185_93 : StackLang.HolProg 64 :=
.seq NamedBody185_15 NamedBody185_92

def NamedBody185_94 : StackLang.HolProg 64 :=
.seq NamedBody185_14 NamedBody185_93

def NamedBody185_95 : StackLang.HolProg 64 :=
.seq NamedBody185_13 NamedBody185_94

def NamedBody185_96 : StackLang.HolProg 64 :=
.seq NamedBody185_12 NamedBody185_95

def NamedBody185_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def NamedBody185_100 : StackLang.HolProg 64 :=
.seq NamedBody185_98 NamedBody185_99

def NamedBody185_101 : StackLang.HolProg 64 :=
.seq NamedBody185_97 NamedBody185_100

def NamedBody185_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 12 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 13) NamedBody185_96 NamedBody185_101

def NamedBody185_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody185_105 : StackLang.HolProg 64 :=
.seq NamedBody185_103 NamedBody185_104

def NamedBody185_106 : StackLang.HolProg 64 :=
.seq NamedBody185_102 NamedBody185_105

def NamedBody185_107 : StackLang.HolProg 64 :=
.seq NamedBody185_11 NamedBody185_106

def NamedBody185_108 : StackLang.HolProg 64 :=
.seq NamedBody185_10 NamedBody185_107

def NamedBody185_109 : StackLang.HolProg 64 :=
.loop NamedBody185_108

def NamedBody185_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody185_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 12
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 12)))

def NamedBody185_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 1

def NamedBody185_113 : StackLang.HolProg 64 :=
.seq NamedBody185_111 NamedBody185_112

def NamedBody185_114 : StackLang.HolProg 64 :=
.seq NamedBody185_110 NamedBody185_113

def NamedBody185_115 : StackLang.HolProg 64 :=
.seq NamedBody185_109 NamedBody185_114

def NamedBody185_116 : StackLang.HolProg 64 :=
.seq NamedBody185_9 NamedBody185_115

def NamedBody185_117 : StackLang.HolProg 64 :=
.seq NamedBody185_8 NamedBody185_116

def NamedBody185_118 : StackLang.HolProg 64 :=
.seq NamedBody185_7 NamedBody185_117

def NamedBody185_119 : StackLang.HolProg 64 :=
.seq NamedBody185_6 NamedBody185_118

def NamedBody185_120 : StackLang.HolProg 64 :=
.seq NamedBody185_5 NamedBody185_119

def NamedBody185_121 : StackLang.HolProg 64 :=
.seq NamedBody185_4 NamedBody185_120

def NamedBody185_122 : StackLang.HolProg 64 :=
.seq NamedBody185_3 NamedBody185_121

def NamedBody185_123 : StackLang.HolProg 64 :=
.seq NamedBody185_2 NamedBody185_122

def NamedBody185_124 : StackLang.HolProg 64 :=
.seq NamedBody185_1 NamedBody185_123

def NamedBody185_125 : StackLang.HolProg 64 :=
.seq NamedBody185_0 NamedBody185_124

def Named185 : Nat × StackLang.HolProg 64 := (185, NamedBody185_125)
theorem Named185_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed185 = Named185 := by
  kernel_rfl
#print axioms Named185_eq
end InitECandidate.Proofs.BackendStages
