import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc341
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody341_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody341_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody341_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody341_3 : StackLang.HolProg 64 :=
.seq RemovedBody341_1 RemovedBody341_2

def RemovedBody341_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody341_3 RemovedBody341_4

def RemovedBody341_6 : StackLang.HolProg 64 :=
.seq RemovedBody341_0 RemovedBody341_5

def RemovedBody341_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 4#64)))

def RemovedBody341_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody341_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody341_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 8#64))

def RemovedBody341_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody341_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 975#64)

def RemovedBody341_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody341_18 : StackLang.HolProg 64 :=
.seq RemovedBody341_16 RemovedBody341_17

def RemovedBody341_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody341_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody341_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody341_22 : StackLang.HolProg 64 :=
.seq RemovedBody341_20 RemovedBody341_21

def RemovedBody341_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_24 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody341_22 RemovedBody341_23

def RemovedBody341_25 : StackLang.HolProg 64 :=
.seq RemovedBody341_19 RemovedBody341_24

def RemovedBody341_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody341_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody341_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 341 3

def RemovedBody341_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody341_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody341_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody341_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody341_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody341_35 : StackLang.HolProg 64 :=
.seq RemovedBody341_33 RemovedBody341_34

def RemovedBody341_36 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody341_37 : StackLang.HolProg 64 :=
.seq RemovedBody341_35 RemovedBody341_36

def RemovedBody341_38 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody341_39 : StackLang.HolProg 64 :=
.seq RemovedBody341_37 RemovedBody341_38

def RemovedBody341_40 : StackLang.HolProg 64 :=
.seq RemovedBody341_32 RemovedBody341_39

def RemovedBody341_41 : StackLang.HolProg 64 :=
.seq RemovedBody341_31 RemovedBody341_40

def RemovedBody341_42 : StackLang.HolProg 64 :=
.seq RemovedBody341_30 RemovedBody341_41

def RemovedBody341_43 : StackLang.HolProg 64 :=
.seq RemovedBody341_29 RemovedBody341_42

def RemovedBody341_44 : StackLang.HolProg 64 :=
.seq RemovedBody341_28 RemovedBody341_43

def RemovedBody341_45 : StackLang.HolProg 64 :=
.seq RemovedBody341_27 RemovedBody341_44

def RemovedBody341_46 : StackLang.HolProg 64 :=
.seq RemovedBody341_26 RemovedBody341_45

def RemovedBody341_47 : StackLang.HolProg 64 :=
.seq RemovedBody341_25 RemovedBody341_46

def RemovedBody341_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody341_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody341_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody341_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody341_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody341_56 : StackLang.HolProg 64 :=
.seq RemovedBody341_54 RemovedBody341_55

def RemovedBody341_57 : StackLang.HolProg 64 :=
.seq RemovedBody341_53 RemovedBody341_56

def RemovedBody341_58 : StackLang.HolProg 64 :=
.seq RemovedBody341_52 RemovedBody341_57

def RemovedBody341_59 : StackLang.HolProg 64 :=
.seq RemovedBody341_51 RemovedBody341_58

def RemovedBody341_60 : StackLang.HolProg 64 :=
.seq RemovedBody341_50 RemovedBody341_59

def RemovedBody341_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody341_62 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody341_63 : StackLang.HolProg 64 :=
.seq RemovedBody341_61 RemovedBody341_62

def RemovedBody341_64 : StackLang.HolProg 64 :=
.call (some (RemovedBody341_60, 0, 341, 2)) (Sum.inl 161) (some (RemovedBody341_63, 341, 3))

def RemovedBody341_65 : StackLang.HolProg 64 :=
.seq RemovedBody341_49 RemovedBody341_64

def RemovedBody341_66 : StackLang.HolProg 64 :=
.seq RemovedBody341_48 RemovedBody341_65

def RemovedBody341_67 : StackLang.HolProg 64 :=
.seq RemovedBody341_47 RemovedBody341_66

