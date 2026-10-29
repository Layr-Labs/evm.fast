import InitECandidate.Proofs.FrontendComputation
import InitECandidate.Proofs.FrontendStages.Declarations.Simplify791
set_option Elab.async false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 1000000000
set_option cbv.warning false
open scoped InitECandidate.Proofs.FrontendComputation
open Flapjack
namespace InitECandidate.Proofs.FrontendStages.Declarations
def body807_0 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_set_one" [Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body807_1 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "heap_release" [Flapjack.Exp.var Flapjack.VarKind.local "mark"]

def body807_2 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 1#64)

def body807_3 : Prog (BitVec 64) :=
.seq body807_1 body807_2

def body807_4 : Prog (BitVec 64) :=
Flapjack.Prog.skip

def body807_5 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "ok") (Flapjack.Exp.const 0#64)) body807_3 body807_4

def body807_6 : Prog (BitVec 64) :=
.ite (Flapjack.Exp.cmp Flapjack.Cmp.equal (Flapjack.Exp.var Flapjack.VarKind.local "sg") (Flapjack.Exp.const 0#64)) body807_3 body807_4

def body807_7 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "ok"), none)) "g2_decode"
  [Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.const 128#64],
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body807_8 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (some (Flapjack.VarKind.local, "sg"), none)) "g2_subgroup_check"
  [Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body807_9 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "pair_accumulate"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "p",
    Flapjack.Exp.var Flapjack.VarKind.local "q"]

def body807_10 : Prog (BitVec 64) :=
Flapjack.Prog.assign Flapjack.VarKind.local "i"
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 1#64])

def body807_11 : Prog (BitVec 64) :=
.seq body807_9 body807_10

def body807_12 : Prog (BitVec 64) :=
.seq body807_6 body807_11

def body807_13 : Prog (BitVec 64) :=
.seq body807_8 body807_12

def body807_14 : Prog (BitVec 64) :=
.seq body807_5 body807_13

def body807_15 : Prog (BitVec 64) :=
.seq body807_7 body807_14

def body807_16 : Prog (BitVec 64) :=
.seq body807_6 body807_15

def body807_17 : Prog (BitVec 64) :=
.decCall ("sg") (Flapjack.Shape.one) ("g1_subgroup_check") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body807_16

def body807_18 : Prog (BitVec 64) :=
.seq body807_5 body807_17

def body807_19 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "p"]) body807_18

def body807_20 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "data",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 384#64]]) body807_19

def body807_21 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "k")) body807_20

def body807_22 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "fp12_final_exp"
  [Flapjack.Exp.var Flapjack.VarKind.local "acc", Flapjack.Exp.var Flapjack.VarKind.local "acc"]

