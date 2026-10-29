import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Raw185
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def AllocBody185_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.stackAlloc 0

def AllocBody185_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def AllocBody185_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody185_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def AllocBody185_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def AllocBody185_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def AllocBody185_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody185_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody185_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def AllocBody185_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody185_22 : StackLang.HolProg 64 :=
.seq AllocBody185_20 AllocBody185_21

def AllocBody185_23 : StackLang.HolProg 64 :=
.seq AllocBody185_19 AllocBody185_22

def AllocBody185_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) AllocBody185_23 AllocBody185_24

def AllocBody185_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def AllocBody185_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def AllocBody185_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def AllocBody185_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 7#64)

def AllocBody185_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def AllocBody185_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody185_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def AllocBody185_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def AllocBody185_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def AllocBody185_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody185_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody185_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def AllocBody185_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_48 : StackLang.HolProg 64 :=
.seq AllocBody185_46 AllocBody185_47

def AllocBody185_49 : StackLang.HolProg 64 :=
.seq AllocBody185_45 AllocBody185_48

def AllocBody185_50 : StackLang.HolProg 64 :=
.seq AllocBody185_44 AllocBody185_49

def AllocBody185_51 : StackLang.HolProg 64 :=
.seq AllocBody185_43 AllocBody185_50

def AllocBody185_52 : StackLang.HolProg 64 :=
.seq AllocBody185_42 AllocBody185_51

def AllocBody185_53 : StackLang.HolProg 64 :=
.seq AllocBody185_41 AllocBody185_52

def AllocBody185_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def AllocBody185_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def AllocBody185_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def AllocBody185_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_61 : StackLang.HolProg 64 :=
.seq AllocBody185_59 AllocBody185_60

def AllocBody185_62 : StackLang.HolProg 64 :=
.seq AllocBody185_58 AllocBody185_61

def AllocBody185_63 : StackLang.HolProg 64 :=
.seq AllocBody185_57 AllocBody185_62

def AllocBody185_64 : StackLang.HolProg 64 :=
.seq AllocBody185_56 AllocBody185_63

def AllocBody185_65 : StackLang.HolProg 64 :=
.seq AllocBody185_55 AllocBody185_64

def AllocBody185_66 : StackLang.HolProg 64 :=
.seq AllocBody185_54 AllocBody185_65

def AllocBody185_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) AllocBody185_53 AllocBody185_66

def AllocBody185_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def AllocBody185_71 : StackLang.HolProg 64 :=
.seq AllocBody185_69 AllocBody185_70

def AllocBody185_72 : StackLang.HolProg 64 :=
.seq AllocBody185_68 AllocBody185_71

def AllocBody185_73 : StackLang.HolProg 64 :=
.seq AllocBody185_67 AllocBody185_72

def AllocBody185_74 : StackLang.HolProg 64 :=
.seq AllocBody185_40 AllocBody185_73

def AllocBody185_75 : StackLang.HolProg 64 :=
.seq AllocBody185_39 AllocBody185_74

def AllocBody185_76 : StackLang.HolProg 64 :=
.seq AllocBody185_38 AllocBody185_75

def AllocBody185_77 : StackLang.HolProg 64 :=
.seq AllocBody185_37 AllocBody185_76

def AllocBody185_78 : StackLang.HolProg 64 :=
.seq AllocBody185_36 AllocBody185_77

def AllocBody185_79 : StackLang.HolProg 64 :=
.seq AllocBody185_35 AllocBody185_78

def AllocBody185_80 : StackLang.HolProg 64 :=
.seq AllocBody185_34 AllocBody185_79

def AllocBody185_81 : StackLang.HolProg 64 :=
.seq AllocBody185_33 AllocBody185_80

def AllocBody185_82 : StackLang.HolProg 64 :=
.seq AllocBody185_32 AllocBody185_81

def AllocBody185_83 : StackLang.HolProg 64 :=
.seq AllocBody185_31 AllocBody185_82

def AllocBody185_84 : StackLang.HolProg 64 :=
.seq AllocBody185_30 AllocBody185_83

def AllocBody185_85 : StackLang.HolProg 64 :=
.seq AllocBody185_29 AllocBody185_84

