import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc98
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody98_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody98_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody98_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody98_3 : StackLang.HolProg 64 :=
.seq RemovedBody98_1 RemovedBody98_2

def RemovedBody98_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody98_3 RemovedBody98_4

def RemovedBody98_6 : StackLang.HolProg 64 :=
.seq RemovedBody98_0 RemovedBody98_5

def RemovedBody98_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody98_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody98_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody98_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 18446744073709551576#64))

def RemovedBody98_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody98_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody98_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 640#64)

def RemovedBody98_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody98_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 43#64)

def RemovedBody98_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody98_19 : StackLang.HolProg 64 :=
.seq RemovedBody98_17 RemovedBody98_18

def RemovedBody98_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody98_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody98_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody98_23 : StackLang.HolProg 64 :=
.seq RemovedBody98_21 RemovedBody98_22

def RemovedBody98_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_25 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody98_23 RemovedBody98_24

def RemovedBody98_26 : StackLang.HolProg 64 :=
.seq RemovedBody98_20 RemovedBody98_25

def RemovedBody98_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody98_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody98_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 98 3

def RemovedBody98_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody98_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody98_32 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody98_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_34 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody98_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody98_36 : StackLang.HolProg 64 :=
.seq RemovedBody98_34 RemovedBody98_35

def RemovedBody98_37 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody98_38 : StackLang.HolProg 64 :=
.seq RemovedBody98_36 RemovedBody98_37

def RemovedBody98_39 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody98_40 : StackLang.HolProg 64 :=
.seq RemovedBody98_38 RemovedBody98_39

def RemovedBody98_41 : StackLang.HolProg 64 :=
.seq RemovedBody98_33 RemovedBody98_40

def RemovedBody98_42 : StackLang.HolProg 64 :=
.seq RemovedBody98_32 RemovedBody98_41

def RemovedBody98_43 : StackLang.HolProg 64 :=
.seq RemovedBody98_31 RemovedBody98_42

def RemovedBody98_44 : StackLang.HolProg 64 :=
.seq RemovedBody98_30 RemovedBody98_43

def RemovedBody98_45 : StackLang.HolProg 64 :=
.seq RemovedBody98_29 RemovedBody98_44

def RemovedBody98_46 : StackLang.HolProg 64 :=
.seq RemovedBody98_28 RemovedBody98_45

def RemovedBody98_47 : StackLang.HolProg 64 :=
.seq RemovedBody98_27 RemovedBody98_46

def RemovedBody98_48 : StackLang.HolProg 64 :=
.seq RemovedBody98_26 RemovedBody98_47

def RemovedBody98_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody98_53 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody98_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody98_55 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody98_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody98_57 : StackLang.HolProg 64 :=
.seq RemovedBody98_55 RemovedBody98_56

def RemovedBody98_58 : StackLang.HolProg 64 :=
.seq RemovedBody98_54 RemovedBody98_57

def RemovedBody98_59 : StackLang.HolProg 64 :=
.seq RemovedBody98_53 RemovedBody98_58

def RemovedBody98_60 : StackLang.HolProg 64 :=
.seq RemovedBody98_52 RemovedBody98_59

def RemovedBody98_61 : StackLang.HolProg 64 :=
.seq RemovedBody98_51 RemovedBody98_60

def RemovedBody98_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody98_63 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody98_64 : StackLang.HolProg 64 :=
.seq RemovedBody98_62 RemovedBody98_63

def RemovedBody98_65 : StackLang.HolProg 64 :=
.call (some (RemovedBody98_61, 0, 98, 2)) (Sum.inl 68) (some (RemovedBody98_64, 98, 3))

def RemovedBody98_66 : StackLang.HolProg 64 :=
.seq RemovedBody98_50 RemovedBody98_65

def RemovedBody98_67 : StackLang.HolProg 64 :=
.seq RemovedBody98_49 RemovedBody98_66

