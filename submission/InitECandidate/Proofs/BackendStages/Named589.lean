import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed589
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody589_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody589_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody589_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody589_3 : StackLang.HolProg 64 :=
.seq NamedBody589_1 NamedBody589_2

def NamedBody589_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody589_3 NamedBody589_4

def NamedBody589_6 : StackLang.HolProg 64 :=
.seq NamedBody589_0 NamedBody589_5

def NamedBody589_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody589_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 10
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody589_9 : StackLang.HolProg 64 :=
.seq NamedBody589_7 NamedBody589_8

def NamedBody589_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_11 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 2102#64)

def NamedBody589_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody589_13 : StackLang.HolProg 64 :=
.seq NamedBody589_11 NamedBody589_12

def NamedBody589_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody589_15 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody589_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody589_17 : StackLang.HolProg 64 :=
.seq NamedBody589_15 NamedBody589_16

def NamedBody589_18 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_19 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody589_17 NamedBody589_18

def NamedBody589_20 : StackLang.HolProg 64 :=
.seq NamedBody589_14 NamedBody589_19

def NamedBody589_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody589_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody589_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 589 3

def NamedBody589_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody589_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody589_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody589_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_28 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody589_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody589_30 : StackLang.HolProg 64 :=
.seq NamedBody589_28 NamedBody589_29

def NamedBody589_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody589_32 : StackLang.HolProg 64 :=
.seq NamedBody589_30 NamedBody589_31

def NamedBody589_33 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody589_34 : StackLang.HolProg 64 :=
.seq NamedBody589_32 NamedBody589_33

def NamedBody589_35 : StackLang.HolProg 64 :=
.seq NamedBody589_27 NamedBody589_34

def NamedBody589_36 : StackLang.HolProg 64 :=
.seq NamedBody589_26 NamedBody589_35

def NamedBody589_37 : StackLang.HolProg 64 :=
.seq NamedBody589_25 NamedBody589_36

def NamedBody589_38 : StackLang.HolProg 64 :=
.seq NamedBody589_24 NamedBody589_37

def NamedBody589_39 : StackLang.HolProg 64 :=
.seq NamedBody589_23 NamedBody589_38

def NamedBody589_40 : StackLang.HolProg 64 :=
.seq NamedBody589_22 NamedBody589_39

def NamedBody589_41 : StackLang.HolProg 64 :=
.seq NamedBody589_21 NamedBody589_40

def NamedBody589_42 : StackLang.HolProg 64 :=
.seq NamedBody589_20 NamedBody589_41

def NamedBody589_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody589_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody589_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody589_49 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 11 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody589_50 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody589_51 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody589_52 : StackLang.HolProg 64 :=
.seq NamedBody589_50 NamedBody589_51

def NamedBody589_53 : StackLang.HolProg 64 :=
.seq NamedBody589_49 NamedBody589_52

def NamedBody589_54 : StackLang.HolProg 64 :=
.seq NamedBody589_48 NamedBody589_53

def NamedBody589_55 : StackLang.HolProg 64 :=
.seq NamedBody589_47 NamedBody589_54

def NamedBody589_56 : StackLang.HolProg 64 :=
.seq NamedBody589_46 NamedBody589_55

def NamedBody589_57 : StackLang.HolProg 64 :=
.seq NamedBody589_45 NamedBody589_56

def NamedBody589_58 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 12
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody589_59 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody589_60 : StackLang.HolProg 64 :=
.seq NamedBody589_58 NamedBody589_59

def NamedBody589_61 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody589_62 : StackLang.HolProg 64 :=
.seq NamedBody589_60 NamedBody589_61

def NamedBody589_63 : StackLang.HolProg 64 :=
.call (some (NamedBody589_57, 1, 589, 2)) (Sum.inl 468) (some (NamedBody589_62, 589, 3))

def NamedBody589_64 : StackLang.HolProg 64 :=
.seq NamedBody589_44 NamedBody589_63

def NamedBody589_65 : StackLang.HolProg 64 :=
.seq NamedBody589_43 NamedBody589_64

def NamedBody589_66 : StackLang.HolProg 64 :=
.seq NamedBody589_42 NamedBody589_65

def NamedBody589_67 : StackLang.HolProg 64 :=
.seq NamedBody589_13 NamedBody589_66

def NamedBody589_68 : StackLang.HolProg 64 :=
.seq NamedBody589_10 NamedBody589_67

def NamedBody589_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody589_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody589_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody589_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 0#64)

def NamedBody589_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody589_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody589_77 : StackLang.HolProg 64 :=
.seq NamedBody589_75 NamedBody589_76

def NamedBody589_78 : StackLang.HolProg 64 :=
.seq NamedBody589_74 NamedBody589_77

def NamedBody589_79 : StackLang.HolProg 64 :=
.seq NamedBody589_73 NamedBody589_78

def NamedBody589_80 : StackLang.HolProg 64 :=
.seq NamedBody589_72 NamedBody589_79

def NamedBody589_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_82 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.equal) 11 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10) NamedBody589_80 NamedBody589_81

def NamedBody589_83 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody589_84 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody589_85 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_86 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 10 1
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody589_87 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody589_88 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody589_89 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.ret 12

def NamedBody589_90 : StackLang.HolProg 64 :=
.seq NamedBody589_88 NamedBody589_89

def NamedBody589_91 : StackLang.HolProg 64 :=
.seq NamedBody589_87 NamedBody589_90

def NamedBody589_92 : StackLang.HolProg 64 :=
.seq NamedBody589_86 NamedBody589_91

def NamedBody589_93 : StackLang.HolProg 64 :=
.seq NamedBody589_85 NamedBody589_92

def NamedBody589_94 : StackLang.HolProg 64 :=
.seq NamedBody589_84 NamedBody589_93

def NamedBody589_95 : StackLang.HolProg 64 :=
.seq NamedBody589_83 NamedBody589_94

def NamedBody589_96 : StackLang.HolProg 64 :=
.seq NamedBody589_82 NamedBody589_95

def NamedBody589_97 : StackLang.HolProg 64 :=
.seq NamedBody589_71 NamedBody589_96

def NamedBody589_98 : StackLang.HolProg 64 :=
.seq NamedBody589_70 NamedBody589_97

def NamedBody589_99 : StackLang.HolProg 64 :=
.seq NamedBody589_69 NamedBody589_98

def NamedBody589_100 : StackLang.HolProg 64 :=
.seq NamedBody589_68 NamedBody589_99

def NamedBody589_101 : StackLang.HolProg 64 :=
.seq NamedBody589_9 NamedBody589_100

def NamedBody589_102 : StackLang.HolProg 64 :=
.seq NamedBody589_6 NamedBody589_101

def Named589 : Nat × StackLang.HolProg 64 := (589, NamedBody589_102)
theorem Named589_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed589 = Named589 := by
  kernel_rfl
#print axioms Named589_eq
end InitECandidate.Proofs.BackendStages