def RemovedBody341_68 : StackLang.HolProg 64 :=
.seq RemovedBody341_18 RemovedBody341_67

def RemovedBody341_69 : StackLang.HolProg 64 :=
.seq RemovedBody341_15 RemovedBody341_68

def RemovedBody341_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody341_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody341_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody341_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 18#64)

def RemovedBody341_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody341_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody341_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_79 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody341_80 : StackLang.HolProg 64 :=
.seq RemovedBody341_78 RemovedBody341_79

def RemovedBody341_81 : StackLang.HolProg 64 :=
.seq RemovedBody341_77 RemovedBody341_80

def RemovedBody341_82 : StackLang.HolProg 64 :=
.seq RemovedBody341_76 RemovedBody341_81

def RemovedBody341_83 : StackLang.HolProg 64 :=
.seq RemovedBody341_75 RemovedBody341_82

def RemovedBody341_84 : StackLang.HolProg 64 :=
.seq RemovedBody341_74 RemovedBody341_83

def RemovedBody341_85 : StackLang.HolProg 64 :=
.seq RemovedBody341_73 RemovedBody341_84

def RemovedBody341_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody341_87 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 0 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody341_85 RemovedBody341_86

def RemovedBody341_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody341_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody341_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody341_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody341_92 : StackLang.HolProg 64 :=
.seq RemovedBody341_90 RemovedBody341_91

def RemovedBody341_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody341_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody341_95 : StackLang.HolProg 64 :=
.seq RemovedBody341_93 RemovedBody341_94

def RemovedBody341_96 : StackLang.HolProg 64 :=
.seq RemovedBody341_92 RemovedBody341_95

def RemovedBody341_97 : StackLang.HolProg 64 :=
.seq RemovedBody341_89 RemovedBody341_96

def RemovedBody341_98 : StackLang.HolProg 64 :=
.seq RemovedBody341_88 RemovedBody341_97

def RemovedBody341_99 : StackLang.HolProg 64 :=
.seq RemovedBody341_87 RemovedBody341_98

def RemovedBody341_100 : StackLang.HolProg 64 :=
.seq RemovedBody341_72 RemovedBody341_99

def RemovedBody341_101 : StackLang.HolProg 64 :=
.seq RemovedBody341_71 RemovedBody341_100

def RemovedBody341_102 : StackLang.HolProg 64 :=
.seq RemovedBody341_70 RemovedBody341_101

def RemovedBody341_103 : StackLang.HolProg 64 :=
.seq RemovedBody341_69 RemovedBody341_102

def RemovedBody341_104 : StackLang.HolProg 64 :=
.seq RemovedBody341_14 RemovedBody341_103

def RemovedBody341_105 : StackLang.HolProg 64 :=
.seq RemovedBody341_13 RemovedBody341_104

def RemovedBody341_106 : StackLang.HolProg 64 :=
.seq RemovedBody341_12 RemovedBody341_105

def RemovedBody341_107 : StackLang.HolProg 64 :=
.seq RemovedBody341_11 RemovedBody341_106

def RemovedBody341_108 : StackLang.HolProg 64 :=
.seq RemovedBody341_10 RemovedBody341_107

def RemovedBody341_109 : StackLang.HolProg 64 :=
.seq RemovedBody341_9 RemovedBody341_108

def RemovedBody341_110 : StackLang.HolProg 64 :=
.seq RemovedBody341_8 RemovedBody341_109

def RemovedBody341_111 : StackLang.HolProg 64 :=
.seq RemovedBody341_7 RemovedBody341_110

def RemovedBody341_112 : StackLang.HolProg 64 :=
.seq RemovedBody341_6 RemovedBody341_111

def Removed341 : Nat × StackLang.HolProg 64 := (341, RemovedBody341_112)
theorem Removed341_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc341 = Removed341 := by
  kernel_rfl
#print axioms Removed341_eq
end InitECandidate.Proofs.BackendStages
