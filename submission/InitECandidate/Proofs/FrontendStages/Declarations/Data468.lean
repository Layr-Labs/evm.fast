import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify452
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body468_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 280#64]

def body468_1 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 208#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stack_mark")

def body468_2 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 8#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "stk")

def body468_3 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 232#64])
  (Flapjack.Exp.const 32#64)

def body468_4 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 224#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mem_mark")

def body468_5 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 24#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "mem")

def body468_6 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 40#64])
  (Flapjack.Exp.const 1024#64)

def body468_7 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 48#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64]))

def body468_8 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 56#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64]))

def body468_9 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 64#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 40#64]))

def body468_10 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 72#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 48#64]))

def body468_11 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 80#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "jd")

def body468_12 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 88#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "logs")

def body468_13 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 104#64])
  (Flapjack.Exp.const 1#64)

def body468_14 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 112#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "msg")

def body468_15 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 136#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "del")

def body468_16 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 168#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 152#64]))

def body468_17 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 176#64])
  (Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 160#64]))

def body468_18 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 264#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc_n")

def body468_19 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "acc_n"), none)) "htab_count"
  [Flapjack.Exp.load Flapjack.Shape.one
      (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 160#64])]

def body468_20 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 272#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "acc_n")

def body468_21 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 120#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")

def body468_22 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 144#64])
  (Flapjack.Exp.var Flapjack.VarKind.global "evm_empty")

def body468_23 : Prog (BitVec 64) :=
Flapjack.Prog.store
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "e", Flapjack.Exp.const 216#64])
  (Flapjack.Exp.const 0#64)

def body468_24 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.var Flapjack.VarKind.local "e")

def body468_25 : Prog (BitVec 64) :=
.seq body468_23 body468_24

def body468_26 : Prog (BitVec 64) :=
.seq body468_22 body468_25

def body468_27 : Prog (BitVec 64) :=
.seq body468_21 body468_26

def body468_28 : Prog (BitVec 64) :=
.seq body468_20 body468_27

def body468_29 : Prog (BitVec 64) :=
.seq body468_19 body468_28

def body468_30 : Prog (BitVec 64) :=
.seq body468_18 body468_29

def body468_31 : Prog (BitVec 64) :=
.decCall ("acc_n") (Flapjack.Shape.one) ("htab_count") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 152#64])]) body468_30

def body468_32 : Prog (BitVec 64) :=
.seq body468_17 body468_31

def body468_33 : Prog (BitVec 64) :=
.seq body468_16 body468_32

def body468_34 : Prog (BitVec 64) :=
.seq body468_15 body468_33

def body468_35 : Prog (BitVec 64) :=
.decCall ("del") (Flapjack.Shape.one) ("htab_new_scratch") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 4#64]) body468_34

def body468_36 : Prog (BitVec 64) :=
.seq body468_14 body468_35

def body468_37 : Prog (BitVec 64) :=
.seq body468_13 body468_36

def body468_38 : Prog (BitVec 64) :=
.seq body468_12 body468_37

def body468_39 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new_scratch") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 4#64]) body468_38

def body468_40 : Prog (BitVec 64) :=
.seq body468_11 body468_39

def body468_41 : Prog (BitVec 64) :=
.decCall ("jd") (Flapjack.Shape.one) ("compute_jumpdests") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64])]) body468_40

def body468_42 : Prog (BitVec 64) :=
.seq body468_10 body468_41

def body468_43 : Prog (BitVec 64) :=
.seq body468_9 body468_42

def body468_44 : Prog (BitVec 64) :=
.seq body468_8 body468_43

def body468_45 : Prog (BitVec 64) :=
.seq body468_7 body468_44

def body468_46 : Prog (BitVec 64) :=
.seq body468_6 body468_45

def body468_47 : Prog (BitVec 64) :=
.seq body468_5 body468_46

def body468_48 : Prog (BitVec 64) :=
.seq body468_4 body468_47

