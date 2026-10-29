import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc273
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody273_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody273_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody273_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody273_3 : StackLang.HolProg 64 :=
.seq RemovedBody273_1 RemovedBody273_2

def RemovedBody273_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody273_3 RemovedBody273_4

def RemovedBody273_6 : StackLang.HolProg 64 :=
.seq RemovedBody273_0 RemovedBody273_5

def RemovedBody273_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody273_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody273_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody273_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody273_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody273_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 660#64)

def RemovedBody273_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody273_18 : StackLang.HolProg 64 :=
.seq RemovedBody273_16 RemovedBody273_17

def RemovedBody273_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody273_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody273_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody273_22 : StackLang.HolProg 64 :=
.seq RemovedBody273_20 RemovedBody273_21

def RemovedBody273_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody273_22 RemovedBody273_23

def RemovedBody273_25 : StackLang.HolProg 64 :=
.seq RemovedBody273_19 RemovedBody273_24

def RemovedBody273_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody273_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody273_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 273 3

def RemovedBody273_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody273_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody273_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody273_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody273_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody273_35 : StackLang.HolProg 64 :=
.seq RemovedBody273_33 RemovedBody273_34

def RemovedBody273_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody273_37 : StackLang.HolProg 64 :=
.seq RemovedBody273_35 RemovedBody273_36

def RemovedBody273_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody273_39 : StackLang.HolProg 64 :=
.seq RemovedBody273_37 RemovedBody273_38

def RemovedBody273_40 : StackLang.HolProg 64 :=
.seq RemovedBody273_32 RemovedBody273_39

def RemovedBody273_41 : StackLang.HolProg 64 :=
.seq RemovedBody273_31 RemovedBody273_40

def RemovedBody273_42 : StackLang.HolProg 64 :=
.seq RemovedBody273_30 RemovedBody273_41

def RemovedBody273_43 : StackLang.HolProg 64 :=
.seq RemovedBody273_29 RemovedBody273_42

def RemovedBody273_44 : StackLang.HolProg 64 :=
.seq RemovedBody273_28 RemovedBody273_43

def RemovedBody273_45 : StackLang.HolProg 64 :=
.seq RemovedBody273_27 RemovedBody273_44

def RemovedBody273_46 : StackLang.HolProg 64 :=
.seq RemovedBody273_26 RemovedBody273_45

def RemovedBody273_47 : StackLang.HolProg 64 :=
.seq RemovedBody273_25 RemovedBody273_46

def RemovedBody273_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody273_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody273_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody273_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody273_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody273_56 : StackLang.HolProg 64 :=
.seq RemovedBody273_54 RemovedBody273_55

def RemovedBody273_57 : StackLang.HolProg 64 :=
.seq RemovedBody273_53 RemovedBody273_56

def RemovedBody273_58 : StackLang.HolProg 64 :=
.seq RemovedBody273_52 RemovedBody273_57

def RemovedBody273_59 : StackLang.HolProg 64 :=
.seq RemovedBody273_51 RemovedBody273_58

def RemovedBody273_60 : StackLang.HolProg 64 :=
.seq RemovedBody273_50 RemovedBody273_59

def RemovedBody273_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody273_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody273_63 : StackLang.HolProg 64 :=
.seq RemovedBody273_61 RemovedBody273_62

def RemovedBody273_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody273_60, 0, 273, 2)) (Sum.inl 161) (some (RemovedBody273_63, 273, 3))

def RemovedBody273_65 : StackLang.HolProg 64 :=
.seq RemovedBody273_49 RemovedBody273_64

def RemovedBody273_66 : StackLang.HolProg 64 :=
.seq RemovedBody273_48 RemovedBody273_65

def RemovedBody273_67 : StackLang.HolProg 64 :=
.seq RemovedBody273_47 RemovedBody273_66

def RemovedBody273_68 : StackLang.HolProg 64 :=
.seq RemovedBody273_18 RemovedBody273_67

def RemovedBody273_69 : StackLang.HolProg 64 :=
.seq RemovedBody273_15 RemovedBody273_68

def RemovedBody273_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody273_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody273_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody273_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 8#64)

def RemovedBody273_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody273_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 3#64)

def RemovedBody273_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody273_80 : StackLang.HolProg 64 :=
.seq RemovedBody273_78 RemovedBody273_79

def RemovedBody273_81 : StackLang.HolProg 64 :=
.seq RemovedBody273_77 RemovedBody273_80

def RemovedBody273_82 : StackLang.HolProg 64 :=
.seq RemovedBody273_76 RemovedBody273_81

def RemovedBody273_83 : StackLang.HolProg 64 :=
.seq RemovedBody273_75 RemovedBody273_82

def RemovedBody273_84 : StackLang.HolProg 64 :=
.seq RemovedBody273_74 RemovedBody273_83

def RemovedBody273_85 : StackLang.HolProg 64 :=
.seq RemovedBody273_73 RemovedBody273_84

def RemovedBody273_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody273_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody273_85 RemovedBody273_86

def RemovedBody273_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody273_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody273_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody273_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody273_92 : StackLang.HolProg 64 :=
.seq RemovedBody273_90 RemovedBody273_91

def RemovedBody273_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody273_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody273_95 : StackLang.HolProg 64 :=
.seq RemovedBody273_93 RemovedBody273_94

def RemovedBody273_96 : StackLang.HolProg 64 :=
.seq RemovedBody273_92 RemovedBody273_95

def RemovedBody273_97 : StackLang.HolProg 64 :=
.seq RemovedBody273_89 RemovedBody273_96

def RemovedBody273_98 : StackLang.HolProg 64 :=
.seq RemovedBody273_88 RemovedBody273_97

def RemovedBody273_99 : StackLang.HolProg 64 :=
.seq RemovedBody273_87 RemovedBody273_98

def RemovedBody273_100 : StackLang.HolProg 64 :=
.seq RemovedBody273_72 RemovedBody273_99

def RemovedBody273_101 : StackLang.HolProg 64 :=
.seq RemovedBody273_71 RemovedBody273_100

def RemovedBody273_102 : StackLang.HolProg 64 :=
.seq RemovedBody273_70 RemovedBody273_101

def RemovedBody273_103 : StackLang.HolProg 64 :=
.seq RemovedBody273_69 RemovedBody273_102

def RemovedBody273_104 : StackLang.HolProg 64 :=
.seq RemovedBody273_14 RemovedBody273_103

def RemovedBody273_105 : StackLang.HolProg 64 :=
.seq RemovedBody273_13 RemovedBody273_104

def RemovedBody273_106 : StackLang.HolProg 64 :=
.seq RemovedBody273_12 RemovedBody273_105

def RemovedBody273_107 : StackLang.HolProg 64 :=
.seq RemovedBody273_11 RemovedBody273_106

def RemovedBody273_108 : StackLang.HolProg 64 :=
.seq RemovedBody273_10 RemovedBody273_107

def RemovedBody273_109 : StackLang.HolProg 64 :=
.seq RemovedBody273_9 RemovedBody273_108

def RemovedBody273_110 : StackLang.HolProg 64 :=
.seq RemovedBody273_8 RemovedBody273_109

def RemovedBody273_111 : StackLang.HolProg 64 :=
.seq RemovedBody273_7 RemovedBody273_110

def RemovedBody273_112 : StackLang.HolProg 64 :=
.seq RemovedBody273_6 RemovedBody273_111

def Removed273 : Nat × StackLang.HolProg 64 := (273, RemovedBody273_112)
theorem Removed273_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc273 = Removed273 := by
  kernel_rfl
#print axioms Removed273_eq
end InitECandidate.Proofs.BackendStages