def body807_23 : Prog (BitVec 64) :=
Flapjack.Prog.call (some (none, none)) "memzero"
  [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 32#64]

def body807_24 : Prog (BitVec 64) :=
Flapjack.Prog.storeByte
  (Flapjack.Exp.op Flapjack.BinOp.add [Flapjack.Exp.var Flapjack.VarKind.local "out", Flapjack.Exp.const 31#64])
  (Flapjack.Exp.var Flapjack.VarKind.local "one")

def body807_25 : Prog (BitVec 64) :=
Flapjack.Prog.return (Flapjack.Exp.const 0#64)

def body807_26 : Prog (BitVec 64) :=
.seq body807_1 body807_25

def body807_27 : Prog (BitVec 64) :=
.seq body807_24 body807_26

def body807_28 : Prog (BitVec 64) :=
.seq body807_23 body807_27

def body807_29 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("fp12_is_one") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) body807_28

def body807_30 : Prog (BitVec 64) :=
.seq body807_22 body807_29

def body807_31 : Prog (BitVec 64) :=
.seq body807_21 body807_30

def body807_32 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body807_31

def body807_33 : Prog (BitVec 64) :=
.seq body807_0 body807_32

def body807_34 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body807_33

def body807_35 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body807_34

def body807_36 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body807_35

def body807_37 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body807_36

def body807_38 : Prog (BitVec 64) :=
.seq body807_6 body807_7

def body807_39 : Prog (BitVec 64) :=
.seq body807_38 body807_5

def body807_40 : Prog (BitVec 64) :=
.seq body807_39 body807_8

def body807_41 : Prog (BitVec 64) :=
.seq body807_40 body807_6

def body807_42 : Prog (BitVec 64) :=
.seq body807_41 body807_9

def body807_43 : Prog (BitVec 64) :=
.seq body807_42 body807_10

def body807_44 : Prog (BitVec 64) :=
.decCall ("sg") (Flapjack.Shape.one) ("g1_subgroup_check") ([Flapjack.Exp.var Flapjack.VarKind.local "p"]) body807_43

def body807_45 : Prog (BitVec 64) :=
.seq body807_5 body807_44

def body807_46 : Prog (BitVec 64) :=
.decCall ("ok") (Flapjack.Shape.one) ("g1_decode") ([Flapjack.Exp.var Flapjack.VarKind.local "d", Flapjack.Exp.var Flapjack.VarKind.local "p"]) body807_45

def body807_47 : Prog (BitVec 64) :=
.dec ("d") (Flapjack.Shape.one) (Flapjack.Exp.op Flapjack.BinOp.add
  [Flapjack.Exp.var Flapjack.VarKind.local "data",
    Flapjack.Exp.panOp Flapjack.PanOp.mul [Flapjack.Exp.var Flapjack.VarKind.local "i", Flapjack.Exp.const 384#64]]) body807_46

def body807_48 : Prog (BitVec 64) :=
.while (Flapjack.Exp.cmp Flapjack.Cmp.less (Flapjack.Exp.var Flapjack.VarKind.local "i")
  (Flapjack.Exp.var Flapjack.VarKind.local "k")) body807_47

def body807_49 : Prog (BitVec 64) :=
.seq body807_48 body807_22

def body807_50 : Prog (BitVec 64) :=
.seq body807_23 body807_24

def body807_51 : Prog (BitVec 64) :=
.seq body807_50 body807_1

def body807_52 : Prog (BitVec 64) :=
.seq body807_51 body807_25

def body807_53 : Prog (BitVec 64) :=
.decCall ("one") (Flapjack.Shape.one) ("fp12_is_one") ([Flapjack.Exp.var Flapjack.VarKind.local "acc"]) body807_52

def body807_54 : Prog (BitVec 64) :=
.seq body807_49 body807_53

def body807_55 : Prog (BitVec 64) :=
.dec ("i") (Flapjack.Shape.one) (Flapjack.Exp.const 0#64) body807_54

def body807_56 : Prog (BitVec 64) :=
.seq body807_0 body807_55

def body807_57 : Prog (BitVec 64) :=
.decCall ("acc") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 576#64]) body807_56

def body807_58 : Prog (BitVec 64) :=
.decCall ("q") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 288#64]) body807_57

def body807_59 : Prog (BitVec 64) :=
.decCall ("p") (Flapjack.Shape.one) ("alloc") ([Flapjack.Exp.const 144#64]) body807_58

def body807_60 : Prog (BitVec 64) :=
.decCall ("mark") (Flapjack.Shape.one) ("heap_mark") ([]) body807_59

def originalData807 : Decl (BitVec 64) :=
.function { name := "bls_pairing_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("k", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body807_37, returnShape := (Flapjack.Shape.one) }
def simplifiedData807 : Decl (BitVec 64) :=
.function { name := "bls_pairing_exec", inline := false, exported := false, params := [("data", Flapjack.Shape.one), ("k", Flapjack.Shape.one), ("out", Flapjack.Shape.one)], body := body807_60, returnShape := (Flapjack.Shape.one) }
def original807 := Pancake.PanLang.declToHOL originalData807
def simplified807 := Pancake.PanLang.declToHOL simplifiedData807
end InitECandidate.Proofs.FrontendStages.Declarations
