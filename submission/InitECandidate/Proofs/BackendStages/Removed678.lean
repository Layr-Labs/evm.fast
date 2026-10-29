import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc678
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody678_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody678_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody678_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody678_3 : StackLang.HolProg 64 :=
.seq RemovedBody678_1 RemovedBody678_2

def RemovedBody678_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody678_3 RemovedBody678_4

def RemovedBody678_6 : StackLang.HolProg 64 :=
.seq RemovedBody678_0 RemovedBody678_5

def RemovedBody678_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 3 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody678_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 5#64)))

def RemovedBody678_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 3
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 3)))

def RemovedBody678_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody678_11 : StackLang.HolProg 64 :=
.seq RemovedBody678_9 RemovedBody678_10

def RemovedBody678_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2792#64)

def RemovedBody678_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody678_15 : StackLang.HolProg 64 :=
.seq RemovedBody678_13 RemovedBody678_14

def RemovedBody678_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody678_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody678_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody678_19 : StackLang.HolProg 64 :=
.seq RemovedBody678_17 RemovedBody678_18

def RemovedBody678_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody678_19 RemovedBody678_20

def RemovedBody678_22 : StackLang.HolProg 64 :=
.seq RemovedBody678_16 RemovedBody678_21

def RemovedBody678_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody678_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody678_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 678 3

def RemovedBody678_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody678_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody678_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody678_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody678_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody678_32 : StackLang.HolProg 64 :=
.seq RemovedBody678_30 RemovedBody678_31

def RemovedBody678_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody678_34 : StackLang.HolProg 64 :=
.seq RemovedBody678_32 RemovedBody678_33

def RemovedBody678_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody678_36 : StackLang.HolProg 64 :=
.seq RemovedBody678_34 RemovedBody678_35

def RemovedBody678_37 : StackLang.HolProg 64 :=
.seq RemovedBody678_29 RemovedBody678_36

def RemovedBody678_38 : StackLang.HolProg 64 :=
.seq RemovedBody678_28 RemovedBody678_37

def RemovedBody678_39 : StackLang.HolProg 64 :=
.seq RemovedBody678_27 RemovedBody678_38

def RemovedBody678_40 : StackLang.HolProg 64 :=
.seq RemovedBody678_26 RemovedBody678_39

def RemovedBody678_41 : StackLang.HolProg 64 :=
.seq RemovedBody678_25 RemovedBody678_40

def RemovedBody678_42 : StackLang.HolProg 64 :=
.seq RemovedBody678_24 RemovedBody678_41

def RemovedBody678_43 : StackLang.HolProg 64 :=
.seq RemovedBody678_23 RemovedBody678_42

def RemovedBody678_44 : StackLang.HolProg 64 :=
.seq RemovedBody678_22 RemovedBody678_43

def RemovedBody678_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody678_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody678_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody678_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody678_52 : StackLang.HolProg 64 :=
.seq RemovedBody678_50 RemovedBody678_51

def RemovedBody678_53 : StackLang.HolProg 64 :=
.seq RemovedBody678_49 RemovedBody678_52

def RemovedBody678_54 : StackLang.HolProg 64 :=
.seq RemovedBody678_48 RemovedBody678_53

def RemovedBody678_55 : StackLang.HolProg 64 :=
.seq RemovedBody678_47 RemovedBody678_54

def RemovedBody678_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody678_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody678_58 : StackLang.HolProg 64 :=
.seq RemovedBody678_56 RemovedBody678_57

def RemovedBody678_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody678_55, 0, 678, 2)) (Sum.inl 78) (some (RemovedBody678_58, 678, 3))

def RemovedBody678_60 : StackLang.HolProg 64 :=
.seq RemovedBody678_46 RemovedBody678_59

def RemovedBody678_61 : StackLang.HolProg 64 :=
.seq RemovedBody678_45 RemovedBody678_60

def RemovedBody678_62 : StackLang.HolProg 64 :=
.seq RemovedBody678_44 RemovedBody678_61

def RemovedBody678_63 : StackLang.HolProg 64 :=
.seq RemovedBody678_15 RemovedBody678_62

def RemovedBody678_64 : StackLang.HolProg 64 :=
.seq RemovedBody678_12 RemovedBody678_63

def RemovedBody678_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody678_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 0#64)

def RemovedBody678_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody678_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody678_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody678_70 : StackLang.HolProg 64 :=
.seq RemovedBody678_68 RemovedBody678_69

def RemovedBody678_71 : StackLang.HolProg 64 :=
.seq RemovedBody678_67 RemovedBody678_70

def RemovedBody678_72 : StackLang.HolProg 64 :=
.seq RemovedBody678_66 RemovedBody678_71

def RemovedBody678_73 : StackLang.HolProg 64 :=
.seq RemovedBody678_65 RemovedBody678_72

def RemovedBody678_74 : StackLang.HolProg 64 :=
.seq RemovedBody678_64 RemovedBody678_73

def RemovedBody678_75 : StackLang.HolProg 64 :=
.seq RemovedBody678_11 RemovedBody678_74

def RemovedBody678_76 : StackLang.HolProg 64 :=
.seq RemovedBody678_8 RemovedBody678_75

def RemovedBody678_77 : StackLang.HolProg 64 :=
.seq RemovedBody678_7 RemovedBody678_76

def RemovedBody678_78 : StackLang.HolProg 64 :=
.seq RemovedBody678_6 RemovedBody678_77

def Removed678 : Nat × StackLang.HolProg 64 := (678, RemovedBody678_78)
theorem Removed678_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc678 = Removed678 := by
  kernel_rfl
#print axioms Removed678_eq
end InitECandidate.Proofs.BackendStages
