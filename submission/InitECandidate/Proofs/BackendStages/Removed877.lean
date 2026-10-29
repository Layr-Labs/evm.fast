import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Alloc877
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def RemovedBody877_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody877_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody877_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody877_3 : StackLang.HolProg 64 :=
.seq RemovedBody877_1 RemovedBody877_2

def RemovedBody877_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody877_3 RemovedBody877_4

def RemovedBody877_6 : StackLang.HolProg 64 :=
.seq RemovedBody877_0 RemovedBody877_5

def RemovedBody877_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 2 1#64)

def RemovedBody877_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody877_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody877_11 : StackLang.HolProg 64 :=
.seq RemovedBody877_9 RemovedBody877_10

def RemovedBody877_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 4603#64)

def RemovedBody877_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody877_15 : StackLang.HolProg 64 :=
.seq RemovedBody877_13 RemovedBody877_14

def RemovedBody877_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody877_17 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 1 2#64)

def RemovedBody877_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 1

def RemovedBody877_19 : StackLang.HolProg 64 :=
.seq RemovedBody877_17 RemovedBody877_18

def RemovedBody877_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_21 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) RemovedBody877_19 RemovedBody877_20

def RemovedBody877_22 : StackLang.HolProg 64 :=
.seq RemovedBody877_16 RemovedBody877_21

def RemovedBody877_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def RemovedBody877_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def RemovedBody877_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 877 3

def RemovedBody877_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody877_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody877_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody877_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_30 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def RemovedBody877_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def RemovedBody877_32 : StackLang.HolProg 64 :=
.seq RemovedBody877_30 RemovedBody877_31

def RemovedBody877_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def RemovedBody877_34 : StackLang.HolProg 64 :=
.seq RemovedBody877_32 RemovedBody877_33

def RemovedBody877_35 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody877_36 : StackLang.HolProg 64 :=
.seq RemovedBody877_34 RemovedBody877_35

def RemovedBody877_37 : StackLang.HolProg 64 :=
.seq RemovedBody877_29 RemovedBody877_36

def RemovedBody877_38 : StackLang.HolProg 64 :=
.seq RemovedBody877_28 RemovedBody877_37

def RemovedBody877_39 : StackLang.HolProg 64 :=
.seq RemovedBody877_27 RemovedBody877_38

def RemovedBody877_40 : StackLang.HolProg 64 :=
.seq RemovedBody877_26 RemovedBody877_39

def RemovedBody877_41 : StackLang.HolProg 64 :=
.seq RemovedBody877_25 RemovedBody877_40

def RemovedBody877_42 : StackLang.HolProg 64 :=
.seq RemovedBody877_24 RemovedBody877_41

def RemovedBody877_43 : StackLang.HolProg 64 :=
.seq RemovedBody877_23 RemovedBody877_42

def RemovedBody877_44 : StackLang.HolProg 64 :=
.seq RemovedBody877_22 RemovedBody877_43

def RemovedBody877_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody877_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def RemovedBody877_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody877_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 0
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def RemovedBody877_52 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody877_53 : StackLang.HolProg 64 :=
.seq RemovedBody877_51 RemovedBody877_52

def RemovedBody877_54 : StackLang.HolProg 64 :=
.seq RemovedBody877_50 RemovedBody877_53

def RemovedBody877_55 : StackLang.HolProg 64 :=
.seq RemovedBody877_49 RemovedBody877_54

def RemovedBody877_56 : StackLang.HolProg 64 :=
.seq RemovedBody877_48 RemovedBody877_55

def RemovedBody877_57 : StackLang.HolProg 64 :=
.seq RemovedBody877_47 RemovedBody877_56

def RemovedBody877_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 3
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def RemovedBody877_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_60 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def RemovedBody877_61 : StackLang.HolProg 64 :=
.seq RemovedBody877_59 RemovedBody877_60

def RemovedBody877_62 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody877_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551480#64))

def RemovedBody877_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 0 0#64)

def RemovedBody877_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 2
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551592#64))

def RemovedBody877_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsl 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 1#64)))

def RemovedBody877_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 26)))

