import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc538
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody538_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody538_3 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody538_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 3 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody538_5 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 18446744073709551360#64))

def RemovedBody538_6 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 16#64))

def RemovedBody538_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 3 8#64))

def RemovedBody538_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 4 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551615#64)))

def RemovedBody538_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody538_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody538_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody538_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 1 4
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody538_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody538_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody538_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody538_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def RemovedBody538_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def RemovedBody538_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def RemovedBody538_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def RemovedBody538_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def RemovedBody538_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def RemovedBody538_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def RemovedBody538_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 9
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 0#64))

def RemovedBody538_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_40 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 8
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 8#64))

def RemovedBody538_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 7
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 16#64))

def RemovedBody538_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 6
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 5 24#64))

def RemovedBody538_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 0#64))

def RemovedBody538_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 8#64))

def RemovedBody538_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 16#64))

def RemovedBody538_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 10 24#64))

def RemovedBody538_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody538_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody538_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody538_56 : StackLang.HolProg 64 :=
.seq RemovedBody538_54 RemovedBody538_55

def RemovedBody538_57 : StackLang.HolProg 64 :=
.seq RemovedBody538_53 RemovedBody538_56

def RemovedBody538_58 : StackLang.HolProg 64 :=
.seq RemovedBody538_52 RemovedBody538_57

def RemovedBody538_59 : StackLang.HolProg 64 :=
.seq RemovedBody538_51 RemovedBody538_58

def RemovedBody538_60 : StackLang.HolProg 64 :=
.seq RemovedBody538_50 RemovedBody538_59

def RemovedBody538_61 : StackLang.HolProg 64 :=
.seq RemovedBody538_49 RemovedBody538_60

def RemovedBody538_62 : StackLang.HolProg 64 :=
.seq RemovedBody538_48 RemovedBody538_61

def RemovedBody538_63 : StackLang.HolProg 64 :=
.seq RemovedBody538_47 RemovedBody538_62

def RemovedBody538_64 : StackLang.HolProg 64 :=
.seq RemovedBody538_46 RemovedBody538_63

def RemovedBody538_65 : StackLang.HolProg 64 :=
.seq RemovedBody538_45 RemovedBody538_64

def RemovedBody538_66 : StackLang.HolProg 64 :=
.seq RemovedBody538_44 RemovedBody538_65

def RemovedBody538_67 : StackLang.HolProg 64 :=
.seq RemovedBody538_43 RemovedBody538_66

def RemovedBody538_68 : StackLang.HolProg 64 :=
.seq RemovedBody538_42 RemovedBody538_67

def RemovedBody538_69 : StackLang.HolProg 64 :=
.seq RemovedBody538_41 RemovedBody538_68

def RemovedBody538_70 : StackLang.HolProg 64 :=
.seq RemovedBody538_40 RemovedBody538_69

def RemovedBody538_71 : StackLang.HolProg 64 :=
.seq RemovedBody538_39 RemovedBody538_70

def RemovedBody538_72 : StackLang.HolProg 64 :=
.seq RemovedBody538_38 RemovedBody538_71

def RemovedBody538_73 : StackLang.HolProg 64 :=
.seq RemovedBody538_37 RemovedBody538_72

def RemovedBody538_74 : StackLang.HolProg 64 :=
.seq RemovedBody538_36 RemovedBody538_73

def RemovedBody538_75 : StackLang.HolProg 64 :=
.seq RemovedBody538_35 RemovedBody538_74

def RemovedBody538_76 : StackLang.HolProg 64 :=
.seq RemovedBody538_34 RemovedBody538_75

def RemovedBody538_77 : StackLang.HolProg 64 :=
.seq RemovedBody538_33 RemovedBody538_76

def RemovedBody538_78 : StackLang.HolProg 64 :=
.seq RemovedBody538_32 RemovedBody538_77

def RemovedBody538_79 : StackLang.HolProg 64 :=
.seq RemovedBody538_31 RemovedBody538_78

def RemovedBody538_80 : StackLang.HolProg 64 :=
.seq RemovedBody538_30 RemovedBody538_79

