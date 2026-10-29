import InitECandidate.Proofs.CompactComputation
import InitECandidate.Proofs.BackendStages.Removed721
import Flapjack.Compiler.Backend.Backend
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
open Flapjack Flapjack.Compiler.Backend Flapjack.Compiler.Encoders.RiscV.Target
namespace InitECandidate.Proofs.BackendStages
def NamedBody721_0 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 16#64)))

def NamedBody721_1 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody721_2 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody721_3 : StackLang.HolProg 64 :=
.seq NamedBody721_1 NamedBody721_2

def NamedBody721_4 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_5 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody721_3 NamedBody721_4

def NamedBody721_6 : StackLang.HolProg 64 :=
.seq NamedBody721_0 NamedBody721_5

def NamedBody721_7 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody721_8 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_9 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 3242#64)

def NamedBody721_10 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody721_11 : StackLang.HolProg 64 :=
.seq NamedBody721_9 NamedBody721_10

def NamedBody721_12 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody721_13 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody721_14 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody721_15 : StackLang.HolProg 64 :=
.seq NamedBody721_13 NamedBody721_14

def NamedBody721_16 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_17 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody721_15 NamedBody721_16

def NamedBody721_18 : StackLang.HolProg 64 :=
.seq NamedBody721_12 NamedBody721_17

def NamedBody721_19 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 22 1#64)

def NamedBody721_20 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 0#64))

def NamedBody721_21 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.locValue 22 721 3

def NamedBody721_22 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody721_23 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody721_24 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody721_25 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_26 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 22 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 24)))

def NamedBody721_27 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25)))

def NamedBody721_28 : StackLang.HolProg 64 :=
.seq NamedBody721_26 NamedBody721_27

def NamedBody721_29 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.shift Flapjack.Shift.lsr 22 22
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 3#64)))

def NamedBody721_30 : StackLang.HolProg 64 :=
.seq NamedBody721_28 NamedBody721_29

def NamedBody721_31 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody721_32 : StackLang.HolProg 64 :=
.seq NamedBody721_30 NamedBody721_31

def NamedBody721_33 : StackLang.HolProg 64 :=
.seq NamedBody721_25 NamedBody721_32

def NamedBody721_34 : StackLang.HolProg 64 :=
.seq NamedBody721_24 NamedBody721_33

def NamedBody721_35 : StackLang.HolProg 64 :=
.seq NamedBody721_23 NamedBody721_34

def NamedBody721_36 : StackLang.HolProg 64 :=
.seq NamedBody721_22 NamedBody721_35

def NamedBody721_37 : StackLang.HolProg 64 :=
.seq NamedBody721_21 NamedBody721_36

def NamedBody721_38 : StackLang.HolProg 64 :=
.seq NamedBody721_20 NamedBody721_37

def NamedBody721_39 : StackLang.HolProg 64 :=
.seq NamedBody721_19 NamedBody721_38

def NamedBody721_40 : StackLang.HolProg 64 :=
.seq NamedBody721_18 NamedBody721_39

def NamedBody721_41 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_42 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_43 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_44 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 16#64))

def NamedBody721_45 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.store 22
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 25 18446744073709551560#64))

def NamedBody721_46 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.add 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 24#64)))

def NamedBody721_47 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 7 10
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 10)))

def NamedBody721_48 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody721_49 : StackLang.HolProg 64 :=
.seq NamedBody721_47 NamedBody721_48

def NamedBody721_50 : StackLang.HolProg 64 :=
.seq NamedBody721_46 NamedBody721_49

def NamedBody721_51 : StackLang.HolProg 64 :=
.seq NamedBody721_45 NamedBody721_50

def NamedBody721_52 : StackLang.HolProg 64 :=
.seq NamedBody721_44 NamedBody721_51

def NamedBody721_53 : StackLang.HolProg 64 :=
.seq NamedBody721_43 NamedBody721_52