def RemovedBody877_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 2 2
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 18446744073709551080#64)))

def RemovedBody877_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 2 0#64))

def RemovedBody877_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_72 : StackLang.HolProg 64 :=
.seq RemovedBody877_70 RemovedBody877_71

def RemovedBody877_73 : StackLang.HolProg 64 :=
.seq RemovedBody877_69 RemovedBody877_72

def RemovedBody877_74 : StackLang.HolProg 64 :=
.seq RemovedBody877_68 RemovedBody877_73

def RemovedBody877_75 : StackLang.HolProg 64 :=
.seq RemovedBody877_67 RemovedBody877_74

def RemovedBody877_76 : StackLang.HolProg 64 :=
.seq RemovedBody877_66 RemovedBody877_75

def RemovedBody877_77 : StackLang.HolProg 64 :=
.seq RemovedBody877_65 RemovedBody877_76

def RemovedBody877_78 : StackLang.HolProg 64 :=
.seq RemovedBody877_64 RemovedBody877_77

def RemovedBody877_79 : StackLang.HolProg 64 :=
.seq RemovedBody877_63 RemovedBody877_78

def RemovedBody877_80 : StackLang.HolProg 64 :=
.seq RemovedBody877_62 RemovedBody877_79

def RemovedBody877_81 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.notEqual) 1 (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 9#64) RemovedBody877_61 RemovedBody877_80

def RemovedBody877_82 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody877_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def RemovedBody877_84 : StackLang.HolProg 64 :=
.seq RemovedBody877_82 RemovedBody877_83

def RemovedBody877_85 : StackLang.HolProg 64 :=
.seq RemovedBody877_81 RemovedBody877_84

def RemovedBody877_86 : StackLang.HolProg 64 :=
.seq RemovedBody877_58 RemovedBody877_85

def RemovedBody877_87 : StackLang.HolProg 64 :=
.call (some (RemovedBody877_57, 0, 877, 2)) (Sum.inl 876) (some (RemovedBody877_86, 877, 3))

def RemovedBody877_88 : StackLang.HolProg 64 :=
.seq RemovedBody877_46 RemovedBody877_87

def RemovedBody877_89 : StackLang.HolProg 64 :=
.seq RemovedBody877_45 RemovedBody877_88

def RemovedBody877_90 : StackLang.HolProg 64 :=
.seq RemovedBody877_44 RemovedBody877_89

def RemovedBody877_91 : StackLang.HolProg 64 :=
.seq RemovedBody877_15 RemovedBody877_90

def RemovedBody877_92 : StackLang.HolProg 64 :=
.seq RemovedBody877_12 RemovedBody877_91

def RemovedBody877_93 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def RemovedBody877_94 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 0
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 0)))

def RemovedBody877_95 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def RemovedBody877_96 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 3

def RemovedBody877_97 : StackLang.HolProg 64 :=
.seq RemovedBody877_95 RemovedBody877_96

def RemovedBody877_98 : StackLang.HolProg 64 :=
.seq RemovedBody877_94 RemovedBody877_97

def RemovedBody877_99 : StackLang.HolProg 64 :=
.seq RemovedBody877_93 RemovedBody877_98

def RemovedBody877_100 : StackLang.HolProg 64 :=
.seq RemovedBody877_92 RemovedBody877_99

def RemovedBody877_101 : StackLang.HolProg 64 :=
.seq RemovedBody877_11 RemovedBody877_100

def RemovedBody877_102 : StackLang.HolProg 64 :=
.seq RemovedBody877_8 RemovedBody877_101

def RemovedBody877_103 : StackLang.HolProg 64 :=
.seq RemovedBody877_7 RemovedBody877_102

def RemovedBody877_104 : StackLang.HolProg 64 :=
.seq RemovedBody877_6 RemovedBody877_103

def Removed877 : Nat × StackLang.HolProg 64 := (877, RemovedBody877_104)
theorem Removed877_eq : StackRemove.progComp false riscvConfig.addrOffset (riscvConfig.regCount - (riscvConfig.avoidRegs.length + 3)) Alloc877 = Removed877 := by
  kernel_rfl
#print axioms Removed877_eq
end InitECandidate.Proofs.BackendStages