def AllocBody185_86 : StackLang.HolProg 64 :=
.seq AllocBody185_28 AllocBody185_85

def AllocBody185_87 : StackLang.HolProg 64 :=
.seq AllocBody185_27 AllocBody185_86

def AllocBody185_88 : StackLang.HolProg 64 :=
.seq AllocBody185_26 AllocBody185_87

def AllocBody185_89 : StackLang.HolProg 64 :=
.seq AllocBody185_25 AllocBody185_88

def AllocBody185_90 : StackLang.HolProg 64 :=
.seq AllocBody185_18 AllocBody185_89

def AllocBody185_91 : StackLang.HolProg 64 :=
.seq AllocBody185_17 AllocBody185_90

def AllocBody185_92 : StackLang.HolProg 64 :=
.seq AllocBody185_16 AllocBody185_91

def AllocBody185_93 : StackLang.HolProg 64 :=
.seq AllocBody185_15 AllocBody185_92

def AllocBody185_94 : StackLang.HolProg 64 :=
.seq AllocBody185_14 AllocBody185_93

def AllocBody185_95 : StackLang.HolProg 64 :=
.seq AllocBody185_13 AllocBody185_94

def AllocBody185_96 : StackLang.HolProg 64 :=
.seq AllocBody185_12 AllocBody185_95

def AllocBody185_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def AllocBody185_100 : StackLang.HolProg 64 :=
.seq AllocBody185_98 AllocBody185_99

def AllocBody185_101 : StackLang.HolProg 64 :=
.seq AllocBody185_97 AllocBody185_100

def AllocBody185_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) AllocBody185_96 AllocBody185_101

def AllocBody185_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def AllocBody185_105 : StackLang.HolProg 64 :=
.seq AllocBody185_103 AllocBody185_104

def AllocBody185_106 : StackLang.HolProg 64 :=
.seq AllocBody185_102 AllocBody185_105

def AllocBody185_107 : StackLang.HolProg 64 :=
.seq AllocBody185_11 AllocBody185_106

def AllocBody185_108 : StackLang.HolProg 64 :=
.seq AllocBody185_10 AllocBody185_107

def AllocBody185_109 : StackLang.HolProg 64 :=
.loop AllocBody185_108

def AllocBody185_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def AllocBody185_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def AllocBody185_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def AllocBody185_113 : StackLang.HolProg 64 :=
.seq AllocBody185_111 AllocBody185_112

def AllocBody185_114 : StackLang.HolProg 64 :=
.seq AllocBody185_110 AllocBody185_113

def AllocBody185_115 : StackLang.HolProg 64 :=
.seq AllocBody185_109 AllocBody185_114

def AllocBody185_116 : StackLang.HolProg 64 :=
.seq AllocBody185_9 AllocBody185_115

def AllocBody185_117 : StackLang.HolProg 64 :=
.seq AllocBody185_8 AllocBody185_116

def AllocBody185_118 : StackLang.HolProg 64 :=
.seq AllocBody185_7 AllocBody185_117

def AllocBody185_119 : StackLang.HolProg 64 :=
.seq AllocBody185_6 AllocBody185_118

def AllocBody185_120 : StackLang.HolProg 64 :=
.seq AllocBody185_5 AllocBody185_119

def AllocBody185_121 : StackLang.HolProg 64 :=
.seq AllocBody185_4 AllocBody185_120

def AllocBody185_122 : StackLang.HolProg 64 :=
.seq AllocBody185_3 AllocBody185_121

def AllocBody185_123 : StackLang.HolProg 64 :=
.seq AllocBody185_2 AllocBody185_122

def AllocBody185_124 : StackLang.HolProg 64 :=
.seq AllocBody185_1 AllocBody185_123

def AllocBody185_125 : StackLang.HolProg 64 :=
.seq AllocBody185_0 AllocBody185_124

def Alloc185 : Nat × StackLang.HolProg 64 := (185, AllocBody185_125)
theorem Alloc185_eq : StackAlloc.progComp (185, raw185) = Alloc185 := by
  kernel_rfl
#print axioms Alloc185_eq
end InitECandidate.Proofs.BackendStages
