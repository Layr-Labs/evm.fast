import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc130
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody130_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody130_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody130_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody130_3 : StackLang.HolProg 64 :=
.seq RemovedBody130_1 RemovedBody130_2

def RemovedBody130_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody130_3 RemovedBody130_4

def RemovedBody130_6 : StackLang.HolProg 64 :=
.seq RemovedBody130_0 RemovedBody130_5

def RemovedBody130_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody130_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 82#64)

def RemovedBody130_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody130_11 : StackLang.HolProg 64 :=
.seq RemovedBody130_9 RemovedBody130_10

def RemovedBody130_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody130_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody130_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody130_15 : StackLang.HolProg 64 :=
.seq RemovedBody130_13 RemovedBody130_14

def RemovedBody130_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody130_15 RemovedBody130_16

def RemovedBody130_18 : StackLang.HolProg 64 :=
.seq RemovedBody130_12 RemovedBody130_17

def RemovedBody130_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody130_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody130_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 130 3

def RemovedBody130_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody130_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody130_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody130_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody130_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody130_28 : StackLang.HolProg 64 :=
.seq RemovedBody130_26 RemovedBody130_27

def RemovedBody130_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody130_30 : StackLang.HolProg 64 :=
.seq RemovedBody130_28 RemovedBody130_29

def RemovedBody130_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody130_32 : StackLang.HolProg 64 :=
.seq RemovedBody130_30 RemovedBody130_31

def RemovedBody130_33 : StackLang.HolProg 64 :=
.seq RemovedBody130_25 RemovedBody130_32

def RemovedBody130_34 : StackLang.HolProg 64 :=
.seq RemovedBody130_24 RemovedBody130_33

def RemovedBody130_35 : StackLang.HolProg 64 :=
.seq RemovedBody130_23 RemovedBody130_34

def RemovedBody130_36 : StackLang.HolProg 64 :=
.seq RemovedBody130_22 RemovedBody130_35

def RemovedBody130_37 : StackLang.HolProg 64 :=
.seq RemovedBody130_21 RemovedBody130_36

def RemovedBody130_38 : StackLang.HolProg 64 :=
.seq RemovedBody130_20 RemovedBody130_37

def RemovedBody130_39 : StackLang.HolProg 64 :=
.seq RemovedBody130_19 RemovedBody130_38

def RemovedBody130_40 : StackLang.HolProg 64 :=
.seq RemovedBody130_18 RemovedBody130_39

def RemovedBody130_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody130_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody130_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody130_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody130_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 5 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody130_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody130_49 : StackLang.HolProg 64 :=
.seq RemovedBody130_47 RemovedBody130_48

def RemovedBody130_50 : StackLang.HolProg 64 :=
.seq RemovedBody130_46 RemovedBody130_49

def RemovedBody130_51 : StackLang.HolProg 64 :=
.seq RemovedBody130_45 RemovedBody130_50

def RemovedBody130_52 : StackLang.HolProg 64 :=
.seq RemovedBody130_44 RemovedBody130_51

def RemovedBody130_53 : StackLang.HolProg 64 :=
.seq RemovedBody130_43 RemovedBody130_52

def RemovedBody130_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody130_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody130_56 : StackLang.HolProg 64 :=
.seq RemovedBody130_54 RemovedBody130_55

def RemovedBody130_57 : StackLang.HolProg 64 :=
.call (some (RemovedBody130_53, 0, 130, 2)) (Sum.inl 129) (some (RemovedBody130_56, 130, 3))

def RemovedBody130_58 : StackLang.HolProg 64 :=
.seq RemovedBody130_42 RemovedBody130_57

def RemovedBody130_59 : StackLang.HolProg 64 :=
.seq RemovedBody130_41 RemovedBody130_58

def RemovedBody130_60 : StackLang.HolProg 64 :=
.seq RemovedBody130_40 RemovedBody130_59

def RemovedBody130_61 : StackLang.HolProg 64 :=
.seq RemovedBody130_11 RemovedBody130_60

def RemovedBody130_62 : StackLang.HolProg 64 :=
.seq RemovedBody130_8 RemovedBody130_61

def RemovedBody130_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody130_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 5
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 5)))

def RemovedBody130_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody130_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody130_67 : StackLang.HolProg 64 :=
.seq RemovedBody130_65 RemovedBody130_66

def RemovedBody130_68 : StackLang.HolProg 64 :=
.seq RemovedBody130_64 RemovedBody130_67

def RemovedBody130_69 : StackLang.HolProg 64 :=
.seq RemovedBody130_63 RemovedBody130_68

def RemovedBody130_70 : StackLang.HolProg 64 :=
.seq RemovedBody130_62 RemovedBody130_69

def RemovedBody130_71 : StackLang.HolProg 64 :=
.seq RemovedBody130_7 RemovedBody130_70

def RemovedBody130_72 : StackLang.HolProg 64 :=
.seq RemovedBody130_6 RemovedBody130_71

def Removed130 : Nat × StackLang.HolProg 64 := (130, RemovedBody130_72)
theorem Removed130_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc130 = Removed130 := by
  kernel_rfl
#print axioms Removed130_eq
end InitECandidate.Proofs.BackendStages
