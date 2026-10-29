import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc723
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody723_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody723_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody723_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody723_3 : StackLang.HolProg 64 :=
.seq RemovedBody723_1 RemovedBody723_2

def RemovedBody723_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody723_3 RemovedBody723_4

def RemovedBody723_6 : StackLang.HolProg 64 :=
.seq RemovedBody723_0 RemovedBody723_5

def RemovedBody723_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody723_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3245#64)

def RemovedBody723_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody723_11 : StackLang.HolProg 64 :=
.seq RemovedBody723_9 RemovedBody723_10

def RemovedBody723_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody723_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody723_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody723_15 : StackLang.HolProg 64 :=
.seq RemovedBody723_13 RemovedBody723_14

def RemovedBody723_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody723_15 RemovedBody723_16

def RemovedBody723_18 : StackLang.HolProg 64 :=
.seq RemovedBody723_12 RemovedBody723_17

def RemovedBody723_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody723_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody723_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 723 3

def RemovedBody723_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody723_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody723_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody723_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody723_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody723_28 : StackLang.HolProg 64 :=
.seq RemovedBody723_26 RemovedBody723_27

def RemovedBody723_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody723_30 : StackLang.HolProg 64 :=
.seq RemovedBody723_28 RemovedBody723_29

def RemovedBody723_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody723_32 : StackLang.HolProg 64 :=
.seq RemovedBody723_30 RemovedBody723_31

def RemovedBody723_33 : StackLang.HolProg 64 :=
.seq RemovedBody723_25 RemovedBody723_32

def RemovedBody723_34 : StackLang.HolProg 64 :=
.seq RemovedBody723_24 RemovedBody723_33

def RemovedBody723_35 : StackLang.HolProg 64 :=
.seq RemovedBody723_23 RemovedBody723_34

def RemovedBody723_36 : StackLang.HolProg 64 :=
.seq RemovedBody723_22 RemovedBody723_35

def RemovedBody723_37 : StackLang.HolProg 64 :=
.seq RemovedBody723_21 RemovedBody723_36

def RemovedBody723_38 : StackLang.HolProg 64 :=
.seq RemovedBody723_20 RemovedBody723_37

def RemovedBody723_39 : StackLang.HolProg 64 :=
.seq RemovedBody723_19 RemovedBody723_38

def RemovedBody723_40 : StackLang.HolProg 64 :=
.seq RemovedBody723_18 RemovedBody723_39

def RemovedBody723_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody723_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody723_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody723_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 0 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody723_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody723_49 : StackLang.HolProg 64 :=
.seq RemovedBody723_47 RemovedBody723_48

def RemovedBody723_50 : StackLang.HolProg 64 :=
.seq RemovedBody723_46 RemovedBody723_49

def RemovedBody723_51 : StackLang.HolProg 64 :=
.seq RemovedBody723_45 RemovedBody723_50

def RemovedBody723_52 : StackLang.HolProg 64 :=
.seq RemovedBody723_44 RemovedBody723_51

def RemovedBody723_53 : StackLang.HolProg 64 :=
.seq RemovedBody723_43 RemovedBody723_52

def RemovedBody723_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody723_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody723_56 : StackLang.HolProg 64 :=
.seq RemovedBody723_54 RemovedBody723_55

def RemovedBody723_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody723_53, 0, 723, 2)) (Sum.inl 717) (some (RemovedBody723_56, 723, 3))

def RemovedBody723_58 : StackLang.HolProg 64 :=
.seq RemovedBody723_42 RemovedBody723_57

def RemovedBody723_59 : StackLang.HolProg 64 :=
.seq RemovedBody723_41 RemovedBody723_58

def RemovedBody723_60 : StackLang.HolProg 64 :=
.seq RemovedBody723_40 RemovedBody723_59

def RemovedBody723_61 : StackLang.HolProg 64 :=
.seq RemovedBody723_11 RemovedBody723_60

def RemovedBody723_62 : StackLang.HolProg 64 :=
.seq RemovedBody723_8 RemovedBody723_61

def RemovedBody723_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody723_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.and 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody723_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody723_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody723_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 2

def RemovedBody723_69 : StackLang.HolProg 64 :=
.seq RemovedBody723_67 RemovedBody723_68

def RemovedBody723_70 : StackLang.HolProg 64 :=
.seq RemovedBody723_66 RemovedBody723_69

def RemovedBody723_71 : StackLang.HolProg 64 :=
.seq RemovedBody723_65 RemovedBody723_70

def RemovedBody723_72 : StackLang.HolProg 64 :=
.seq RemovedBody723_64 RemovedBody723_71

def RemovedBody723_73 : StackLang.HolProg 64 :=
.seq RemovedBody723_63 RemovedBody723_72

def RemovedBody723_74 : StackLang.HolProg 64 :=
.seq RemovedBody723_62 RemovedBody723_73

def RemovedBody723_75 : StackLang.HolProg 64 :=
.seq RemovedBody723_7 RemovedBody723_74

def RemovedBody723_76 : StackLang.HolProg 64 :=
.seq RemovedBody723_6 RemovedBody723_75

def Removed723 : Nat × StackLang.HolProg 64 := (723, RemovedBody723_76)
theorem Removed723_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc723 = Removed723 := by
  kernel_rfl
#print axioms Removed723_eq
end InitECandidate.Proofs.BackendStages
