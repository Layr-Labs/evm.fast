import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc864
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody864_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody864_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody864_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody864_3 : StackLang.HolProg 64 :=
.seq RemovedBody864_1 RemovedBody864_2

def RemovedBody864_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody864_3 RemovedBody864_4

def RemovedBody864_6 : StackLang.HolProg 64 :=
.seq RemovedBody864_0 RemovedBody864_5

def RemovedBody864_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 5#64)

def RemovedBody864_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody864_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4520#64)

def RemovedBody864_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody864_13 : StackLang.HolProg 64 :=
.seq RemovedBody864_11 RemovedBody864_12

def RemovedBody864_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody864_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody864_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody864_17 : StackLang.HolProg 64 :=
.seq RemovedBody864_15 RemovedBody864_16

def RemovedBody864_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody864_17 RemovedBody864_18

def RemovedBody864_20 : StackLang.HolProg 64 :=
.seq RemovedBody864_14 RemovedBody864_19

def RemovedBody864_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody864_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody864_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 864 3

def RemovedBody864_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody864_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody864_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody864_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody864_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody864_30 : StackLang.HolProg 64 :=
.seq RemovedBody864_28 RemovedBody864_29

def RemovedBody864_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody864_32 : StackLang.HolProg 64 :=
.seq RemovedBody864_30 RemovedBody864_31

def RemovedBody864_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody864_34 : StackLang.HolProg 64 :=
.seq RemovedBody864_32 RemovedBody864_33

def RemovedBody864_35 : StackLang.HolProg 64 :=
.seq RemovedBody864_27 RemovedBody864_34

def RemovedBody864_36 : StackLang.HolProg 64 :=
.seq RemovedBody864_26 RemovedBody864_35

def RemovedBody864_37 : StackLang.HolProg 64 :=
.seq RemovedBody864_25 RemovedBody864_36

def RemovedBody864_38 : StackLang.HolProg 64 :=
.seq RemovedBody864_24 RemovedBody864_37

def RemovedBody864_39 : StackLang.HolProg 64 :=
.seq RemovedBody864_23 RemovedBody864_38

def RemovedBody864_40 : StackLang.HolProg 64 :=
.seq RemovedBody864_22 RemovedBody864_39

def RemovedBody864_41 : StackLang.HolProg 64 :=
.seq RemovedBody864_21 RemovedBody864_40

def RemovedBody864_42 : StackLang.HolProg 64 :=
.seq RemovedBody864_20 RemovedBody864_41

def RemovedBody864_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody864_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody864_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody864_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody864_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 2 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 1)))

def RemovedBody864_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody864_51 : StackLang.HolProg 64 :=
.seq RemovedBody864_49 RemovedBody864_50

def RemovedBody864_52 : StackLang.HolProg 64 :=
.seq RemovedBody864_48 RemovedBody864_51

def RemovedBody864_53 : StackLang.HolProg 64 :=
.seq RemovedBody864_47 RemovedBody864_52

def RemovedBody864_54 : StackLang.HolProg 64 :=
.seq RemovedBody864_46 RemovedBody864_53

def RemovedBody864_55 : StackLang.HolProg 64 :=
.seq RemovedBody864_45 RemovedBody864_54

def RemovedBody864_56 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody864_57 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody864_58 : StackLang.HolProg 64 :=
.seq RemovedBody864_56 RemovedBody864_57

def RemovedBody864_59 : StackLang.HolProg 64 :=
.call (some (RemovedBody864_55, 0, 864, 2)) (Sum.inl 95) (some (RemovedBody864_58, 864, 3))

def RemovedBody864_60 : StackLang.HolProg 64 :=
.seq RemovedBody864_44 RemovedBody864_59

def RemovedBody864_61 : StackLang.HolProg 64 :=
.seq RemovedBody864_43 RemovedBody864_60

def RemovedBody864_62 : StackLang.HolProg 64 :=
.seq RemovedBody864_42 RemovedBody864_61

def RemovedBody864_63 : StackLang.HolProg 64 :=
.seq RemovedBody864_13 RemovedBody864_62

def RemovedBody864_64 : StackLang.HolProg 64 :=
.seq RemovedBody864_10 RemovedBody864_63

def RemovedBody864_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody864_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 2)))

def RemovedBody864_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def RemovedBody864_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 0

def RemovedBody864_69 : StackLang.HolProg 64 :=
.seq RemovedBody864_67 RemovedBody864_68

def RemovedBody864_70 : StackLang.HolProg 64 :=
.seq RemovedBody864_66 RemovedBody864_69

def RemovedBody864_71 : StackLang.HolProg 64 :=
.seq RemovedBody864_65 RemovedBody864_70

def RemovedBody864_72 : StackLang.HolProg 64 :=
.seq RemovedBody864_64 RemovedBody864_71

def RemovedBody864_73 : StackLang.HolProg 64 :=
.seq RemovedBody864_9 RemovedBody864_72

def RemovedBody864_74 : StackLang.HolProg 64 :=
.seq RemovedBody864_8 RemovedBody864_73

def RemovedBody864_75 : StackLang.HolProg 64 :=
.seq RemovedBody864_7 RemovedBody864_74

def RemovedBody864_76 : StackLang.HolProg 64 :=
.seq RemovedBody864_6 RemovedBody864_75

def Removed864 : Nat × StackLang.HolProg 64 := (864, RemovedBody864_76)
theorem Removed864_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc864 = Removed864 := by
  kernel_rfl
#print axioms Removed864_eq
end InitECandidate.Proofs.BackendStages
