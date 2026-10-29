import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc635
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody635_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody635_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 5 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody635_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody635_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody635_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody635_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody635_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 6 0#64))

def RemovedBody635_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody635_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody635_20 : StackLang.HolProg 64 :=
.seq RemovedBody635_18 RemovedBody635_19

def RemovedBody635_21 : StackLang.HolProg 64 :=
.seq RemovedBody635_17 RemovedBody635_20

def RemovedBody635_22 : StackLang.HolProg 64 :=
.seq RemovedBody635_16 RemovedBody635_21

def RemovedBody635_23 : StackLang.HolProg 64 :=
.seq RemovedBody635_15 RemovedBody635_22

def RemovedBody635_24 : StackLang.HolProg 64 :=
.seq RemovedBody635_14 RemovedBody635_23

def RemovedBody635_25 : StackLang.HolProg 64 :=
.seq RemovedBody635_13 RemovedBody635_24

def RemovedBody635_26 : StackLang.HolProg 64 :=
.seq RemovedBody635_12 RemovedBody635_25

def RemovedBody635_27 : StackLang.HolProg 64 :=
.seq RemovedBody635_11 RemovedBody635_26

def RemovedBody635_28 : StackLang.HolProg 64 :=
.seq RemovedBody635_10 RemovedBody635_27

def RemovedBody635_29 : StackLang.HolProg 64 :=
.seq RemovedBody635_9 RemovedBody635_28

def RemovedBody635_30 : StackLang.HolProg 64 :=
.seq RemovedBody635_8 RemovedBody635_29

def RemovedBody635_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody635_34 : StackLang.HolProg 64 :=
.seq RemovedBody635_32 RemovedBody635_33

def RemovedBody635_35 : StackLang.HolProg 64 :=
.seq RemovedBody635_31 RemovedBody635_34

def RemovedBody635_36 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5) RemovedBody635_30 RemovedBody635_35

def RemovedBody635_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_39 : StackLang.HolProg 64 :=
.seq RemovedBody635_37 RemovedBody635_38

def RemovedBody635_40 : StackLang.HolProg 64 :=
.seq RemovedBody635_36 RemovedBody635_39

def RemovedBody635_41 : StackLang.HolProg 64 :=
.seq RemovedBody635_7 RemovedBody635_40

def RemovedBody635_42 : StackLang.HolProg 64 :=
.loop RemovedBody635_41

def RemovedBody635_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 6 0#64)

def RemovedBody635_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody635_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6)))

def RemovedBody635_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody635_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody635_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody635_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 8 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody635_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 8 0#64))

def RemovedBody635_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody635_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody635_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody635_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody635_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 8)))

def RemovedBody635_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody635_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 6 6
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody635_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody635_75 : StackLang.HolProg 64 :=
.seq RemovedBody635_73 RemovedBody635_74

def RemovedBody635_76 : StackLang.HolProg 64 :=
.seq RemovedBody635_72 RemovedBody635_75

def RemovedBody635_77 : StackLang.HolProg 64 :=
.seq RemovedBody635_71 RemovedBody635_76

def RemovedBody635_78 : StackLang.HolProg 64 :=
.seq RemovedBody635_70 RemovedBody635_77

def RemovedBody635_79 : StackLang.HolProg 64 :=
.seq RemovedBody635_69 RemovedBody635_78

def RemovedBody635_80 : StackLang.HolProg 64 :=
.seq RemovedBody635_68 RemovedBody635_79

def RemovedBody635_81 : StackLang.HolProg 64 :=
.seq RemovedBody635_67 RemovedBody635_80

def RemovedBody635_82 : StackLang.HolProg 64 :=
.seq RemovedBody635_66 RemovedBody635_81

def RemovedBody635_83 : StackLang.HolProg 64 :=
.seq RemovedBody635_65 RemovedBody635_82

def RemovedBody635_84 : StackLang.HolProg 64 :=
.seq RemovedBody635_64 RemovedBody635_83

def RemovedBody635_85 : StackLang.HolProg 64 :=
.seq RemovedBody635_63 RemovedBody635_84

def RemovedBody635_86 : StackLang.HolProg 64 :=
.seq RemovedBody635_62 RemovedBody635_85

def RemovedBody635_87 : StackLang.HolProg 64 :=
.seq RemovedBody635_61 RemovedBody635_86

def RemovedBody635_88 : StackLang.HolProg 64 :=
.seq RemovedBody635_60 RemovedBody635_87

