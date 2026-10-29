import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc468
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody468_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 4 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody468_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 23#64)

def RemovedBody468_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody468_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody468_7 : StackLang.HolProg 64 :=
.seq RemovedBody468_5 RemovedBody468_6

def RemovedBody468_8 : StackLang.HolProg 64 :=
.seq RemovedBody468_4 RemovedBody468_7

def RemovedBody468_9 : StackLang.HolProg 64 :=
.seq RemovedBody468_3 RemovedBody468_8

def RemovedBody468_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_11 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody468_9 RemovedBody468_10

def RemovedBody468_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 4 0#64))

def RemovedBody468_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 239#64)

def RemovedBody468_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody468_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_21 : StackLang.HolProg 64 :=
.seq RemovedBody468_19 RemovedBody468_20

def RemovedBody468_22 : StackLang.HolProg 64 :=
.seq RemovedBody468_18 RemovedBody468_21

def RemovedBody468_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody468_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_26 : StackLang.HolProg 64 :=
.seq RemovedBody468_24 RemovedBody468_25

def RemovedBody468_27 : StackLang.HolProg 64 :=
.seq RemovedBody468_23 RemovedBody468_26

def RemovedBody468_28 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody468_22 RemovedBody468_27

def RemovedBody468_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody468_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody468_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody468_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 1#64)

def RemovedBody468_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_38 : StackLang.HolProg 64 :=
.seq RemovedBody468_36 RemovedBody468_37

def RemovedBody468_39 : StackLang.HolProg 64 :=
.seq RemovedBody468_35 RemovedBody468_38

def RemovedBody468_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody468_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_43 : StackLang.HolProg 64 :=
.seq RemovedBody468_41 RemovedBody468_42

def RemovedBody468_44 : StackLang.HolProg 64 :=
.seq RemovedBody468_40 RemovedBody468_43

def RemovedBody468_45 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3) RemovedBody468_39 RemovedBody468_44

def RemovedBody468_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 2#64)))

def RemovedBody468_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load8 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody468_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 4 0#64)

def RemovedBody468_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody468_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_55 : StackLang.HolProg 64 :=
.seq RemovedBody468_53 RemovedBody468_54

def RemovedBody468_56 : StackLang.HolProg 64 :=
.seq RemovedBody468_52 RemovedBody468_55

def RemovedBody468_57 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody468_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_60 : StackLang.HolProg 64 :=
.seq RemovedBody468_58 RemovedBody468_59

def RemovedBody468_61 : StackLang.HolProg 64 :=
.seq RemovedBody468_57 RemovedBody468_60

def RemovedBody468_62 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 4) RemovedBody468_56 RemovedBody468_61

def RemovedBody468_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody468_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody468_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody468_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody468_71 : StackLang.HolProg 64 :=
.seq RemovedBody468_69 RemovedBody468_70

def RemovedBody468_72 : StackLang.HolProg 64 :=
.seq RemovedBody468_68 RemovedBody468_71

def RemovedBody468_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_74 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 0#64) RemovedBody468_72 RemovedBody468_73

def RemovedBody468_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody468_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody468_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody468_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody468_79 : StackLang.HolProg 64 :=
.seq RemovedBody468_77 RemovedBody468_78

def RemovedBody468_80 : StackLang.HolProg 64 :=
.seq RemovedBody468_76 RemovedBody468_79

def RemovedBody468_81 : StackLang.HolProg 64 :=
.seq RemovedBody468_75 RemovedBody468_80

def RemovedBody468_82 : StackLang.HolProg 64 :=
.seq RemovedBody468_74 RemovedBody468_81

def RemovedBody468_83 : StackLang.HolProg 64 :=
.seq RemovedBody468_67 RemovedBody468_82

def RemovedBody468_84 : StackLang.HolProg 64 :=
.seq RemovedBody468_66 RemovedBody468_83

def RemovedBody468_85 : StackLang.HolProg 64 :=
.seq RemovedBody468_65 RemovedBody468_84

def RemovedBody468_86 : StackLang.HolProg 64 :=
.seq RemovedBody468_64 RemovedBody468_85

def RemovedBody468_87 : StackLang.HolProg 64 :=
.seq RemovedBody468_63 RemovedBody468_86

def RemovedBody468_88 : StackLang.HolProg 64 :=
.seq RemovedBody468_62 RemovedBody468_87

def RemovedBody468_89 : StackLang.HolProg 64 :=
.seq RemovedBody468_51 RemovedBody468_88

def RemovedBody468_90 : StackLang.HolProg 64 :=
.seq RemovedBody468_50 RemovedBody468_89

def RemovedBody468_91 : StackLang.HolProg 64 :=
.seq RemovedBody468_49 RemovedBody468_90

def RemovedBody468_92 : StackLang.HolProg 64 :=
.seq RemovedBody468_48 RemovedBody468_91

def RemovedBody468_93 : StackLang.HolProg 64 :=
.seq RemovedBody468_47 RemovedBody468_92

def RemovedBody468_94 : StackLang.HolProg 64 :=
.seq RemovedBody468_46 RemovedBody468_93

def RemovedBody468_95 : StackLang.HolProg 64 :=
.seq RemovedBody468_45 RemovedBody468_94

def RemovedBody468_96 : StackLang.HolProg 64 :=
.seq RemovedBody468_34 RemovedBody468_95

def RemovedBody468_97 : StackLang.HolProg 64 :=
.seq RemovedBody468_33 RemovedBody468_96

def RemovedBody468_98 : StackLang.HolProg 64 :=
.seq RemovedBody468_32 RemovedBody468_97

def RemovedBody468_99 : StackLang.HolProg 64 :=
.seq RemovedBody468_31 RemovedBody468_98

def RemovedBody468_100 : StackLang.HolProg 64 :=
.seq RemovedBody468_30 RemovedBody468_99

def RemovedBody468_101 : StackLang.HolProg 64 :=
.seq RemovedBody468_29 RemovedBody468_100

def RemovedBody468_102 : StackLang.HolProg 64 :=
.seq RemovedBody468_28 RemovedBody468_101

def RemovedBody468_103 : StackLang.HolProg 64 :=
.seq RemovedBody468_17 RemovedBody468_102

def RemovedBody468_104 : StackLang.HolProg 64 :=
.seq RemovedBody468_16 RemovedBody468_103

def RemovedBody468_105 : StackLang.HolProg 64 :=
.seq RemovedBody468_15 RemovedBody468_104

def RemovedBody468_106 : StackLang.HolProg 64 :=
.seq RemovedBody468_14 RemovedBody468_105

def RemovedBody468_107 : StackLang.HolProg 64 :=
.seq RemovedBody468_13 RemovedBody468_106

def RemovedBody468_108 : StackLang.HolProg 64 :=
.seq RemovedBody468_12 RemovedBody468_107

def RemovedBody468_109 : StackLang.HolProg 64 :=
.seq RemovedBody468_11 RemovedBody468_108

def RemovedBody468_110 : StackLang.HolProg 64 :=
.seq RemovedBody468_2 RemovedBody468_109

def RemovedBody468_111 : StackLang.HolProg 64 :=
.seq RemovedBody468_1 RemovedBody468_110

def RemovedBody468_112 : StackLang.HolProg 64 :=
.seq RemovedBody468_0 RemovedBody468_111

def Removed468 : Nat × StackLang.HolProg 64 := (468, RemovedBody468_112)
theorem Removed468_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc468 = Removed468 := by
  kernel_rfl
#print axioms Removed468_eq
end InitECandidate.Proofs.BackendStages
