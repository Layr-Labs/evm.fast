import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc679
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody679_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody679_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody679_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody679_3 : StackLang.HolProg 64 :=
.seq RemovedBody679_1 RemovedBody679_2

def RemovedBody679_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody679_3 RemovedBody679_4

def RemovedBody679_6 : StackLang.HolProg 64 :=
.seq RemovedBody679_0 RemovedBody679_5

def RemovedBody679_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody679_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody679_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody679_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody679_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody679_12 : StackLang.HolProg 64 :=
.seq RemovedBody679_10 RemovedBody679_11

def RemovedBody679_13 : StackLang.HolProg 64 :=
.seq RemovedBody679_9 RemovedBody679_12

def RemovedBody679_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2793#64)

def RemovedBody679_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody679_17 : StackLang.HolProg 64 :=
.seq RemovedBody679_15 RemovedBody679_16

def RemovedBody679_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody679_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody679_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody679_21 : StackLang.HolProg 64 :=
.seq RemovedBody679_19 RemovedBody679_20

def RemovedBody679_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_23 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody679_21 RemovedBody679_22

def RemovedBody679_24 : StackLang.HolProg 64 :=
.seq RemovedBody679_18 RemovedBody679_23

def RemovedBody679_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody679_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody679_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 679 3

def RemovedBody679_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody679_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody679_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody679_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody679_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody679_34 : StackLang.HolProg 64 :=
.seq RemovedBody679_32 RemovedBody679_33

def RemovedBody679_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody679_36 : StackLang.HolProg 64 :=
.seq RemovedBody679_34 RemovedBody679_35

def RemovedBody679_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody679_38 : StackLang.HolProg 64 :=
.seq RemovedBody679_36 RemovedBody679_37

def RemovedBody679_39 : StackLang.HolProg 64 :=
.seq RemovedBody679_31 RemovedBody679_38

def RemovedBody679_40 : StackLang.HolProg 64 :=
.seq RemovedBody679_30 RemovedBody679_39

def RemovedBody679_41 : StackLang.HolProg 64 :=
.seq RemovedBody679_29 RemovedBody679_40

def RemovedBody679_42 : StackLang.HolProg 64 :=
.seq RemovedBody679_28 RemovedBody679_41

def RemovedBody679_43 : StackLang.HolProg 64 :=
.seq RemovedBody679_27 RemovedBody679_42

def RemovedBody679_44 : StackLang.HolProg 64 :=
.seq RemovedBody679_26 RemovedBody679_43

def RemovedBody679_45 : StackLang.HolProg 64 :=
.seq RemovedBody679_25 RemovedBody679_44

def RemovedBody679_46 : StackLang.HolProg 64 :=
.seq RemovedBody679_24 RemovedBody679_45

def RemovedBody679_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody679_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody679_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody679_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody679_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody679_55 : StackLang.HolProg 64 :=
.seq RemovedBody679_53 RemovedBody679_54

def RemovedBody679_56 : StackLang.HolProg 64 :=
.seq RemovedBody679_52 RemovedBody679_55

def RemovedBody679_57 : StackLang.HolProg 64 :=
.seq RemovedBody679_51 RemovedBody679_56

def RemovedBody679_58 : StackLang.HolProg 64 :=
.seq RemovedBody679_50 RemovedBody679_57

def RemovedBody679_59 : StackLang.HolProg 64 :=
.seq RemovedBody679_49 RemovedBody679_58

def RemovedBody679_60 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody679_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody679_62 : StackLang.HolProg 64 :=
.seq RemovedBody679_60 RemovedBody679_61

def RemovedBody679_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody679_64 : StackLang.HolProg 64 :=
.seq RemovedBody679_62 RemovedBody679_63

def RemovedBody679_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody679_59, 0, 679, 2)) (Sum.inl 78) (some (RemovedBody679_64, 679, 3))

