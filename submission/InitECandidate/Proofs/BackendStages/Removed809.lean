import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc809
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody809_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody809_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody809_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody809_3 : StackLang.HolProg 64 :=
.seq RemovedBody809_1 RemovedBody809_2

def RemovedBody809_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody809_3 RemovedBody809_4

def RemovedBody809_6 : StackLang.HolProg 64 :=
.seq RemovedBody809_0 RemovedBody809_5

def RemovedBody809_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody809_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3986#64)

def RemovedBody809_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody809_11 : StackLang.HolProg 64 :=
.seq RemovedBody809_9 RemovedBody809_10

def RemovedBody809_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody809_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody809_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody809_15 : StackLang.HolProg 64 :=
.seq RemovedBody809_13 RemovedBody809_14

def RemovedBody809_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody809_15 RemovedBody809_16

def RemovedBody809_18 : StackLang.HolProg 64 :=
.seq RemovedBody809_12 RemovedBody809_17

def RemovedBody809_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody809_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody809_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 809 3

def RemovedBody809_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody809_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody809_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody809_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody809_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody809_28 : StackLang.HolProg 64 :=
.seq RemovedBody809_26 RemovedBody809_27

def RemovedBody809_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody809_30 : StackLang.HolProg 64 :=
.seq RemovedBody809_28 RemovedBody809_29

def RemovedBody809_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody809_32 : StackLang.HolProg 64 :=
.seq RemovedBody809_30 RemovedBody809_31

def RemovedBody809_33 : StackLang.HolProg 64 :=
.seq RemovedBody809_25 RemovedBody809_32

def RemovedBody809_34 : StackLang.HolProg 64 :=
.seq RemovedBody809_24 RemovedBody809_33

def RemovedBody809_35 : StackLang.HolProg 64 :=
.seq RemovedBody809_23 RemovedBody809_34

def RemovedBody809_36 : StackLang.HolProg 64 :=
.seq RemovedBody809_22 RemovedBody809_35

def RemovedBody809_37 : StackLang.HolProg 64 :=
.seq RemovedBody809_21 RemovedBody809_36

def RemovedBody809_38 : StackLang.HolProg 64 :=
.seq RemovedBody809_20 RemovedBody809_37

def RemovedBody809_39 : StackLang.HolProg 64 :=
.seq RemovedBody809_19 RemovedBody809_38

def RemovedBody809_40 : StackLang.HolProg 64 :=
.seq RemovedBody809_18 RemovedBody809_39

def RemovedBody809_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody809_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody809_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody809_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody809_48 : StackLang.HolProg 64 :=
.seq RemovedBody809_46 RemovedBody809_47

def RemovedBody809_49 : StackLang.HolProg 64 :=
.seq RemovedBody809_45 RemovedBody809_48

def RemovedBody809_50 : StackLang.HolProg 64 :=
.seq RemovedBody809_44 RemovedBody809_49

def RemovedBody809_51 : StackLang.HolProg 64 :=
.seq RemovedBody809_43 RemovedBody809_50

def RemovedBody809_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody809_53 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody809_54 : StackLang.HolProg 64 :=
.seq RemovedBody809_52 RemovedBody809_53

def RemovedBody809_55 : StackLang.HolProg 64 :=
.call (some (RemovedBody809_51, 0, 809, 2)) (Sum.inl 704) (some (RemovedBody809_54, 809, 3))

def RemovedBody809_56 : StackLang.HolProg 64 :=
.seq RemovedBody809_42 RemovedBody809_55

def RemovedBody809_57 : StackLang.HolProg 64 :=
.seq RemovedBody809_41 RemovedBody809_56

def RemovedBody809_58 : StackLang.HolProg 64 :=
.seq RemovedBody809_40 RemovedBody809_57

def RemovedBody809_59 : StackLang.HolProg 64 :=
.seq RemovedBody809_11 RemovedBody809_58

def RemovedBody809_60 : StackLang.HolProg 64 :=
.seq RemovedBody809_8 RemovedBody809_59

def RemovedBody809_61 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody809_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody809_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody809_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody809_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody809_66 : StackLang.HolProg 64 :=
.seq RemovedBody809_64 RemovedBody809_65

def RemovedBody809_67 : StackLang.HolProg 64 :=
.seq RemovedBody809_63 RemovedBody809_66

def RemovedBody809_68 : StackLang.HolProg 64 :=
.seq RemovedBody809_62 RemovedBody809_67

def RemovedBody809_69 : StackLang.HolProg 64 :=
.seq RemovedBody809_61 RemovedBody809_68

def RemovedBody809_70 : StackLang.HolProg 64 :=
.seq RemovedBody809_60 RemovedBody809_69

def RemovedBody809_71 : StackLang.HolProg 64 :=
.seq RemovedBody809_7 RemovedBody809_70

def RemovedBody809_72 : StackLang.HolProg 64 :=
.seq RemovedBody809_6 RemovedBody809_71

def Removed809 : Nat × StackLang.HolProg 64 := (809, RemovedBody809_72)
theorem Removed809_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc809 = Removed809 := by
  kernel_rfl
#print axioms Removed809_eq
end InitECandidate.Proofs.BackendStages
