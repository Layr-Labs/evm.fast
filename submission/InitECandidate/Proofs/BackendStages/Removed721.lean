import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc721
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody721_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody721_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody721_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody721_3 : StackLang.HolProg 64 :=
.seq RemovedBody721_1 RemovedBody721_2

def RemovedBody721_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody721_3 RemovedBody721_4

def RemovedBody721_6 : StackLang.HolProg 64 :=
.seq RemovedBody721_0 RemovedBody721_5

def RemovedBody721_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody721_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3242#64)

def RemovedBody721_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody721_11 : StackLang.HolProg 64 :=
.seq RemovedBody721_9 RemovedBody721_10

def RemovedBody721_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody721_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody721_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody721_15 : StackLang.HolProg 64 :=
.seq RemovedBody721_13 RemovedBody721_14

def RemovedBody721_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody721_15 RemovedBody721_16

def RemovedBody721_18 : StackLang.HolProg 64 :=
.seq RemovedBody721_12 RemovedBody721_17

def RemovedBody721_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody721_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody721_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 721 3

def RemovedBody721_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody721_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody721_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody721_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody721_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody721_28 : StackLang.HolProg 64 :=
.seq RemovedBody721_26 RemovedBody721_27

def RemovedBody721_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody721_30 : StackLang.HolProg 64 :=
.seq RemovedBody721_28 RemovedBody721_29

def RemovedBody721_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody721_32 : StackLang.HolProg 64 :=
.seq RemovedBody721_30 RemovedBody721_31

def RemovedBody721_33 : StackLang.HolProg 64 :=
.seq RemovedBody721_25 RemovedBody721_32

def RemovedBody721_34 : StackLang.HolProg 64 :=
.seq RemovedBody721_24 RemovedBody721_33

def RemovedBody721_35 : StackLang.HolProg 64 :=
.seq RemovedBody721_23 RemovedBody721_34

def RemovedBody721_36 : StackLang.HolProg 64 :=
.seq RemovedBody721_22 RemovedBody721_35

def RemovedBody721_37 : StackLang.HolProg 64 :=
.seq RemovedBody721_21 RemovedBody721_36

def RemovedBody721_38 : StackLang.HolProg 64 :=
.seq RemovedBody721_20 RemovedBody721_37

def RemovedBody721_39 : StackLang.HolProg 64 :=
.seq RemovedBody721_19 RemovedBody721_38

def RemovedBody721_40 : StackLang.HolProg 64 :=
.seq RemovedBody721_18 RemovedBody721_39

def RemovedBody721_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody721_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody721_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody721_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody721_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody721_49 : StackLang.HolProg 64 :=
.seq RemovedBody721_47 RemovedBody721_48

def RemovedBody721_50 : StackLang.HolProg 64 :=
.seq RemovedBody721_46 RemovedBody721_49

def RemovedBody721_51 : StackLang.HolProg 64 :=
.seq RemovedBody721_45 RemovedBody721_50

def RemovedBody721_52 : StackLang.HolProg 64 :=
.seq RemovedBody721_44 RemovedBody721_51

def RemovedBody721_53 : StackLang.HolProg 64 :=
.seq RemovedBody721_43 RemovedBody721_52

def RemovedBody721_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody721_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody721_56 : StackLang.HolProg 64 :=
.seq RemovedBody721_54 RemovedBody721_55

def RemovedBody721_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody721_53, 0, 721, 2)) (Sum.inl 720) (some (RemovedBody721_56, 721, 3))

def RemovedBody721_58 : StackLang.HolProg 64 :=
.seq RemovedBody721_42 RemovedBody721_57

def RemovedBody721_59 : StackLang.HolProg 64 :=
.seq RemovedBody721_41 RemovedBody721_58

def RemovedBody721_60 : StackLang.HolProg 64 :=
.seq RemovedBody721_40 RemovedBody721_59

def RemovedBody721_61 : StackLang.HolProg 64 :=
.seq RemovedBody721_11 RemovedBody721_60

def RemovedBody721_62 : StackLang.HolProg 64 :=
.seq RemovedBody721_8 RemovedBody721_61

def RemovedBody721_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody721_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def RemovedBody721_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 12 767358375875140941#64)

def RemovedBody721_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 11 2671430854784468776#64)

def RemovedBody721_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 3801124253586036577#64)

def RemovedBody721_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11120290361046346205#64)

def RemovedBody721_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3557706395579559416#64)

def RemovedBody721_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17098105564519244256#64)

def RemovedBody721_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody721_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def RemovedBody721_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody721_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody721_77 : StackLang.HolProg 64 :=
.seq RemovedBody721_75 RemovedBody721_76

def RemovedBody721_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody721_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody721_77 RemovedBody721_78

def RemovedBody721_80 : StackLang.HolProg 64 :=
.seq RemovedBody721_74 RemovedBody721_79

def RemovedBody721_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 714

def RemovedBody721_82 : StackLang.HolProg 64 :=
.seq RemovedBody721_80 RemovedBody721_81

def RemovedBody721_83 : StackLang.HolProg 64 :=
.seq RemovedBody721_73 RemovedBody721_82

def RemovedBody721_84 : StackLang.HolProg 64 :=
.seq RemovedBody721_72 RemovedBody721_83

def RemovedBody721_85 : StackLang.HolProg 64 :=
.seq RemovedBody721_71 RemovedBody721_84

def RemovedBody721_86 : StackLang.HolProg 64 :=
.seq RemovedBody721_70 RemovedBody721_85

def RemovedBody721_87 : StackLang.HolProg 64 :=
.seq RemovedBody721_69 RemovedBody721_86

def RemovedBody721_88 : StackLang.HolProg 64 :=
.seq RemovedBody721_68 RemovedBody721_87

def RemovedBody721_89 : StackLang.HolProg 64 :=
.seq RemovedBody721_67 RemovedBody721_88

def RemovedBody721_90 : StackLang.HolProg 64 :=
.seq RemovedBody721_66 RemovedBody721_89

def RemovedBody721_91 : StackLang.HolProg 64 :=
.seq RemovedBody721_65 RemovedBody721_90

def RemovedBody721_92 : StackLang.HolProg 64 :=
.seq RemovedBody721_64 RemovedBody721_91

def RemovedBody721_93 : StackLang.HolProg 64 :=
.seq RemovedBody721_63 RemovedBody721_92

def RemovedBody721_94 : StackLang.HolProg 64 :=
.seq RemovedBody721_62 RemovedBody721_93

def RemovedBody721_95 : StackLang.HolProg 64 :=
.seq RemovedBody721_7 RemovedBody721_94

def RemovedBody721_96 : StackLang.HolProg 64 :=
.seq RemovedBody721_6 RemovedBody721_95

def Removed721 : Nat × StackLang.HolProg 64 := (721, RemovedBody721_96)
theorem Removed721_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc721 = Removed721 := by
  kernel_rfl
#print axioms Removed721_eq
end InitECandidate.Proofs.BackendStages
