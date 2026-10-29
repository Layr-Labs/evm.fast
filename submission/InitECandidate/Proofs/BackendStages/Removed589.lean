import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc589
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody589_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody589_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody589_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody589_3 : StackLang.HolProg 64 :=
.seq RemovedBody589_1 RemovedBody589_2

def RemovedBody589_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody589_3 RemovedBody589_4

def RemovedBody589_6 : StackLang.HolProg 64 :=
.seq RemovedBody589_0 RemovedBody589_5

def RemovedBody589_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody589_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody589_9 : StackLang.HolProg 64 :=
.seq RemovedBody589_7 RemovedBody589_8

def RemovedBody589_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2102#64)

def RemovedBody589_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody589_13 : StackLang.HolProg 64 :=
.seq RemovedBody589_11 RemovedBody589_12

def RemovedBody589_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody589_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody589_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody589_17 : StackLang.HolProg 64 :=
.seq RemovedBody589_15 RemovedBody589_16

def RemovedBody589_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody589_17 RemovedBody589_18

def RemovedBody589_20 : StackLang.HolProg 64 :=
.seq RemovedBody589_14 RemovedBody589_19

def RemovedBody589_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody589_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody589_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 589 3

def RemovedBody589_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody589_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody589_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody589_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody589_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody589_30 : StackLang.HolProg 64 :=
.seq RemovedBody589_28 RemovedBody589_29

def RemovedBody589_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody589_32 : StackLang.HolProg 64 :=
.seq RemovedBody589_30 RemovedBody589_31

def RemovedBody589_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody589_34 : StackLang.HolProg 64 :=
.seq RemovedBody589_32 RemovedBody589_33

def RemovedBody589_35 : StackLang.HolProg 64 :=
.seq RemovedBody589_27 RemovedBody589_34

def RemovedBody589_36 : StackLang.HolProg 64 :=
.seq RemovedBody589_26 RemovedBody589_35

def RemovedBody589_37 : StackLang.HolProg 64 :=
.seq RemovedBody589_25 RemovedBody589_36

def RemovedBody589_38 : StackLang.HolProg 64 :=
.seq RemovedBody589_24 RemovedBody589_37

def RemovedBody589_39 : StackLang.HolProg 64 :=
.seq RemovedBody589_23 RemovedBody589_38

def RemovedBody589_40 : StackLang.HolProg 64 :=
.seq RemovedBody589_22 RemovedBody589_39

def RemovedBody589_41 : StackLang.HolProg 64 :=
.seq RemovedBody589_21 RemovedBody589_40

def RemovedBody589_42 : StackLang.HolProg 64 :=
.seq RemovedBody589_20 RemovedBody589_41

def RemovedBody589_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody589_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody589_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody589_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody589_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody589_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody589_52 : StackLang.HolProg 64 :=
.seq RemovedBody589_50 RemovedBody589_51

def RemovedBody589_53 : StackLang.HolProg 64 :=
.seq RemovedBody589_49 RemovedBody589_52

def RemovedBody589_54 : StackLang.HolProg 64 :=
.seq RemovedBody589_48 RemovedBody589_53

def RemovedBody589_55 : StackLang.HolProg 64 :=
.seq RemovedBody589_47 RemovedBody589_54

def RemovedBody589_56 : StackLang.HolProg 64 :=
.seq RemovedBody589_46 RemovedBody589_55

def RemovedBody589_57 : StackLang.HolProg 64 :=
.seq RemovedBody589_45 RemovedBody589_56

def RemovedBody589_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody589_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody589_60 : StackLang.HolProg 64 :=
.seq RemovedBody589_58 RemovedBody589_59

def RemovedBody589_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody589_62 : StackLang.HolProg 64 :=
.seq RemovedBody589_60 RemovedBody589_61

def RemovedBody589_63 : StackLang.HolProg 64 :=
.call (some (RemovedBody589_57, 0, 589, 2)) (Sum.inl 468) (some (RemovedBody589_62, 589, 3))

def RemovedBody589_64 : StackLang.HolProg 64 :=
.seq RemovedBody589_44 RemovedBody589_63

def RemovedBody589_65 : StackLang.HolProg 64 :=
.seq RemovedBody589_43 RemovedBody589_64

def RemovedBody589_66 : StackLang.HolProg 64 :=
.seq RemovedBody589_42 RemovedBody589_65

def RemovedBody589_67 : StackLang.HolProg 64 :=
.seq RemovedBody589_13 RemovedBody589_66

def RemovedBody589_68 : StackLang.HolProg 64 :=
.seq RemovedBody589_10 RemovedBody589_67

def RemovedBody589_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody589_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody589_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody589_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody589_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody589_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody589_77 : StackLang.HolProg 64 :=
.seq RemovedBody589_75 RemovedBody589_76

def RemovedBody589_78 : StackLang.HolProg 64 :=
.seq RemovedBody589_74 RemovedBody589_77

def RemovedBody589_79 : StackLang.HolProg 64 :=
.seq RemovedBody589_73 RemovedBody589_78

def RemovedBody589_80 : StackLang.HolProg 64 :=
.seq RemovedBody589_72 RemovedBody589_79

def RemovedBody589_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 2 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1) RemovedBody589_80 RemovedBody589_81

def RemovedBody589_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody589_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody589_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody589_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody589_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody589_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody589_90 : StackLang.HolProg 64 :=
.seq RemovedBody589_88 RemovedBody589_89

def RemovedBody589_91 : StackLang.HolProg 64 :=
.seq RemovedBody589_87 RemovedBody589_90

def RemovedBody589_92 : StackLang.HolProg 64 :=
.seq RemovedBody589_86 RemovedBody589_91

def RemovedBody589_93 : StackLang.HolProg 64 :=
.seq RemovedBody589_85 RemovedBody589_92

def RemovedBody589_94 : StackLang.HolProg 64 :=
.seq RemovedBody589_84 RemovedBody589_93

def RemovedBody589_95 : StackLang.HolProg 64 :=
.seq RemovedBody589_83 RemovedBody589_94

def RemovedBody589_96 : StackLang.HolProg 64 :=
.seq RemovedBody589_82 RemovedBody589_95

def RemovedBody589_97 : StackLang.HolProg 64 :=
.seq RemovedBody589_71 RemovedBody589_96

def RemovedBody589_98 : StackLang.HolProg 64 :=
.seq RemovedBody589_70 RemovedBody589_97

def RemovedBody589_99 : StackLang.HolProg 64 :=
.seq RemovedBody589_69 RemovedBody589_98

def RemovedBody589_100 : StackLang.HolProg 64 :=
.seq RemovedBody589_68 RemovedBody589_99

def RemovedBody589_101 : StackLang.HolProg 64 :=
.seq RemovedBody589_9 RemovedBody589_100

def RemovedBody589_102 : StackLang.HolProg 64 :=
.seq RemovedBody589_6 RemovedBody589_101

def Removed589 : Nat × StackLang.HolProg 64 := (589, RemovedBody589_102)
theorem Removed589_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc589 = Removed589 := by
  kernel_rfl
#print axioms Removed589_eq
end InitECandidate.Proofs.BackendStages
