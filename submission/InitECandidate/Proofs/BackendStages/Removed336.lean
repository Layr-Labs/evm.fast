import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc336
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody336_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody336_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody336_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody336_3 : StackLang.HolProg 64 :=
.seq RemovedBody336_1 RemovedBody336_2

def RemovedBody336_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody336_3 RemovedBody336_4

def RemovedBody336_6 : StackLang.HolProg 64 :=
.seq RemovedBody336_0 RemovedBody336_5

def RemovedBody336_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody336_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 970#64)

def RemovedBody336_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody336_11 : StackLang.HolProg 64 :=
.seq RemovedBody336_9 RemovedBody336_10

def RemovedBody336_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody336_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody336_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody336_15 : StackLang.HolProg 64 :=
.seq RemovedBody336_13 RemovedBody336_14

def RemovedBody336_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody336_15 RemovedBody336_16

def RemovedBody336_18 : StackLang.HolProg 64 :=
.seq RemovedBody336_12 RemovedBody336_17

def RemovedBody336_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody336_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody336_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 336 3

def RemovedBody336_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody336_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody336_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody336_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody336_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody336_28 : StackLang.HolProg 64 :=
.seq RemovedBody336_26 RemovedBody336_27

def RemovedBody336_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody336_30 : StackLang.HolProg 64 :=
.seq RemovedBody336_28 RemovedBody336_29

def RemovedBody336_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody336_32 : StackLang.HolProg 64 :=
.seq RemovedBody336_30 RemovedBody336_31

def RemovedBody336_33 : StackLang.HolProg 64 :=
.seq RemovedBody336_25 RemovedBody336_32

def RemovedBody336_34 : StackLang.HolProg 64 :=
.seq RemovedBody336_24 RemovedBody336_33

def RemovedBody336_35 : StackLang.HolProg 64 :=
.seq RemovedBody336_23 RemovedBody336_34

def RemovedBody336_36 : StackLang.HolProg 64 :=
.seq RemovedBody336_22 RemovedBody336_35

def RemovedBody336_37 : StackLang.HolProg 64 :=
.seq RemovedBody336_21 RemovedBody336_36

def RemovedBody336_38 : StackLang.HolProg 64 :=
.seq RemovedBody336_20 RemovedBody336_37

def RemovedBody336_39 : StackLang.HolProg 64 :=
.seq RemovedBody336_19 RemovedBody336_38

def RemovedBody336_40 : StackLang.HolProg 64 :=
.seq RemovedBody336_18 RemovedBody336_39

def RemovedBody336_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody336_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody336_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody336_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody336_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody336_49 : StackLang.HolProg 64 :=
.seq RemovedBody336_47 RemovedBody336_48

def RemovedBody336_50 : StackLang.HolProg 64 :=
.seq RemovedBody336_46 RemovedBody336_49

def RemovedBody336_51 : StackLang.HolProg 64 :=
.seq RemovedBody336_45 RemovedBody336_50

def RemovedBody336_52 : StackLang.HolProg 64 :=
.seq RemovedBody336_44 RemovedBody336_51

def RemovedBody336_53 : StackLang.HolProg 64 :=
.seq RemovedBody336_43 RemovedBody336_52

def RemovedBody336_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody336_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody336_56 : StackLang.HolProg 64 :=
.seq RemovedBody336_54 RemovedBody336_55

def RemovedBody336_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody336_53, 0, 336, 2)) (Sum.inl 335) (some (RemovedBody336_56, 336, 3))

def RemovedBody336_58 : StackLang.HolProg 64 :=
.seq RemovedBody336_42 RemovedBody336_57

def RemovedBody336_59 : StackLang.HolProg 64 :=
.seq RemovedBody336_41 RemovedBody336_58

def RemovedBody336_60 : StackLang.HolProg 64 :=
.seq RemovedBody336_40 RemovedBody336_59

def RemovedBody336_61 : StackLang.HolProg 64 :=
.seq RemovedBody336_11 RemovedBody336_60

def RemovedBody336_62 : StackLang.HolProg 64 :=
.seq RemovedBody336_8 RemovedBody336_61

def RemovedBody336_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody336_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 32#64)

def RemovedBody336_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody336_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 13#64)

def RemovedBody336_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody336_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 6#64)

def RemovedBody336_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_72 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody336_73 : StackLang.HolProg 64 :=
.seq RemovedBody336_71 RemovedBody336_72

def RemovedBody336_74 : StackLang.HolProg 64 :=
.seq RemovedBody336_70 RemovedBody336_73

def RemovedBody336_75 : StackLang.HolProg 64 :=
.seq RemovedBody336_69 RemovedBody336_74

def RemovedBody336_76 : StackLang.HolProg 64 :=
.seq RemovedBody336_68 RemovedBody336_75

def RemovedBody336_77 : StackLang.HolProg 64 :=
.seq RemovedBody336_67 RemovedBody336_76

def RemovedBody336_78 : StackLang.HolProg 64 :=
.seq RemovedBody336_66 RemovedBody336_77

def RemovedBody336_79 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_80 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2) RemovedBody336_78 RemovedBody336_79

def RemovedBody336_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody336_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody336_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody336_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody336_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody336_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody336_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody336_89 : StackLang.HolProg 64 :=
.seq RemovedBody336_87 RemovedBody336_88

def RemovedBody336_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody336_91 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody336_89 RemovedBody336_90

def RemovedBody336_92 : StackLang.HolProg 64 :=
.seq RemovedBody336_86 RemovedBody336_91

def RemovedBody336_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 146

def RemovedBody336_94 : StackLang.HolProg 64 :=
.seq RemovedBody336_92 RemovedBody336_93

def RemovedBody336_95 : StackLang.HolProg 64 :=
.seq RemovedBody336_85 RemovedBody336_94

def RemovedBody336_96 : StackLang.HolProg 64 :=
.seq RemovedBody336_84 RemovedBody336_95

def RemovedBody336_97 : StackLang.HolProg 64 :=
.seq RemovedBody336_83 RemovedBody336_96

def RemovedBody336_98 : StackLang.HolProg 64 :=
.seq RemovedBody336_82 RemovedBody336_97

def RemovedBody336_99 : StackLang.HolProg 64 :=
.seq RemovedBody336_81 RemovedBody336_98

def RemovedBody336_100 : StackLang.HolProg 64 :=
.seq RemovedBody336_80 RemovedBody336_99

def RemovedBody336_101 : StackLang.HolProg 64 :=
.seq RemovedBody336_65 RemovedBody336_100

def RemovedBody336_102 : StackLang.HolProg 64 :=
.seq RemovedBody336_64 RemovedBody336_101

def RemovedBody336_103 : StackLang.HolProg 64 :=
.seq RemovedBody336_63 RemovedBody336_102

def RemovedBody336_104 : StackLang.HolProg 64 :=
.seq RemovedBody336_62 RemovedBody336_103

def RemovedBody336_105 : StackLang.HolProg 64 :=
.seq RemovedBody336_7 RemovedBody336_104

def RemovedBody336_106 : StackLang.HolProg 64 :=
.seq RemovedBody336_6 RemovedBody336_105

def Removed336 : Nat × StackLang.HolProg 64 := (336, RemovedBody336_106)
theorem Removed336_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc336 = Removed336 := by
  kernel_rfl
#print axioms Removed336_eq
end InitECandidate.Proofs.BackendStages