def RemovedBody635_89 : StackLang.HolProg 64 :=
.seq RemovedBody635_59 RemovedBody635_88

def RemovedBody635_90 : StackLang.HolProg 64 :=
.seq RemovedBody635_58 RemovedBody635_89

def RemovedBody635_91 : StackLang.HolProg 64 :=
.seq RemovedBody635_57 RemovedBody635_90

def RemovedBody635_92 : StackLang.HolProg 64 :=
.seq RemovedBody635_56 RemovedBody635_91

def RemovedBody635_93 : StackLang.HolProg 64 :=
.seq RemovedBody635_55 RemovedBody635_92

def RemovedBody635_94 : StackLang.HolProg 64 :=
.seq RemovedBody635_54 RemovedBody635_93

def RemovedBody635_95 : StackLang.HolProg 64 :=
.seq RemovedBody635_53 RemovedBody635_94

def RemovedBody635_96 : StackLang.HolProg 64 :=
.seq RemovedBody635_52 RemovedBody635_95

def RemovedBody635_97 : StackLang.HolProg 64 :=
.seq RemovedBody635_51 RemovedBody635_96

def RemovedBody635_98 : StackLang.HolProg 64 :=
.seq RemovedBody635_50 RemovedBody635_97

def RemovedBody635_99 : StackLang.HolProg 64 :=
.seq RemovedBody635_49 RemovedBody635_98

def RemovedBody635_100 : StackLang.HolProg 64 :=
.seq RemovedBody635_48 RemovedBody635_99

def RemovedBody635_101 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_102 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody635_103 : StackLang.HolProg 64 :=
.seq RemovedBody635_101 RemovedBody635_102

def RemovedBody635_104 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 6 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody635_100 RemovedBody635_103

def RemovedBody635_105 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_106 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody635_107 : StackLang.HolProg 64 :=
.seq RemovedBody635_105 RemovedBody635_106

def RemovedBody635_108 : StackLang.HolProg 64 :=
.seq RemovedBody635_104 RemovedBody635_107

def RemovedBody635_109 : StackLang.HolProg 64 :=
.seq RemovedBody635_47 RemovedBody635_108

def RemovedBody635_110 : StackLang.HolProg 64 :=
.loop RemovedBody635_109

def RemovedBody635_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody635_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody635_113 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody635_114 : StackLang.HolProg 64 :=
.seq RemovedBody635_112 RemovedBody635_113

def RemovedBody635_115 : StackLang.HolProg 64 :=
.seq RemovedBody635_111 RemovedBody635_114

def RemovedBody635_116 : StackLang.HolProg 64 :=
.seq RemovedBody635_110 RemovedBody635_115

def RemovedBody635_117 : StackLang.HolProg 64 :=
.seq RemovedBody635_46 RemovedBody635_116

def RemovedBody635_118 : StackLang.HolProg 64 :=
.seq RemovedBody635_45 RemovedBody635_117

def RemovedBody635_119 : StackLang.HolProg 64 :=
.seq RemovedBody635_44 RemovedBody635_118

def RemovedBody635_120 : StackLang.HolProg 64 :=
.seq RemovedBody635_43 RemovedBody635_119

def RemovedBody635_121 : StackLang.HolProg 64 :=
.seq RemovedBody635_42 RemovedBody635_120

def RemovedBody635_122 : StackLang.HolProg 64 :=
.seq RemovedBody635_6 RemovedBody635_121

def RemovedBody635_123 : StackLang.HolProg 64 :=
.seq RemovedBody635_5 RemovedBody635_122

def RemovedBody635_124 : StackLang.HolProg 64 :=
.seq RemovedBody635_4 RemovedBody635_123

def RemovedBody635_125 : StackLang.HolProg 64 :=
.seq RemovedBody635_3 RemovedBody635_124

def RemovedBody635_126 : StackLang.HolProg 64 :=
.seq RemovedBody635_2 RemovedBody635_125

def RemovedBody635_127 : StackLang.HolProg 64 :=
.seq RemovedBody635_1 RemovedBody635_126

def RemovedBody635_128 : StackLang.HolProg 64 :=
.seq RemovedBody635_0 RemovedBody635_127

def Removed635 : Nat × StackLang.HolProg 64 := (635, RemovedBody635_128)
theorem Removed635_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc635 = Removed635 := by
  kernel_rfl
#print axioms Removed635_eq
end InitECandidate.Proofs.BackendStages