def body468_49 : Prog (BitVec 64) :=
.decCall ("mem") (Flapjack.Shape.one) ("frame_mem_alloc") ([Flapjack.Exp.const 1024#64]) body468_48

def body468_50 : Prog (BitVec 64) :=
.seq body468_3 body468_49

def body468_51 : Prog (BitVec 64) :=
.seq body468_2 body468_50

def body468_52 : Prog (BitVec 64) :=
.seq body468_1 body468_51

def body468_53 : Prog (BitVec 64) :=
.decCall ("stk") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 32#64, Flapjack.Exp.const 32#64]]) body468_52

def body468_54 : Prog (BitVec 64) :=
.seq body468_0 body468_53

def body468_55 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 280#64]) body468_54

def body468_56 : Prog (BitVec 64) :=
.decCall ("mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) body468_55

def body468_57 : Prog (BitVec 64) :=
.decCall ("stack_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body468_56

def body468_58 : Prog (BitVec 64) :=
.seq body468_1 body468_2

def body468_59 : Prog (BitVec 64) :=
.seq body468_58 body468_3

def body468_60 : Prog (BitVec 64) :=
.seq body468_4 body468_5

def body468_61 : Prog (BitVec 64) :=
.seq body468_60 body468_6

def body468_62 : Prog (BitVec 64) :=
.seq body468_61 body468_7

def body468_63 : Prog (BitVec 64) :=
.seq body468_62 body468_8

def body468_64 : Prog (BitVec 64) :=
.seq body468_63 body468_9

def body468_65 : Prog (BitVec 64) :=
.seq body468_64 body468_10

def body468_66 : Prog (BitVec 64) :=
.seq body468_12 body468_13

def body468_67 : Prog (BitVec 64) :=
.seq body468_66 body468_14

def body468_68 : Prog (BitVec 64) :=
.seq body468_15 body468_16

def body468_69 : Prog (BitVec 64) :=
.seq body468_68 body468_17

def body468_70 : Prog (BitVec 64) :=
.seq body468_18 body468_19

def body468_71 : Prog (BitVec 64) :=
.seq body468_70 body468_20

def body468_72 : Prog (BitVec 64) :=
.seq body468_71 body468_21

def body468_73 : Prog (BitVec 64) :=
.seq body468_72 body468_22

def body468_74 : Prog (BitVec 64) :=
.seq body468_73 body468_23

def body468_75 : Prog (BitVec 64) :=
.seq body468_74 body468_24

def body468_76 : Prog (BitVec 64) :=
.decCall ("acc_n") (Flapjack.Shape.one) ("htab_count") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 152#64])]) body468_75

def body468_77 : Prog (BitVec 64) :=
.seq body468_69 body468_76

def body468_78 : Prog (BitVec 64) :=
.decCall ("del") (Flapjack.Shape.one) ("htab_new_scratch") ([Flapjack.Exp.const 20#64, Flapjack.Exp.const 4#64]) body468_77

def body468_79 : Prog (BitVec 64) :=
.seq body468_67 body468_78

def body468_80 : Prog (BitVec 64) :=
.decCall ("logs") (Flapjack.Shape.one) ("lst_new_scratch") ([Flapjack.Exp.const 8#64, Flapjack.Exp.const 4#64]) body468_79

def body468_81 : Prog (BitVec 64) :=
.seq body468_11 body468_80

def body468_82 : Prog (BitVec 64) :=
.decCall ("jd") (Flapjack.Shape.one) ("compute_jumpdests") ([Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 112#64]),
  Flapjack.Exp.load Flapjack.Shape.one
    (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "msg", Flapjack.Exp.const 120#64])]) body468_81

def body468_83 : Prog (BitVec 64) :=
.seq body468_65 body468_82

def body468_84 : Prog (BitVec 64) :=
.decCall ("mem") (Flapjack.Shape.one) ("frame_mem_alloc") ([Flapjack.Exp.const 1024#64]) body468_83

def body468_85 : Prog (BitVec 64) :=
.seq body468_59 body468_84

def body468_86 : Prog (BitVec 64) :=
.decCall ("stk") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.const 32#64, Flapjack.Exp.const 32#64]]) body468_85

def body468_87 : Prog (BitVec 64) :=
.seq body468_0 body468_86

def body468_88 : Prog (BitVec 64) :=
.decCall ("e") (Flapjack.Shape.one) ("scratch_alloc") ([Flapjack.Exp.const 280#64]) body468_87

def body468_89 : Prog (BitVec 64) :=
.decCall ("mem_mark") (Flapjack.Shape.one) ("frame_mem_mark") ([]) body468_88

def body468_90 : Prog (BitVec 64) :=
.decCall ("stack_mark") (Flapjack.Shape.one) ("scratch_mark") ([]) body468_89

def originalData468 : Decl (BitVec 64) :=
.function { name := "frame_new", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body468_57, returnShape := (Flapjack.Shape.one) }
def simplifiedData468 : Decl (BitVec 64) :=
.function { name := "frame_new", inline := false, exported := false, params := [("msg", Flapjack.Shape.one)], body := body468_90, returnShape := (Flapjack.Shape.one) }
def original468 := Pancake.PanLang.declToHOL originalData468
def simplified468 := Pancake.PanLang.declToHOL simplifiedData468
end InitECandidate.Proofs.FrontendStages.Declarations