def RemovedBody679_66 : StackLang.HolProg 64 :=
.seq RemovedBody679_48 RemovedBody679_65

def RemovedBody679_67 : StackLang.HolProg 64 :=
.seq RemovedBody679_47 RemovedBody679_66

def RemovedBody679_68 : StackLang.HolProg 64 :=
.seq RemovedBody679_46 RemovedBody679_67

def RemovedBody679_69 : StackLang.HolProg 64 :=
.seq RemovedBody679_17 RemovedBody679_68

def RemovedBody679_70 : StackLang.HolProg 64 :=
.seq RemovedBody679_14 RemovedBody679_69

def RemovedBody679_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody679_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 15230403791020821917#64)

def RemovedBody679_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody679_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 754611498739239741#64)

def RemovedBody679_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody679_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 7381016538464732716#64)

def RemovedBody679_80 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 16#64))

def RemovedBody679_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1011752739694698287#64)

def RemovedBody679_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 24#64))

def RemovedBody679_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody679_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody679_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody679_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody679_89 : StackLang.HolProg 64 :=
.seq RemovedBody679_87 RemovedBody679_88

def RemovedBody679_90 : StackLang.HolProg 64 :=
.seq RemovedBody679_86 RemovedBody679_89

def RemovedBody679_91 : StackLang.HolProg 64 :=
.seq RemovedBody679_85 RemovedBody679_90

def RemovedBody679_92 : StackLang.HolProg 64 :=
.seq RemovedBody679_84 RemovedBody679_91

def RemovedBody679_93 : StackLang.HolProg 64 :=
.seq RemovedBody679_83 RemovedBody679_92

def RemovedBody679_94 : StackLang.HolProg 64 :=
.seq RemovedBody679_82 RemovedBody679_93

def RemovedBody679_95 : StackLang.HolProg 64 :=
.seq RemovedBody679_81 RemovedBody679_94

def RemovedBody679_96 : StackLang.HolProg 64 :=
.seq RemovedBody679_80 RemovedBody679_95

def RemovedBody679_97 : StackLang.HolProg 64 :=
.seq RemovedBody679_79 RemovedBody679_96

def RemovedBody679_98 : StackLang.HolProg 64 :=
.seq RemovedBody679_78 RemovedBody679_97

def RemovedBody679_99 : StackLang.HolProg 64 :=
.seq RemovedBody679_77 RemovedBody679_98

def RemovedBody679_100 : StackLang.HolProg 64 :=
.seq RemovedBody679_76 RemovedBody679_99

def RemovedBody679_101 : StackLang.HolProg 64 :=
.seq RemovedBody679_75 RemovedBody679_100

def RemovedBody679_102 : StackLang.HolProg 64 :=
.seq RemovedBody679_74 RemovedBody679_101

def RemovedBody679_103 : StackLang.HolProg 64 :=
.seq RemovedBody679_73 RemovedBody679_102

def RemovedBody679_104 : StackLang.HolProg 64 :=
.seq RemovedBody679_72 RemovedBody679_103

def RemovedBody679_105 : StackLang.HolProg 64 :=
.seq RemovedBody679_71 RemovedBody679_104

def RemovedBody679_106 : StackLang.HolProg 64 :=
.seq RemovedBody679_70 RemovedBody679_105

def RemovedBody679_107 : StackLang.HolProg 64 :=
.seq RemovedBody679_13 RemovedBody679_106

def RemovedBody679_108 : StackLang.HolProg 64 :=
.seq RemovedBody679_8 RemovedBody679_107

def RemovedBody679_109 : StackLang.HolProg 64 :=
.seq RemovedBody679_7 RemovedBody679_108

def RemovedBody679_110 : StackLang.HolProg 64 :=
.seq RemovedBody679_6 RemovedBody679_109

def Removed679 : Nat × StackLang.HolProg 64 := (679, RemovedBody679_110)
theorem Removed679_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc679 = Removed679 := by
  kernel_rfl
#print axioms Removed679_eq
end InitECandidate.Proofs.BackendStages
