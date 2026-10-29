import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc185
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody185_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody185_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 6 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody185_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 5
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 40#64))

def RemovedBody185_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 56#64))

def RemovedBody185_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody185_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 4 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody185_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody185_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 24#64))

def RemovedBody185_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody185_22 : StackLang.HolProg 64 :=
.seq RemovedBody185_20 RemovedBody185_21

def RemovedBody185_23 : StackLang.HolProg 64 :=
.seq RemovedBody185_19 RemovedBody185_22

def RemovedBody185_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 6) RemovedBody185_23 RemovedBody185_24

def RemovedBody185_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 7 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody185_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 7 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody185_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 7 0#64))

def RemovedBody185_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 7#64)

def RemovedBody185_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def RemovedBody185_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 4 8
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody185_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 4 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4)))

def RemovedBody185_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody185_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 0#64)

def RemovedBody185_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody185_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody185_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody185_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_48 : StackLang.HolProg 64 :=
.seq RemovedBody185_46 RemovedBody185_47

def RemovedBody185_49 : StackLang.HolProg 64 :=
.seq RemovedBody185_45 RemovedBody185_48

def RemovedBody185_50 : StackLang.HolProg 64 :=
.seq RemovedBody185_44 RemovedBody185_49

def RemovedBody185_51 : StackLang.HolProg 64 :=
.seq RemovedBody185_43 RemovedBody185_50

def RemovedBody185_52 : StackLang.HolProg 64 :=
.seq RemovedBody185_42 RemovedBody185_51

def RemovedBody185_53 : StackLang.HolProg 64 :=
.seq RemovedBody185_41 RemovedBody185_52

def RemovedBody185_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody185_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody185_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def RemovedBody185_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_61 : StackLang.HolProg 64 :=
.seq RemovedBody185_59 RemovedBody185_60

def RemovedBody185_62 : StackLang.HolProg 64 :=
.seq RemovedBody185_58 RemovedBody185_61

def RemovedBody185_63 : StackLang.HolProg 64 :=
.seq RemovedBody185_57 RemovedBody185_62

def RemovedBody185_64 : StackLang.HolProg 64 :=
.seq RemovedBody185_56 RemovedBody185_63

def RemovedBody185_65 : StackLang.HolProg 64 :=
.seq RemovedBody185_55 RemovedBody185_64

def RemovedBody185_66 : StackLang.HolProg 64 :=
.seq RemovedBody185_54 RemovedBody185_65

def RemovedBody185_67 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 4 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7) RemovedBody185_53 RemovedBody185_66

def RemovedBody185_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.continue 0

def RemovedBody185_71 : StackLang.HolProg 64 :=
.seq RemovedBody185_69 RemovedBody185_70

def RemovedBody185_72 : StackLang.HolProg 64 :=
.seq RemovedBody185_68 RemovedBody185_71

def RemovedBody185_73 : StackLang.HolProg 64 :=
.seq RemovedBody185_67 RemovedBody185_72

def RemovedBody185_74 : StackLang.HolProg 64 :=
.seq RemovedBody185_40 RemovedBody185_73

def RemovedBody185_75 : StackLang.HolProg 64 :=
.seq RemovedBody185_39 RemovedBody185_74

def RemovedBody185_76 : StackLang.HolProg 64 :=
.seq RemovedBody185_38 RemovedBody185_75

def RemovedBody185_77 : StackLang.HolProg 64 :=
.seq RemovedBody185_37 RemovedBody185_76

def RemovedBody185_78 : StackLang.HolProg 64 :=
.seq RemovedBody185_36 RemovedBody185_77

def RemovedBody185_79 : StackLang.HolProg 64 :=
.seq RemovedBody185_35 RemovedBody185_78

def RemovedBody185_80 : StackLang.HolProg 64 :=
.seq RemovedBody185_34 RemovedBody185_79

def RemovedBody185_81 : StackLang.HolProg 64 :=
.seq RemovedBody185_33 RemovedBody185_80

def RemovedBody185_82 : StackLang.HolProg 64 :=
.seq RemovedBody185_32 RemovedBody185_81

def RemovedBody185_83 : StackLang.HolProg 64 :=
.seq RemovedBody185_31 RemovedBody185_82

def RemovedBody185_84 : StackLang.HolProg 64 :=
.seq RemovedBody185_30 RemovedBody185_83