def RemovedBody98_68 : StackLang.HolProg 64 :=
.seq RemovedBody98_48 RemovedBody98_67

def RemovedBody98_69 : StackLang.HolProg 64 :=
.seq RemovedBody98_19 RemovedBody98_68

def RemovedBody98_70 : StackLang.HolProg 64 :=
.seq RemovedBody98_16 RemovedBody98_69

def RemovedBody98_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody98_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody98_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody98_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody98_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551576#64)))

def RemovedBody98_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_77 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 1 0#64))

def RemovedBody98_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_79 : StackLang.HolProg 64 :=
.seq RemovedBody98_77 RemovedBody98_78

def RemovedBody98_80 : StackLang.HolProg 64 :=
.seq RemovedBody98_76 RemovedBody98_79

def RemovedBody98_81 : StackLang.HolProg 64 :=
.seq RemovedBody98_75 RemovedBody98_80

def RemovedBody98_82 : StackLang.HolProg 64 :=
.seq RemovedBody98_74 RemovedBody98_81

def RemovedBody98_83 : StackLang.HolProg 64 :=
.seq RemovedBody98_73 RemovedBody98_82

def RemovedBody98_84 : StackLang.HolProg 64 :=
.seq RemovedBody98_72 RemovedBody98_83

def RemovedBody98_85 : StackLang.HolProg 64 :=
.seq RemovedBody98_71 RemovedBody98_84

def RemovedBody98_86 : StackLang.HolProg 64 :=
.seq RemovedBody98_70 RemovedBody98_85

def RemovedBody98_87 : StackLang.HolProg 64 :=
.seq RemovedBody98_15 RemovedBody98_86

def RemovedBody98_88 : StackLang.HolProg 64 :=
.seq RemovedBody98_14 RemovedBody98_87

def RemovedBody98_89 : StackLang.HolProg 64 :=
.seq RemovedBody98_13 RemovedBody98_88

def RemovedBody98_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody98_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_92 : StackLang.HolProg 64 :=
.seq RemovedBody98_90 RemovedBody98_91

def RemovedBody98_93 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody98_89 RemovedBody98_92

def RemovedBody98_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody98_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody98_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody98_97 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody98_98 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody98_99 : StackLang.HolProg 64 :=
.seq RemovedBody98_97 RemovedBody98_98

def RemovedBody98_100 : StackLang.HolProg 64 :=
.seq RemovedBody98_96 RemovedBody98_99

def RemovedBody98_101 : StackLang.HolProg 64 :=
.seq RemovedBody98_95 RemovedBody98_100

def RemovedBody98_102 : StackLang.HolProg 64 :=
.seq RemovedBody98_94 RemovedBody98_101

def RemovedBody98_103 : StackLang.HolProg 64 :=
.seq RemovedBody98_93 RemovedBody98_102

def RemovedBody98_104 : StackLang.HolProg 64 :=
.seq RemovedBody98_12 RemovedBody98_103

def RemovedBody98_105 : StackLang.HolProg 64 :=
.seq RemovedBody98_11 RemovedBody98_104

def RemovedBody98_106 : StackLang.HolProg 64 :=
.seq RemovedBody98_10 RemovedBody98_105

def RemovedBody98_107 : StackLang.HolProg 64 :=
.seq RemovedBody98_9 RemovedBody98_106

def RemovedBody98_108 : StackLang.HolProg 64 :=
.seq RemovedBody98_8 RemovedBody98_107

def RemovedBody98_109 : StackLang.HolProg 64 :=
.seq RemovedBody98_7 RemovedBody98_108

def RemovedBody98_110 : StackLang.HolProg 64 :=
.seq RemovedBody98_6 RemovedBody98_109

def Removed98 : Nat × StackLang.HolProg 64 := (98, RemovedBody98_110)
theorem Removed98_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc98 = Removed98 := by
  kernel_rfl
#print axioms Removed98_eq
end InitECandidate.Proofs.BackendStages