def NamedBody721_54 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.mem Flapjack.WordMemOp.load 1
    (Flapjack.Compiler.Encoders.Asm.HolAddr.addr 24 8#64))

def NamedBody721_55 : StackLang.HolProg 64 :=
.call none (Sum.inl 5) none

def NamedBody721_56 : StackLang.HolProg 64 :=
.seq NamedBody721_54 NamedBody721_55

def NamedBody721_57 : StackLang.HolProg 64 :=
.call (some (NamedBody721_53, 1, 721, 2)) (Sum.inl 720) (some (NamedBody721_56, 721, 3))

def NamedBody721_58 : StackLang.HolProg 64 :=
.seq NamedBody721_42 NamedBody721_57

def NamedBody721_59 : StackLang.HolProg 64 :=
.seq NamedBody721_41 NamedBody721_58

def NamedBody721_60 : StackLang.HolProg 64 :=
.seq NamedBody721_40 NamedBody721_59

def NamedBody721_61 : StackLang.HolProg 64 :=
.seq NamedBody721_11 NamedBody721_60

def NamedBody721_62 : StackLang.HolProg 64 :=
.seq NamedBody721_8 NamedBody721_61

def NamedBody721_63 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody721_64 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.or 10 7
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 7)))

def NamedBody721_65 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 29 767358375875140941#64)

def NamedBody721_66 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 28 2671430854784468776#64)

def NamedBody721_67 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 27 3801124253586036577#64)

def NamedBody721_68 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 9 11120290361046346205#64)

def NamedBody721_69 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 8 3557706395579559416#64)

def NamedBody721_70 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 7 17098105564519244256#64)

def NamedBody721_71 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_72 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_73 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.tick

def NamedBody721_74 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst
  (Flapjack.Compiler.Encoders.Asm.HolInst.arith
    (Flapjack.Compiler.Encoders.Asm.HolArith.binop Flapjack.BinOp.sub 24 24
      (Flapjack.Compiler.Encoders.Asm.HolRegImm.imm 160#64)))

def NamedBody721_75 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.inst (Flapjack.Compiler.Encoders.Asm.HolInst.const 10 2#64)

def NamedBody721_76 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.halt 10

def NamedBody721_77 : StackLang.HolProg 64 :=
.seq NamedBody721_75 NamedBody721_76

def NamedBody721_78 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.skip

def NamedBody721_79 : StackLang.HolProg 64 :=
.ite (Flapjack.Cmp.lower) 24 (Flapjack.Compiler.Encoders.Asm.HolRegImm.reg 25) NamedBody721_77 NamedBody721_78

def NamedBody721_80 : StackLang.HolProg 64 :=
.seq NamedBody721_74 NamedBody721_79

def NamedBody721_81 : StackLang.HolProg 64 :=
Flapjack.Compiler.Backend.StackLang.Prog.rawCall 714

def NamedBody721_82 : StackLang.HolProg 64 :=
.seq NamedBody721_80 NamedBody721_81

def NamedBody721_83 : StackLang.HolProg 64 :=
.seq NamedBody721_73 NamedBody721_82

def NamedBody721_84 : StackLang.HolProg 64 :=
.seq NamedBody721_72 NamedBody721_83

def NamedBody721_85 : StackLang.HolProg 64 :=
.seq NamedBody721_71 NamedBody721_84

def NamedBody721_86 : StackLang.HolProg 64 :=
.seq NamedBody721_70 NamedBody721_85

def NamedBody721_87 : StackLang.HolProg 64 :=
.seq NamedBody721_69 NamedBody721_86

def NamedBody721_88 : StackLang.HolProg 64 :=
.seq NamedBody721_68 NamedBody721_87

def NamedBody721_89 : StackLang.HolProg 64 :=
.seq NamedBody721_67 NamedBody721_88

def NamedBody721_90 : StackLang.HolProg 64 :=
.seq NamedBody721_66 NamedBody721_89

def NamedBody721_91 : StackLang.HolProg 64 :=
.seq NamedBody721_65 NamedBody721_90

def NamedBody721_92 : StackLang.HolProg 64 :=
.seq NamedBody721_64 NamedBody721_91

def NamedBody721_93 : StackLang.HolProg 64 :=
.seq NamedBody721_63 NamedBody721_92

def NamedBody721_94 : StackLang.HolProg 64 :=
.seq NamedBody721_62 NamedBody721_93

def NamedBody721_95 : StackLang.HolProg 64 :=
.seq NamedBody721_7 NamedBody721_94

def NamedBody721_96 : StackLang.HolProg 64 :=
.seq NamedBody721_6 NamedBody721_95

def Named721 : Nat × StackLang.HolProg 64 := (721, NamedBody721_96)
theorem Named721_eq : StackNames.progCompEntryHOL RiscVConfig.riscvNames Removed721 = Named721 := by
  kernel_rfl
#print axioms Named721_eq
end InitECandidate.Proofs.BackendStages
