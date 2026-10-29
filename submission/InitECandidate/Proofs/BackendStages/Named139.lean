import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed139
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody139_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody139_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody139_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody139_3 : StackLang.HolProg 64 :=
.seq NamedBody139_1 NamedBody139_2

def NamedBody139_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody139_3 NamedBody139_4

def NamedBody139_6 : StackLang.HolProg 64 :=
.seq NamedBody139_0 NamedBody139_5

def NamedBody139_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody139_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 100#64)

def NamedBody139_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody139_11 : StackLang.HolProg 64 :=
.seq NamedBody139_9 NamedBody139_10

def NamedBody139_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody139_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody139_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody139_15 : StackLang.HolProg 64 :=
.seq NamedBody139_13 NamedBody139_14

def NamedBody139_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody139_15 NamedBody139_16

def NamedBody139_18 : StackLang.HolProg 64 :=
.seq NamedBody139_12 NamedBody139_17

def NamedBody139_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody139_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody139_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 139 3

def NamedBody139_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody139_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody139_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody139_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody139_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody139_28 : StackLang.HolProg 64 :=
.seq NamedBody139_26 NamedBody139_27

def NamedBody139_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody139_30 : StackLang.HolProg 64 :=
.seq NamedBody139_28 NamedBody139_29

def NamedBody139_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody139_32 : StackLang.HolProg 64 :=
.seq NamedBody139_30 NamedBody139_31

def NamedBody139_33 : StackLang.HolProg 64 :=
.seq NamedBody139_25 NamedBody139_32

def NamedBody139_34 : StackLang.HolProg 64 :=
.seq NamedBody139_24 NamedBody139_33

def NamedBody139_35 : StackLang.HolProg 64 :=
.seq NamedBody139_23 NamedBody139_34

def NamedBody139_36 : StackLang.HolProg 64 :=
.seq NamedBody139_22 NamedBody139_35

def NamedBody139_37 : StackLang.HolProg 64 :=
.seq NamedBody139_21 NamedBody139_36

def NamedBody139_38 : StackLang.HolProg 64 :=
.seq NamedBody139_20 NamedBody139_37

def NamedBody139_39 : StackLang.HolProg 64 :=
.seq NamedBody139_19 NamedBody139_38

def NamedBody139_40 : StackLang.HolProg 64 :=
.seq NamedBody139_18 NamedBody139_39

def NamedBody139_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody139_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody139_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody139_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 1 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody139_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody139_49 : StackLang.HolProg 64 :=
.seq NamedBody139_47 NamedBody139_48

def NamedBody139_50 : StackLang.HolProg 64 :=
.seq NamedBody139_46 NamedBody139_49

def NamedBody139_51 : StackLang.HolProg 64 :=
.seq NamedBody139_45 NamedBody139_50

def NamedBody139_52 : StackLang.HolProg 64 :=
.seq NamedBody139_44 NamedBody139_51

def NamedBody139_53 : StackLang.HolProg 64 :=
.seq NamedBody139_43 NamedBody139_52

def NamedBody139_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 11
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody139_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody139_56 : StackLang.HolProg 64 :=
.seq NamedBody139_54 NamedBody139_55

def NamedBody139_57 : StackLang.HolProg 64 :=
.call (some (NamedBody139_53, 1, 139, 2)) (Sum.inl 138) (some (NamedBody139_56, 139, 3))

def NamedBody139_58 : StackLang.HolProg 64 :=
.seq NamedBody139_42 NamedBody139_57

def NamedBody139_59 : StackLang.HolProg 64 :=
.seq NamedBody139_41 NamedBody139_58

def NamedBody139_60 : StackLang.HolProg 64 :=
.seq NamedBody139_40 NamedBody139_59

def NamedBody139_61 : StackLang.HolProg 64 :=
.seq NamedBody139_11 NamedBody139_60

def NamedBody139_62 : StackLang.HolProg 64 :=
.seq NamedBody139_8 NamedBody139_61

def NamedBody139_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody139_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 1 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 7#64)))

def NamedBody139_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody139_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody139_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody139_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 11

def NamedBody139_70 : StackLang.HolProg 64 :=
.seq NamedBody139_68 NamedBody139_69

def NamedBody139_71 : StackLang.HolProg 64 :=
.seq NamedBody139_67 NamedBody139_70

def NamedBody139_72 : StackLang.HolProg 64 :=
.seq NamedBody139_66 NamedBody139_71

def NamedBody139_73 : StackLang.HolProg 64 :=
.seq NamedBody139_65 NamedBody139_72

def NamedBody139_74 : StackLang.HolProg 64 :=
.seq NamedBody139_64 NamedBody139_73

def NamedBody139_75 : StackLang.HolProg 64 :=
.seq NamedBody139_63 NamedBody139_74

def NamedBody139_76 : StackLang.HolProg 64 :=
.seq NamedBody139_62 NamedBody139_75

def NamedBody139_77 : StackLang.HolProg 64 :=
.seq NamedBody139_7 NamedBody139_76

def NamedBody139_78 : StackLang.HolProg 64 :=
.seq NamedBody139_6 NamedBody139_77

def Named139 : Nat × StackLang.HolProg 64 := (139, NamedBody139_78)
theorem Named139_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed139 = Named139 := by
  kernel_rfl
#print axioms Named139_eq
end InitECandidate.Proofs.BackendStages
