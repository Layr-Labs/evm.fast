import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc294
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody294_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody294_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody294_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody294_3 : StackLang.HolProg 64 :=
.seq RemovedBody294_1 RemovedBody294_2

def RemovedBody294_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody294_3 RemovedBody294_4

def RemovedBody294_6 : StackLang.HolProg 64 :=
.seq RemovedBody294_0 RemovedBody294_5

def RemovedBody294_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody294_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 800#64)

def RemovedBody294_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody294_11 : StackLang.HolProg 64 :=
.seq RemovedBody294_9 RemovedBody294_10

def RemovedBody294_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody294_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody294_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody294_15 : StackLang.HolProg 64 :=
.seq RemovedBody294_13 RemovedBody294_14

def RemovedBody294_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody294_15 RemovedBody294_16

def RemovedBody294_18 : StackLang.HolProg 64 :=
.seq RemovedBody294_12 RemovedBody294_17

def RemovedBody294_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody294_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody294_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 294 3

def RemovedBody294_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody294_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody294_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody294_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody294_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody294_28 : StackLang.HolProg 64 :=
.seq RemovedBody294_26 RemovedBody294_27

def RemovedBody294_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody294_30 : StackLang.HolProg 64 :=
.seq RemovedBody294_28 RemovedBody294_29

def RemovedBody294_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody294_32 : StackLang.HolProg 64 :=
.seq RemovedBody294_30 RemovedBody294_31

def RemovedBody294_33 : StackLang.HolProg 64 :=
.seq RemovedBody294_25 RemovedBody294_32

def RemovedBody294_34 : StackLang.HolProg 64 :=
.seq RemovedBody294_24 RemovedBody294_33

def RemovedBody294_35 : StackLang.HolProg 64 :=
.seq RemovedBody294_23 RemovedBody294_34

def RemovedBody294_36 : StackLang.HolProg 64 :=
.seq RemovedBody294_22 RemovedBody294_35

def RemovedBody294_37 : StackLang.HolProg 64 :=
.seq RemovedBody294_21 RemovedBody294_36

def RemovedBody294_38 : StackLang.HolProg 64 :=
.seq RemovedBody294_20 RemovedBody294_37

def RemovedBody294_39 : StackLang.HolProg 64 :=
.seq RemovedBody294_19 RemovedBody294_38

def RemovedBody294_40 : StackLang.HolProg 64 :=
.seq RemovedBody294_18 RemovedBody294_39

def RemovedBody294_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody294_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody294_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody294_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody294_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody294_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody294_50 : StackLang.HolProg 64 :=
.seq RemovedBody294_48 RemovedBody294_49

def RemovedBody294_51 : StackLang.HolProg 64 :=
.seq RemovedBody294_47 RemovedBody294_50

def RemovedBody294_52 : StackLang.HolProg 64 :=
.seq RemovedBody294_46 RemovedBody294_51

def RemovedBody294_53 : StackLang.HolProg 64 :=
.seq RemovedBody294_45 RemovedBody294_52

def RemovedBody294_54 : StackLang.HolProg 64 :=
.seq RemovedBody294_44 RemovedBody294_53

def RemovedBody294_55 : StackLang.HolProg 64 :=
.seq RemovedBody294_43 RemovedBody294_54

def RemovedBody294_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 4
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody294_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody294_58 : StackLang.HolProg 64 :=
.seq RemovedBody294_56 RemovedBody294_57

def RemovedBody294_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody294_55, 0, 294, 2)) (Sum.inl 186) (some (RemovedBody294_58, 294, 3))

def RemovedBody294_60 : StackLang.HolProg 64 :=
.seq RemovedBody294_42 RemovedBody294_59

def RemovedBody294_61 : StackLang.HolProg 64 :=
.seq RemovedBody294_41 RemovedBody294_60

def RemovedBody294_62 : StackLang.HolProg 64 :=
.seq RemovedBody294_40 RemovedBody294_61

def RemovedBody294_63 : StackLang.HolProg 64 :=
.seq RemovedBody294_11 RemovedBody294_62

def RemovedBody294_64 : StackLang.HolProg 64 :=
.seq RemovedBody294_8 RemovedBody294_63

def RemovedBody294_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody294_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody294_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody294_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody294_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 0#64)

def RemovedBody294_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 3 0#64)

def RemovedBody294_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody294_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody294_75 : StackLang.HolProg 64 :=
.seq RemovedBody294_73 RemovedBody294_74

def RemovedBody294_76 : StackLang.HolProg 64 :=
.seq RemovedBody294_72 RemovedBody294_75

def RemovedBody294_77 : StackLang.HolProg 64 :=
.seq RemovedBody294_71 RemovedBody294_76

def RemovedBody294_78 : StackLang.HolProg 64 :=
.seq RemovedBody294_70 RemovedBody294_77

def RemovedBody294_79 : StackLang.HolProg 64 :=
.seq RemovedBody294_69 RemovedBody294_78

def RemovedBody294_80 : StackLang.HolProg 64 :=
.seq RemovedBody294_68 RemovedBody294_79

def RemovedBody294_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody294_80 RemovedBody294_81

def RemovedBody294_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody294_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody294_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 1#64)

def RemovedBody294_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 0#64))

def RemovedBody294_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 0 8#64))

def RemovedBody294_90 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody294_91 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody294_92 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 4

def RemovedBody294_93 : StackLang.HolProg 64 :=
.seq RemovedBody294_91 RemovedBody294_92

def RemovedBody294_94 : StackLang.HolProg 64 :=
.seq RemovedBody294_90 RemovedBody294_93

def RemovedBody294_95 : StackLang.HolProg 64 :=
.seq RemovedBody294_89 RemovedBody294_94

def RemovedBody294_96 : StackLang.HolProg 64 :=
.seq RemovedBody294_88 RemovedBody294_95

def RemovedBody294_97 : StackLang.HolProg 64 :=
.seq RemovedBody294_87 RemovedBody294_96

def RemovedBody294_98 : StackLang.HolProg 64 :=
.seq RemovedBody294_86 RemovedBody294_97

def RemovedBody294_99 : StackLang.HolProg 64 :=
.seq RemovedBody294_85 RemovedBody294_98

def RemovedBody294_100 : StackLang.HolProg 64 :=
.seq RemovedBody294_84 RemovedBody294_99

def RemovedBody294_101 : StackLang.HolProg 64 :=
.seq RemovedBody294_83 RemovedBody294_100

def RemovedBody294_102 : StackLang.HolProg 64 :=
.seq RemovedBody294_82 RemovedBody294_101

def RemovedBody294_103 : StackLang.HolProg 64 :=
.seq RemovedBody294_67 RemovedBody294_102

def RemovedBody294_104 : StackLang.HolProg 64 :=
.seq RemovedBody294_66 RemovedBody294_103

def RemovedBody294_105 : StackLang.HolProg 64 :=
.seq RemovedBody294_65 RemovedBody294_104

def RemovedBody294_106 : StackLang.HolProg 64 :=
.seq RemovedBody294_64 RemovedBody294_105

def RemovedBody294_107 : StackLang.HolProg 64 :=
.seq RemovedBody294_7 RemovedBody294_106

def RemovedBody294_108 : StackLang.HolProg 64 :=
.seq RemovedBody294_6 RemovedBody294_107

def Removed294 : Nat × StackLang.HolProg 64 := (294, RemovedBody294_108)
theorem Removed294_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc294 = Removed294 := by
  kernel_rfl
#print axioms Removed294_eq
end InitECandidate.Proofs.BackendStages