def RemovedBody185_85 : StackLang.HolProg 64 :=
.seq RemovedBody185_29 RemovedBody185_84

def RemovedBody185_86 : StackLang.HolProg 64 :=
.seq RemovedBody185_28 RemovedBody185_85

def RemovedBody185_87 : StackLang.HolProg 64 :=
.seq RemovedBody185_27 RemovedBody185_86

def RemovedBody185_88 : StackLang.HolProg 64 :=
.seq RemovedBody185_26 RemovedBody185_87

def RemovedBody185_89 : StackLang.HolProg 64 :=
.seq RemovedBody185_25 RemovedBody185_88

def RemovedBody185_90 : StackLang.HolProg 64 :=
.seq RemovedBody185_18 RemovedBody185_89

def RemovedBody185_91 : StackLang.HolProg 64 :=
.seq RemovedBody185_17 RemovedBody185_90

def RemovedBody185_92 : StackLang.HolProg 64 :=
.seq RemovedBody185_16 RemovedBody185_91

def RemovedBody185_93 : StackLang.HolProg 64 :=
.seq RemovedBody185_15 RemovedBody185_92

def RemovedBody185_94 : StackLang.HolProg 64 :=
.seq RemovedBody185_14 RemovedBody185_93

def RemovedBody185_95 : StackLang.HolProg 64 :=
.seq RemovedBody185_13 RemovedBody185_94

def RemovedBody185_96 : StackLang.HolProg 64 :=
.seq RemovedBody185_12 RemovedBody185_95

def RemovedBody185_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_99 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.break 0

def RemovedBody185_100 : StackLang.HolProg 64 :=
.seq RemovedBody185_98 RemovedBody185_99

def RemovedBody185_101 : StackLang.HolProg 64 :=
.seq RemovedBody185_97 RemovedBody185_100

def RemovedBody185_102 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 3 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody185_96 RemovedBody185_101

def RemovedBody185_103 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_104 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody185_105 : StackLang.HolProg 64 :=
.seq RemovedBody185_103 RemovedBody185_104

def RemovedBody185_106 : StackLang.HolProg 64 :=
.seq RemovedBody185_102 RemovedBody185_105

def RemovedBody185_107 : StackLang.HolProg 64 :=
.seq RemovedBody185_11 RemovedBody185_106

def RemovedBody185_108 : StackLang.HolProg 64 :=
.seq RemovedBody185_10 RemovedBody185_107

def RemovedBody185_109 : StackLang.HolProg 64 :=
.loop RemovedBody185_108

def RemovedBody185_110 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody185_111 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody185_112 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody185_113 : StackLang.HolProg 64 :=
.seq RemovedBody185_111 RemovedBody185_112

def RemovedBody185_114 : StackLang.HolProg 64 :=
.seq RemovedBody185_110 RemovedBody185_113

def RemovedBody185_115 : StackLang.HolProg 64 :=
.seq RemovedBody185_109 RemovedBody185_114

def RemovedBody185_116 : StackLang.HolProg 64 :=
.seq RemovedBody185_9 RemovedBody185_115

def RemovedBody185_117 : StackLang.HolProg 64 :=
.seq RemovedBody185_8 RemovedBody185_116

def RemovedBody185_118 : StackLang.HolProg 64 :=
.seq RemovedBody185_7 RemovedBody185_117

def RemovedBody185_119 : StackLang.HolProg 64 :=
.seq RemovedBody185_6 RemovedBody185_118

def RemovedBody185_120 : StackLang.HolProg 64 :=
.seq RemovedBody185_5 RemovedBody185_119

def RemovedBody185_121 : StackLang.HolProg 64 :=
.seq RemovedBody185_4 RemovedBody185_120

def RemovedBody185_122 : StackLang.HolProg 64 :=
.seq RemovedBody185_3 RemovedBody185_121

def RemovedBody185_123 : StackLang.HolProg 64 :=
.seq RemovedBody185_2 RemovedBody185_122

def RemovedBody185_124 : StackLang.HolProg 64 :=
.seq RemovedBody185_1 RemovedBody185_123

def RemovedBody185_125 : StackLang.HolProg 64 :=
.seq RemovedBody185_0 RemovedBody185_124

def Removed185 : Nat × StackLang.HolProg 64 := (185, RemovedBody185_125)
theorem Removed185_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc185 = Removed185 := by
  kernel_rfl
#print axioms Removed185_eq
end InitECandidate.Proofs.BackendStages