def RemovedBody538_81 : StackLang.HolProg 64 :=
.seq RemovedBody538_29 RemovedBody538_80

def RemovedBody538_82 : StackLang.HolProg 64 :=
.seq RemovedBody538_28 RemovedBody538_81

def RemovedBody538_83 : StackLang.HolProg 64 :=
.seq RemovedBody538_27 RemovedBody538_82

def RemovedBody538_84 : StackLang.HolProg 64 :=
.seq RemovedBody538_26 RemovedBody538_83

def RemovedBody538_85 : StackLang.HolProg 64 :=
.seq RemovedBody538_25 RemovedBody538_84

def RemovedBody538_86 : StackLang.HolProg 64 :=
.seq RemovedBody538_24 RemovedBody538_85

def RemovedBody538_87 : StackLang.HolProg 64 :=
.seq RemovedBody538_23 RemovedBody538_86

def RemovedBody538_88 : StackLang.HolProg 64 :=
.seq RemovedBody538_22 RemovedBody538_87

def RemovedBody538_89 : StackLang.HolProg 64 :=
.seq RemovedBody538_21 RemovedBody538_88

def RemovedBody538_90 : StackLang.HolProg 64 :=
.seq RemovedBody538_20 RemovedBody538_89

def RemovedBody538_91 : StackLang.HolProg 64 :=
.seq RemovedBody538_19 RemovedBody538_90

def RemovedBody538_92 : StackLang.HolProg 64 :=
.seq RemovedBody538_18 RemovedBody538_91

def RemovedBody538_93 : StackLang.HolProg 64 :=
.seq RemovedBody538_17 RemovedBody538_92

def RemovedBody538_94 : StackLang.HolProg 64 :=
.seq RemovedBody538_16 RemovedBody538_93

def RemovedBody538_95 : StackLang.HolProg 64 :=
.seq RemovedBody538_15 RemovedBody538_94

def RemovedBody538_96 : StackLang.HolProg 64 :=
.seq RemovedBody538_14 RemovedBody538_95

def RemovedBody538_97 : StackLang.HolProg 64 :=
.seq RemovedBody538_13 RemovedBody538_96

def RemovedBody538_98 : StackLang.HolProg 64 :=
.seq RemovedBody538_12 RemovedBody538_97

def RemovedBody538_99 : StackLang.HolProg 64 :=
.seq RemovedBody538_11 RemovedBody538_98

def RemovedBody538_100 : StackLang.HolProg 64 :=
.seq RemovedBody538_10 RemovedBody538_99

def RemovedBody538_101 : StackLang.HolProg 64 :=
.seq RemovedBody538_9 RemovedBody538_100

def RemovedBody538_102 : StackLang.HolProg 64 :=
.seq RemovedBody538_8 RemovedBody538_101

def RemovedBody538_103 : StackLang.HolProg 64 :=
.seq RemovedBody538_7 RemovedBody538_102

def RemovedBody538_104 : StackLang.HolProg 64 :=
.seq RemovedBody538_6 RemovedBody538_103

def RemovedBody538_105 : StackLang.HolProg 64 :=
.seq RemovedBody538_5 RemovedBody538_104

def RemovedBody538_106 : StackLang.HolProg 64 :=
.seq RemovedBody538_4 RemovedBody538_105

def RemovedBody538_107 : StackLang.HolProg 64 :=
.seq RemovedBody538_3 RemovedBody538_106

def RemovedBody538_108 : StackLang.HolProg 64 :=
.seq RemovedBody538_2 RemovedBody538_107

def RemovedBody538_109 : StackLang.HolProg 64 :=
.seq RemovedBody538_1 RemovedBody538_108

def RemovedBody538_110 : StackLang.HolProg 64 :=
.seq RemovedBody538_0 RemovedBody538_109

def Removed538 : Nat × StackLang.HolProg 64 := (538, RemovedBody538_110)
theorem Removed538_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc538 = Removed538 := by
  kernel_rfl
#print axioms Removed538_eq
end InitECandidate.Proofs.BackendStages
